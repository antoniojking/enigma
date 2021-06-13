require './spec/spec_helper'
require './lib/enigma'

describe Enigma do
  it 'exists and has attributes' do
    enigma = Enigma.new
    expect(enigma).to be_an(Enigma)
  end
end
