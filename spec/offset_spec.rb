require './spec/spec_helper'
require './lib/offset'

describe Offset do
  it 'exists and has attributes' do
    date = '040895'
    offset = Offset.new(date)

    expect(offset).to be_an(Offset)
    expect(offset.date).to eq('040895')
    expect(offset.offsets).to eq([])
  end

  it 'date_squared' do
    date = '040895'
    offset = Offset.new(date)

    expect(offset.date_squared).to eq(1672401025)
  end

  it 'calculate_offsets' do
    date = '040895'
    offset = Offset.new(date)
    offset.calculate_offsets

    expect(offset.offsets).to eq([1, 0, 2, 5])
  end

  it 'todays_date' do
    offset = Offset.new

    expect(offset.date).to eq('140621')
  end
end
