require 'date'

class Offset
  attr_reader :date,
              :offsets

  def initialize(date = todays_date)
    @date    = date
    @offsets = []
  end

  def date_squared
    @date.to_i ** 2
  end

  def calculate_offsets
    squared_array = date_squared.to_s.split(//).map do |num|
      num.to_i
    end
    squared_array[-4..-1].each do |num|
      @offsets << num
    end
  end

  def todays_date
    Date.today.strftime('%d%m%y')
  end
end
