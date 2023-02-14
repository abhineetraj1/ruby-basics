=begin
  [Day 016] String Encryption and Base64 converter
=end

require 'digest'
require 'base64'

# SHA1
puts Digest::SHA1.hexdigest("12345")
# => 8cb2237d0679ca88db6464eac60da96345513964

# SHA2
puts Digest::SHA2.hexdigest("12345")
# => 5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5

### Base64 

encoded = Base64.encode64("12345")
puts encoded
# => MTIzNDU=

decoded = Base64.decode64(encoded)
puts decoded
# => 12345
