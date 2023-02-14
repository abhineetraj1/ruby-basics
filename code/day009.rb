=begin
  [Day 009] Classes I: Constructor and Accessors
    - All instance variables are private.
=end

require_relative 'book'

# You can create an object with this way
book = Book.new("The ultimate foo bar", "Foo Bar", 2009)
# And with this way
book = Book.new "The ultimate foo bar", "Foo Bar", 2009

# One way to access an attribute
puts book.title
# => The ultimate foo bar

# Another way to access an attribute
puts book::title
# => The ultimate foo bar
book.title = "The master foo bar"
puts book.title
# => The master foo bar

### Cheating the private instance variables
puts book.instance_variable_get "@title"
# => The master foo bar
book.instance_variable_set "@title", "The blaster foo bar"
puts book.instance_variable_get "@title"
# => The blaster foo bar
