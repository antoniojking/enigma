require './spec/spec_helper'
require './lib/enigma'

describe Enigma do
  it 'exists and has attributes' do
    enigma = Enigma.new

    expect(enigma).to be_an(Enigma)
    expect(enigma.encryption).to eq({})
  end

  it 'encrypt' do
    enigma = Enigma.new

    expected1 = {
      encryption: 'keder ohulw',
      key:        '02715',
      date:       '040895'
    }

    # expected2 = {
    #   encryption: 'keder ohulw',
    #   key:        '32576',
    #   date:       '140621'
    # }

    expect(enigma.encrypt('hello world', '02715', '040895')).to eq(expected1)
    # expect(enigma.encrypt(message)).to eq(expected2)
  end
end
