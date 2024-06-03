# Create a caesar cipher method
def caesar_cipher(string, shift_value)
  # Create alphabet hash
  lower_alphabet = ("a".."z").to_a
  upper_alphabet = ("A".."Z").to_a
  ciphered_text = ""

  string.each_char do |char|
    if lower_alphabet.include?(char)
      new_index = (lower_alphabet.index(char) + shift_value) % 26
      ciphered_text += lower_alphabet[new_index]
    elsif upper_alphabet.include?(char)
      new_index = (upper_alphabet.index(char) + shift_value) % 26
      ciphered_text += upper_alphabet[new_index]
    else
      ciphered_text += char
    end
  end
  ciphered_text
end


puts caesar_cipher("What a string!", 5)
puts caesar_cipher("yo its Stanley Yelnats!", 14)
