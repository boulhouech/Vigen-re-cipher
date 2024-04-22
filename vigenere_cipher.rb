def vigenere_cipher(plaintext, keyword)
  repeated_keyword= ""
  plaintext.each_with_index do |char, index|
    repeated_keyword =+ keyword[index % plaintext.lenth]
  end
end
