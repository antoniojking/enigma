class Algorithim
  attr_reader :text,
              :keys,
              :offsets,
              :shifts,
              :encryption,
              :decryption,
              :character_set

  def initialize(text, keys, offsets)
    @text = text
    @keys = keys
    @offsets = offsets
    @shifts = []
    @encryption = ''
    @decryption = ''
    @character_set = ('a'..'z').to_a << " "
  end

  def calculate_shifts
    data = [@keys, @offsets]
    @shifts = data.transpose.map do |array|
      array.sum
    end
  end

### Helper Methods
  def text_array
    text_array = @text.split(//)
  end

  def text_array_index
    length = text_array.length - 1
    (0..length).to_a 
    # text_index_positions = []
    #
    # text_array.length.times do |i|
    #   text_index_positions << (i + 1) - 1
    # end
    # text_index_positions
  end

  def character_set_index
    character_set_position = text_array.map do |character|
      @character_set.index(character)
    end
  end

  def shift_index
    text_index_shifts = text_array_index.map do |index|
      if index % 4 == 0
        @shifts[0]
      elsif index % 4 == 1
        @shifts[1]
      elsif index % 4 == 2
        @shifts[2]
      else
        @shifts[3]
      end
    end
  end

  def character_shift_index
    reduce_shifts = shift_index.map do |shift|
      shift % 27
    end

    data = [character_set_index, reduce_shifts]

    data.transpose.map do |array|
      array.sum % 27
    end
  end

  def encrypt
    encryption = character_shift_index.map do |num|
      @character_set[num]
    end
    @encryption = encryption.join
  end
end
