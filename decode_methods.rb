def morse_to_letter(message)
  morse_code = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z', '-----' => '0', '.----' => '1', '..---' => '2', '...--' => '3',
    '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7', '---..' => '8',
    '----.' => '9'
  }
  morse_code[message]
end

def morse_to_word(message)
  word = ''
  message.split.each do |v|
    letter = morse_to_letter(v)
    word += letter if letter
  end
  word
end

def decode_morse_message(message)
  message_decoded = ''
  arr = message.split('   ')
  length = arr.length
  arr.each_with_index do |v, i|
    word = morse_to_word(v)
    next unless word

    message_decoded += if i < length - 1
                         "#{word} "
                       else
                         word
                       end
  end
  message_decoded
end
