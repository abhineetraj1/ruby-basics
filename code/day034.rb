=begin
  [Day 034] Caesar cipher
   Caesar Cipher encryption and decryption in Ruby
=end

#function for encryption
def caesar_cipher_encrypt(sentence, shift)
  sentence.chars.map do |char|
    if char.match(/[A-Za-z]/)
      (((char.downcase.ord - 97 + shift) % 26) + 97).chr.upcase
    else
      char
    end
  end.join
end

#function for decryption
def caesar_cipher_decrypt(sentence, shift)
  caesar_cipher_encrypt(sentence, -shift)
end

# Example
encrypted = caesar_cipher_encrypt("Hello, world!", 5) # "MJQQT, BTWQI!"
decrypted = caesar_cipher_decrypt(encrypted, 5) # "HELLO, WORLD!"
