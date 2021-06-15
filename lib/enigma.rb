require 'date'
require './lib/offset'
require './lib/key'
require './lib/algorithim'

class Enigma
  attr_reader :encryption

  def initialize
    @encryption = {}
  end

  def encrypt(message, key = nil, date = nil)
    algorithim = Algorithim.new(message, key, date)

    algorithim.key.create_keys
    algorithim.date.calculate_offsets
    algorithim.calculate_shifts

    @encryption[:encryption] = algorithim.encrypt
    @encryption[:key] = algorithim.key.pin
    @encryption[:date] = algorithim.date.date

    @encryption
  end
end
