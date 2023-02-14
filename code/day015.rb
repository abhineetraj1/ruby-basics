=begin
  [Day 015] Arguments
    - In Ruby, when you define or call (execute, use) a method,
      you can omit the parentheses. (Yeah, that's awesome!)
=end

# You can use this way
puts "Ruby is awesome"
# => Ruby is awesome

# or even this way...
puts("Ruby is awesome")
# => Ruby is awesome

## Test using functions that receive parameters
def say_something(language)
  "#{language} is awesome"
end

# You can omit the parentheses how many times you want
puts say_something "Ruby"
# => Ruby is awesome

## Test using functions that receive no parameters
def say_something_else
  "You must learn more about Ruby, NOW!!"
end

puts say_something_else
# => You must learn more about Ruby, NOW!!
