require 'date'
require './lib/offset'
require './lib/key'
require './lib/algorithim'

class Enigma
  attr_reader :encryption

  def initialize
    @encryption = {}
    @decryption = {}
  end

  def random_pin
    random = 5.times.map do
      rand(10)
    end
    random.join
  end

  def encrypt(message, key = random_pin, date = (Date.today.strftime('%d%m%y')))
    algorithim = Algorithim.new(message, key, date)

    algorithim.key.create_keys
    algorithim.date.calculate_offsets
    algorithim.calculate_shifts

    @encryption[:encryption] = algorithim.encrypt
    @encryption[:key] = algorithim.key.pin
    @encryption[:date] = algorithim.date.date

    @encryption
  end

  def decrypt(message, key, date = (Date.today.strftime('%d%m%y')))
    algorithim = Algorithim.new(message, key, date)

    algorithim.key.create_keys
    algorithim.date.calculate_offsets
    algorithim.calculate_shifts

    @decryption[:decryption] = algorithim.decrypt
    @decryption[:key] = algorithim.key.pin
    @decryption[:date] = algorithim.date.date

    @decryption
  end
end
