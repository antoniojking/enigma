require './spec/spec_helper'
require './lib/algorithim'

describe Algorithim do
  before :each do
    @character_set = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
  end

  it 'exists and has attributes' do
    text = 'hello world'
    key = '02715'
    date = '040895'
    algorithim = Algorithim.new(text, key, date)

    expect(algorithim).to be_an(Algorithim)
    expect(algorithim.text).to eq('hello world')
    # expect(algorithim.keys).to eq([02, 27, 71, 15])
    expect(algorithim.key).to eq(key)
    # expect(algorithim.offsets).to eq([1, 0, 2, 5])
    expect(algorithim.date).to eq(date)
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

  it 'text_array' do
    text = 'hello world'
    keys = @key.keys
    offsets = @offset.offsets
    algorithim = Algorithim.new(text, keys, offsets)

    expected = ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"]
    expect(algorithim.text_array).to eq(expected)
  end

  it 'text_array_index' do
    text = 'hello world'
    keys = @key.keys
    offsets = @offset.offsets
    algorithim = Algorithim.new(text, keys, offsets)

    expected = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    expect(algorithim.text_array_index).to eq(expected)
  end

  it 'character_set_index' do
    text = 'hello world'
    keys = @key.keys
    offsets = @offset.offsets
    algorithim = Algorithim.new(text, keys, offsets)

    expected = [7, 4, 11, 11, 14, 26, 22, 14, 17, 11, 3]
    expect(algorithim.character_set_index).to eq(expected)
  end

  it 'shift_index' do
    text = 'hello world'
    keys = @key.keys
    offsets = @offset.offsets
    algorithim = Algorithim.new(text, keys, offsets)
    algorithim.calculate_shifts

    expected = [3, 0, 19, 20, 3, 0, 19, 20, 3, 0, 19]
    expect(algorithim.shift_index).to eq(expected)
  end

  it 'encrypt' do
    text = 'hello world'
    keys = @key.keys
    offsets = @offset.offsets
    algorithim = Algorithim.new(text, keys, offsets)
    algorithim.calculate_shifts
    algorithim.encrypt

    expect(algorithim.encryption).to eq('keder ohulw')
  end

  it 'decrypt' do
    text = 'keder ohulw'
    keys = @key.keys
    offsets = @offset.offsets
    algorithim = Algorithim.new(text, keys, offsets)
    algorithim.calculate_shifts
    algorithim.decrypt

    expect(algorithim.decryption).to eq('hello world')
  end
end
