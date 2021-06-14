class Key
  attr_reader :pin,
              :keys

  def initialize(pin)
    @pin  = pin
    @keys = []
  end

  def create_keys
    array_of_strings = @pin.split(//).map do |num|
      num
    end
    @keys << array_of_strings[0..1].join.to_i
    @keys << array_of_strings[1..2].join.to_i
    @keys << array_of_strings[2..3].join.to_i
    @keys << array_of_strings[3..4].join.to_i
  end
end
