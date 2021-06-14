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
end
