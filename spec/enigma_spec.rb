require './spec/spec_helper'
require './lib/enigma'

describe Enigma do
  it 'exists and has attributes' do
    enigma = Enigma.new

    expect(enigma).to be_an(Enigma)
    expect(enigma.encrypted).to eq({})
    expect(enigma.decrypted).to eq({})
  end

  it 'random_pin' do
    enigma = Enigma.new

    allow(enigma).to receive(:random_pin).and_return('37157')
    expect(enigma.random_pin).to eq('37157')
  end

  it 'encrypt' do
    enigma = Enigma.new

    expected1 = {
      encryption: 'keder ohulw!',
      key:        '02715',
      date:       '040895'
    }

    # expected2 = {
    #   encryption: 'keder ohulw',
    #   key:        '32576',
    #   date:       '150621'
    # }

    # allow(enigma).to receive().and_return('32576')

    expect(enigma.encrypt('Hello World!', '02715', '040895')).to eq(expected1)
    # expect(enigma.encrypt('hello world')).to eq(expected2)
  end

  it 'decrypt' do
    enigma = Enigma.new

    expected1 = {
      decryption: 'hello world',
      key:        '02715',
      date:       '040895'
    }

    expect(enigma.decrypt('keder ohulw', '02715', '040895')).to eq(expected1)
  end
end
