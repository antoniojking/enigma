require './spec/spec_helper'
require './lib/offset'

describe Offset do
  it 'exists and has attributes' do
    date = '130621'
    offset = Offset.new(date)

    expect(offset).to be_an(Offset)
    expect(offset.date).to eq('130621')
    expect(offset.offsets).to eq([])
  end

  it 'date_squared' do
    date = '130621'
    offset = Offset.new(date)

    expect(offset.date_squared).to eq(17061845641)
  end

  it 'calculate_offsets' do
    date = '130621'
    offset = Offset.new(date)
    offset.calculate_offsets

    expect(offset.offsets).to eq([5, 6, 4, 1])
  end
end
