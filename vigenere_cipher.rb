def vigenere_cipher(plaintext, keyword)
  repeated_keyword= ""
  keyword_length = keyword.length
  encrypted_text = ""

  plaintext.each_with_index do |char, index|
    repeated_keyword =+ keyword[index % plaintext.lenth]
  end

  shifts = repeated_keyword.upcase.chars.map do |char|
    char.ord - 'A'.ord
  end

end
