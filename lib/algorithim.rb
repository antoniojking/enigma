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

  def text_array
    text_array = @text.split(//)
  end

  def text_array_index
    text_index_positions = []

    text_array.length.times do |i|
      text_index_positions << (i + 1) - 1
    end
    text_index_positions
  end

  # def encrypt
  #
  #
  #
  #   n_a = 0 % 4
  #   n_b = 1 % 4
  #   n_c = 2 % 4
  #   n_d = 3 % 4
  #
  #   character_set_position = text_array.map do |character|
  #     @character_set.index(character)
  #   end
  #
  #   text_array.map do |character|
  #
  #     if character_positon[0] || character_position[4]
  #       num + @shifts[0]
  #     elsif
  #       num + @shifts[1]
  #     elsif
  #       num + @shifts[2]
  #     else
  #       num + @shifts[3]
  #     end
  #   end
  #
  #   # A shift = 3
  #   # if postion of letter is n or n+4 => A shift
  #   # if A > 27, what is remaining when A /27?
  #   # What is array count for message?
  #   # what is array index for letter?
  #
  #
  # end
end
