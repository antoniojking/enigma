require './spec/spec_helper'
require './lib/offset'

describe Offset do
  it 'exists and has attributes' do
    date = Date.today.strftime('%d%m%y')
    offset = Offset.new(date)

    expect(offset).to be_an(Offset)
    expect(offset.date).to eq('130621')
  end
end
