require './lib/offset'
require './lib/key'

class Algorithim
  attr_reader :text,
              :key,
              :date,
              :shifts,
              :encryption,
              :decryption,
              :character_set

  def initialize(text, key, date)
    @text = text.downcase
    @key = Key.new(key)
    @date = Offset.new(date)
    @shifts = []
    @encryption = ''
    @decryption = ''
    @character_set = ('a'..'z').to_a << " "
  end

  def calculate_shifts
    data = [@key.keys, @date.offsets]
    @shifts = data.transpose.map do |array|
      array.sum
    end
  end

  def text_array
    text_array = @text.split(//)
  end

  def character_set_index
    character_set_position = text_array.map do |character|
      @character_set.index(character)
    end
  end

  def text_array_index
    length = text_array.length - 1
    (0..length).to_a
  end

  def shift_index
    text_index_shifts = text_array_index.map do |index|
      if index % 4 == 0
        @shifts[0] % @character_set.length
      elsif index % 4 == 1
        @shifts[1] % @character_set.length
      elsif index % 4 == 2
        @shifts[2] % @character_set.length
      else
        @shifts[3] % @character_set.length
      end
    end
  end

  def encrypt
    data = [character_set_index, shift_index]

    encryption = data.transpose.map do |array|
      @character_set[array.sum % 27]
    end
    @encryption = encryption.join
  end

  def decrypt
    data = [character_set_index, shift_index]

    decryption = data.transpose.map do |array|
      @character_set[(array[0] - array[1]) % 27]
    end
    @decryption = decryption.join
  end
end
