def vigenere_cipher(plaintext, keyword)
  repeated_keyword= ""
  keyword_length = keyword.length
  encrypted_text = ""

  plaintext.chars.each_with_index do |char, index|
    repeated_keyword += keyword[index % keyword_length]
  end

  shifts = repeated_keyword.upcase.chars.map do |char|
    char.ord - 'A'.ord
  end
  plaintext.chars.each_with_index do |char, index|
    if ('A'..'Z').include?(char.upcase)
      # Find the original position of the letter
      original_position = char.upcase.ord - 'A'.ord
      # Apply the shift and wrap around using modulo arithmetic
      shifted_position = (original_position + shifts[index]) % 26
      # Convert back to the character
      encrypted_char = (shifted_position + 'A'.ord).chr
    else
      # If it's not a letter, keep it as-is
      encrypted_char = char
    end
    encrypted_text += encrypted_char
  end

  return encrypted_text

end
