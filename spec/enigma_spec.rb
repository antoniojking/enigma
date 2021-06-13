require './spec/spec_helper'
require './lib/enigma'

describe Enigma do
  it 'exists and has attributes' do
    enigma = Enigma.new
    expect(enigma).to be_an(Enigma)
  end

  it 'encrypt' do
    enigma = Enigma.new
    message = 'hello world'
    key = '02715'
    date = '040895'

    expected1 = {
      encryption: 'keder ohulw',
      key:        '02715',
      date:       '130621'
    }

    expected2 = {
      encryption: 'keder ohulw',
      key:        '02715',
      date:       '040895'
    }

    expect(enigma.encrypt(message, key)).to eq(expected1)
    expect(enigma.encrypt(message, key, date)).to eq(expected2)
  end
end
