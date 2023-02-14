=begin
  [Day 005] Symbols

  This example covers the use of Symbols and when I must use.

  About Symbols:
  - You don't have to define a Symbol before to use
  - They are efficient about memory
  - They are more polite than constants
  - They decrease duplicated values
  - If the text at hand is “data”, then use a string. If it’s code, then use a symbol, especially with keys in hashes
  - They are unique identifiers, like barcodes
  - While strings represent data that can change, symbols represent unique values, which are static
=end

occupation1 = "Backend Developer"
occupation2 = "Backend Developer"

# Here, the same string in different variables are differents. So, the same string occupies more RAM for nothing.
puts occupation1.object_id
# => 18306720 # NOTE: This id varys every time you run the code
puts occupation2.object_id
# => 18306700 # NOTE: This id varys every time you run the code

# When you use Symbols, the same symbol is written only one time and has always the same object_id.
puts :back_end.object_id
# => 939228 # NOTE: This id varys every time you run the code
puts :back_end.object_id
# => 939228 # NOTE: This id varys every time you run the code
puts :back_end.object_id
# => 939228 # NOTE: This id varys every time you run the code
puts :back_end
# => back_end

occupation1 = :back_end
occupation2 = :back_end

puts occupation1 == occupation2
# true

puts occupation1.class
# => Symbol
