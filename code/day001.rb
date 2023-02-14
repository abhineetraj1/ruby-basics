=begin
  [Day 001] Data Types

  This example covers some built-in data types.
=end

name = "Marcos Vinícius"
puts name.class
# => String

age = 21
puts age.class
# => Integer

height = 1.73
puts height.class
# => Float

is_male = true
puts is_male.class
# => TrueClass

is_female = false
puts is_female.class
# => FalseClass

null = nil
puts null.class
# => NilClass

# Ruby allows attribute big numbers more legible
earth_population = 7_000_000_000

# String interpolation
puts "Welcome, #{name}!"
