require 'date'

class Enigma
  attr_reader :encryption

  def initialize
    @encryption = {}
  end

  def encrypt(message, key, date = nil)
    @encryption[:encryption] = message
    @encryption[:key] = key

    if date.nil?
      @encryption[:date] = Date.today.strftime('%d%m%y')
    else
      @encryption[:date] = date
    end
    @encryption
  end
end
