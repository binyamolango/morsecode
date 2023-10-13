require_relative '../decode_method.'

describe 'Morse code decoder' do
  it 'decodes a Morse code character correctly' do
    expect(decode_char('.-')).to eq('A')
    expect(decode_char('-...')).to eq('B')
    # Add more test cases for other Morse code characters
  end
end
