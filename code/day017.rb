=begin
  [Day 017] Keeping only unique stuff with Set.
    - Sets only accept different values
    - Objects are compared with the return of the "hash" method
=end

require 'set'
require '../day009/book.rb'

random_numbers = [5,5,5,4,3,3,1,0,1,6,5]
set = Set.new random_numbers

puts set
# => #<Set: {5, 4, 3, 1, 0, 6}>

puts set.class
# Set
