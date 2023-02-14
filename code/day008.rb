=begin
  [Day 008] Creating Methods
=end

### Simple method definition
def do_something
  puts "Ruby is awesome"
end

# Calling a method that doesn't receive args
do_something

### Defining a method with args
def do_something_else(language)
  puts "#{language} is the best programming language"
end

do_something_else("Ruby")

### Every method always returns exactly one object, even nil.
puts do_something_else("Ruby")
# =>

### The last line in a method is always the returned object
def sum_three_numbers(number1, number2, number3)
  return number1 + number2 + number3
end

puts sum_three_numbers(5, 6, 7)
# => 18

### Defining a method with default args
def hello(name="there")
  puts "Hello #{name}, you are awesome!"
end

hello
# => Hello there, you are awesome!
hello("Marcos")
# => Hello Marcos, you are awesome!
