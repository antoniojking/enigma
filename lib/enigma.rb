require 'date'
require './lib/offset'
require './lib/key'
require './lib/algorithim'

class Enigma
  attr_reader :encryption

  def initialize
    @encryption = {}
  end

  def encrypt(message, key, date)
    algorithim = Algorithim.new(message, key, date)

    @encryption[:encryption] = algorithim.encrypt
    @encryption[:key] = key
    @encryption[:date] = date
  end

  # def encrypt(message, key = nil, date = nil)
  #   @encryption[:encryption] =
  #
  #   if key.nil?
  #     @encryption[:key] = Key.new.random_pin
  #   else
  #     @encryption[:key] = key.pin
  #   end
  #
  #   if date.nil?
  #     @encryption[:date] = Date.today.strftime('%d%m%y')
  #   else
  #     @encryption[:date] = date
  #   end
  #   @encryption
  # end
end
