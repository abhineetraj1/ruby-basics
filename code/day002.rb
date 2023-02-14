=begin
  [Day 002] Conditions: if & else

  This example covers the conditional operator IF and a little bit about of Syntax Sugar.
=end

number1 = 10
number2 = 5

if number1 > number2
  puts "#{number1} is greater than #{number2}"
  # => 10 is greater then 5
end

# Syntax Sugar
puts "#{number1} is greater than #{number2}" if number1 > number2
# => 10 is greater than 5

puts number1 if not number1.nil?
# => 10

# 'unless' is a syntax sugar for 'if not'
puts number1 unless number1.nil?
# => 10

number1 = nil
puts number1 if number1
# Print nothing


## Conditional at the same line.
# The command "then" is optional. It is used when you need write the entire codition at the same line
x = 10
if x == 5 then puts "Equal to 5" else puts "Different of 5" end
# => Different of 5

number = "two"
valor = if number == "one" then 1
elsif number == "two" then 2
else 3
end
puts valor
# => 2


### Nested conditions
x = 10
if x == 50
	puts "Equal to 50"
elsif x < 50 and x > 19
	puts "Between 40 and 20"
else
	puts "Less than 20"
end
# => Less than 20


fruit = "Mango"

response = if fruit == "Strawberry"
	"The fruit is Strawberry"
elsif fruit == "Mango"
	"The fruit is Mango"
else
	"I don't know what is the fruit"
end
puts response
# => The fruit is Mango


## Using UNLESS instead of IF
unless x == 20
	puts "X is different of 20"
else
	puts "X is equal to 20"
end
# => X is different of 20


## Switch Case in Ruby
num = 2

case num
when 1
	puts "Number 1"
when 2
	puts "Number 2"
else
	puts "I don't know the number"
end
# => Number 2


# The switch case accepts logic conditions
number = 5
case
when number > 0
	puts "The number is greater than 0"
when number < 0
	puts "The number is less than 0"
when number == 0
	puts "The number is 0"
else
	puts "We broke the maths!"
end
# => The number is greater than 0


## Conditional Assignments
age = nil
age = 27 unless age
puts age
# => 27
age = 35 unless age
puts age
# => 27

# Optimizing the code above
age = nil
age ||= 27
puts age
# => 27
age ||= 35
puts age
# => 27
