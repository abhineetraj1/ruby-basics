=begin
  [Day 004] Strings II: Functions and formatting
=end

#### The following functions don't change the original variable value

first_name = "marcos"
second_name = "Vinícius"
age = 21
height = 1.73

# Uppercase
puts first_name.upcase
# => MARCOS

# Lowercase
puts second_name.downcase
# => vinícius

# Capitalizing strings
puts first_name.capitalize
# => Marcos

# Reversing the letter positions
puts second_name.reverse
# => suicíniV

# Getting the string length
puts first_name.length
# => 6

# Converting Integer to String
puts age.to_s
# => "21"

# Verifying if the string is empty
puts "".empty?
# => true

# Nesting functions
puts first_name.reverse.upcase
# => SOCRAM

puts "Marcos"[0]
# => M

puts "Marcos"[1, 3]
# => arc

puts "Marcos"[1..3]
# => arc

puts "Marcos"[-3, 2]
# => co

puts "Marcos"[20]
# => nil

puts "Marcos".bytesize
# => 6

puts "Vinícius".count "i"
# => 2
puts "Vinícius".delete "i"
# => Vnícus

puts "Strawberry".end_with?("berry")
# => true

puts "Strawberry".start_with?("blue")
# => false

puts "Strawberry".include?("berry")
# => true
puts "Strawberry".include?("lerry")
# => false

puts " Katiau ".strip
# => Katiau

# Trying to convert something to String
puts String.try_convert("Katiau")
# => Katiau
puts String.try_convert(/n/)
# Return nil if it is not possible to convert
