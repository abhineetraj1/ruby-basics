=begin
  [Day 011] Class III - Class variables and Methods
=end

load 'user.rb'

user = User.new 'foobar', '12345', 'foobar@github.com'
user.send :info # Calling method 'info'
puts user.respond_to?(:info, :include_private) # Return true if user object has method 'info'
# => true

# Creating a new method inside the object
def user.say_hello
  puts "Hello"
end

user.say_hello
# => Hello
