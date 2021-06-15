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

  it 'create_keys' do
    pin = '02715'
    key = Key.new(pin)

    key.create_keys

    expect(key.keys).to eq([02, 27, 71, 15])
  end

  # it 'random_pin' do
  #   key = Key.new
  #
  #   key.random_pin
  #
  #   allow(key).to receive(:random_pin).and_return('37157')
  #   expect(key.random_pin).to eq('37157')
  # end
end
