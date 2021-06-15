require 'date'
require './lib/offset'
require './lib/key'
require './lib/algorithim'

class Enigma
  attr_reader :encrypted,
              :decrypted

  def initialize
    @encrypted = {}
    @decrypted = {}
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

    @encrypted[:encryption] = algorithim.encrypt
    @encrypted[:key] = algorithim.key.pin
    @encrypted[:date] = algorithim.date.date

    @encrypted
  end

  def decrypt(message, key, date = (Date.today.strftime('%d%m%y')))
    algorithim = Algorithim.new(message, key, date)

    algorithim.key.create_keys
    algorithim.date.calculate_offsets
    algorithim.calculate_shifts

    @decrypted[:decryption] = algorithim.decrypt
    @decrypted[:key] = algorithim.key.pin
    @decrypted[:date] = algorithim.date.date

    @decrypted
  end
end
