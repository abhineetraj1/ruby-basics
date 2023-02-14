=begin
  [Day 014] For, similar loops and Hash iterations
=end

## The first and the last numbers will be in the loop
for number in (1..3)
  puts number
end
# => 1
# => 2
# => 3

## Inverted for
for number in (3).downto(1)
  puts number
end
# => 3
# => 2
# => 1

## For Each
(1..3).each{ |number| puts number if number.odd? }
# => 1
# => 3

(3).downto(1) do |number|
  puts number
end
# => 3
# => 2
# => 1

(1).upto(3) do |number|
  puts number
end
# => 1
# => 2
# => 3

3.step(1, -1) { |number| puts number }
# => 3
# => 2
# => 1

(1..3).reverse_each { |number| puts number }
# => 3
# => 2
# => 1

### Iterating hashes
info = { :name => "Marcos", :age => 21 }
for key, value in info
	puts "Key: #{key} - Value: #{value}"
end
# => Key: name - Value: Marcos
# => Key: age - Value: 21

## Printing only keys
info.each_key { |key| puts key }
# => name
# => age

## Printing only values
info.each_value { |value| puts value }
# => Marcos
# => 21

## Printing keys and values
info.each { |key, value| puts "Key: #{key} - Value: #{value}" }
# => Key: name - Value: Marcos
# => Key: age - Value: 21
