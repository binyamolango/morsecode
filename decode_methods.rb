CODE = {
  ".-" => "A","-..." => "B","-.-." => "C","-.." => "D","." => "E",
  "..-." => "F","--." => "G","...." => "H",".." => "I",".---" => "J",
  "-.-" => "K",".-.." => "L","--" => "M","-." => "N","---" => "O",
  ".--." => "P","--.-" => "Q",".-." => "R","..." => "S","-" => "T","..-" => "U",
  "...-" => "V",".--" => "W","-..-" => "X","-.--" => "Y","--.." => "Z",
  ".----" => 1,"..---" => 2,"...--" => 3,"....-" => 4,"....." => 5,
  "-...." => 6,"--..." => 7,"---.." => 8,"----." => 9,"-----" => 0
}

def decode_char(char)
  return CODE[char];
end

# result = decode_char("--")
# puts result

def decode_word(word)
  chars = word.split(" ")
  char_decode = ''

  chars.each do |char|
    char_decode += decode_char(char)
  end

  return char_decode
end

# result = decode_word("-- -.--")
# puts result

def decode(sentence)
  words = sentence.split("   ")
  word_decode = ''

  words.each do |word|
    word_decode += "#{decode_word(word)} "
  end

  return word_decode
end

result = decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
puts result
