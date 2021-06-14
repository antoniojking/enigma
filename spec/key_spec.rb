require './spec/spec_helper'
require './lib/key'

describe Key do
  it 'exists and has attributes' do
    pin = '02715'
    key = Key.new(pin)

    expect(key).to be_an(Key)
    expect(key.pin).to eq('02715')
    expect(key.keys).to eq([])
  end
end
