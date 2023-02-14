=begin
  [Day 007] Arrays
=end

# Creating a Homogeneous Array
movies = ['Pirates of the Caribbean', 'Harry Potter', 'Star Wars']
puts movies
# => [Pirates of the Caribbean, Harry Potter, Star Wars]
puts movies.class
# => Array

# Creating a Heterogeneous Array
things = ['Pizza', 42, false, :katiau, 25.5]
puts things
# => ['Pizza', 42, false, :katiau, 25.5]

# Getting the first array element
puts things.first
# => Pizza

# Getting the last array element
puts things.last
# => 25.5

# Getting the length
puts things.length
# => 5

# Discovering what the index of some element
puts things.index(42)
# => 1

puts things[3]
# => katiau

# If you try retrieve an unexistent index, it will be returned nil
puts things[100]
# =>

numbers = [1, 23, 12, 15]
# This function it is not in place. It doesn't affect the original variable
puts numbers.sort()
# => [1, 12, 15, 23]

# Removing nil values.
# This function it is not in place. It doesn't affect the original variable
numbers = [1, 2, nil, nil, 3, nil, 4, nil]
puts numbers.compact
# => [1, 2, 3, 4]

matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
puts matrix.transpose
# => [[1, 4, 7], [2, 5, 8], [3, 6, 9]]

# This function it is not in place. It doesn't affect the original variable
numbers = [1, 2, 3, 4, 5]
puts numbers.reverse
# => [5, 4, 3, 2, 1]

# Removing the last element and returning it
puts numbers.pop
# => 5

# Removing the first element and returning it
puts numbers.shift
# => 1

# Flatting intern arrays
puts [1, 2, [5, 4, [10, 20]], 6, 7].flatten
# => [1, 2, 5, 4, 10, 20, 6, 7]

puts ['Rock', 'Roll'].join(" 'n' ")
# => Rock 'n' Roll

# Getting only the unique values
# This function it is not in place. It doesn't affect the original variable
puts [3, 3, 9].uniq
# => [3, 9]

# Assigning elements
sandwich = []
sandwich << 'meat'
puts sandwich

########### Operations

first_set = [1, 2, 3, 4]
second_set = [3, 4, 5, 6]

# Finding an intersection
puts first_set & second_set
# => [3, 4]

# Finding the Union
puts first_set | second_set
# => [1, 2, 3, 4, 5, 6]

puts first_set + second_set
# => [1, 2, 3, 4, 3, 4, 5, 6]

puts first_set * 2
# => [1, 2, 3, 4, 1, 2, 3, 4]

food_symbols = [:pizza, :cake, :hamburger, :bacon]
symbols_to_delete = [:cake, :bacon]
puts food_symbols - symbols_to_delete
# => [:pizza, :hamburger]
