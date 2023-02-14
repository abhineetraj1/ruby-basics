=begin
  [Day 013] Blocks: Like methods, but without a name
=end

### Times
3.times do
  puts "ha"
end
# => ha
# => ha
# => ha

# ...or

## Use curly braces when you have just one line, it's a community convention.
3.times { puts "he" }
# => he
# => he
# => he

### Each
["Marcos", "Vinícius", "Brás"].each do |word|
  puts word
end
# => Marcos
# => Vinícius
# => Brás

# ... or
["Marcos", "Vinícius", "Brás"].each { |word| puts word }
# => Marcos
# => Vinícius
# => Brás

## Every block returns value
puts ["a", "b", "c"].collect { |letter| letter.upcase }
# => A
# => B
# => C

numbers = [1, 2, 3, 4, 5].collect.with_index do |number, index|
  number + index
end
puts numbers
# => [1, 3, 5, 7, 9]

## "map" method is an alias to "collect" method
puts ["a", "b", "c"].map { |letter| letter.upcase }
# => A
# => B
# => C

## Filter values with "select" method
p [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].select { |number| number.odd? }
# => [1, 3, 5, 7, 9]

## Filter the first value that matches with the boolean condition
p [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].detect { |number| number.even? }
# => 2
