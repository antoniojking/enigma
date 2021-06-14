require './spec/spec_helper'
require './lib/offset'
require './lib/key'
require './lib/algorithim'

describe Algorithim do
  before :each do
    @key = Key.new('02715')
    @key.create_keys

    @offset = Offset.new('040895')
    @offset.calculate_offsets

    @character_set = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
  end

  it 'exists and has attributes' do
    text = 'hello world'
    keys = @key.keys
    offsets = @offset.offsets
    algorithim = Algorithim.new(text, keys, offsets)

    expect(algorithim).to be_an(Algorithim)
    expect(algorithim.text).to eq('hello world')
    expect(algorithim.keys).to eq([02, 27, 71, 15])
    expect(algorithim.offsets).to eq([1, 0, 2, 5])
    expect(algorithim.shifts).to eq([])
    expect(algorithim.encryption).to eq('')
    expect(algorithim.decryption).to eq('')
    expect(algorithim.character_set).to eq(@character_set)
  end

  it 'calculates_shifts' do
    text = 'hello world'
    keys = @key.keys
    offsets = @offset.offsets
    algorithim = Algorithim.new(text, keys, offsets)

    algorithim.calculate_shifts

    expect(algorithim.shifts).to eq([3, 27, 73, 20])
  end

  it 'encrypt' do
    text = 'hello world'
    keys = @key.keys
    offsets = @offset.offsets
    algorithim = Algorithim.new(text, keys, offsets)
    algorithim.calculate_shifts

    expect(algorithim.encrypt).to eq('keder ohulw')
  end
end
