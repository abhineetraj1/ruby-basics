=begin
  [Day 003] Strings I: Interpolate & Concatenate

  This example covers: String interpolation and String concatenation
=end

### String interpolation

fruit = "Kiwifruit"
puts "#{fruit} is the best fruit in the world!"
# Kiwifruit is the best fruit in the world!

### String concatenation

puts "Star " + "Wars"
# => Star Wars

puts "ha" * 5
# => hahahahaha

puts "Foo".concat("bar", "!")
# => Foobar!

puts "Ruby" << " on " << "Rails"
# => Ruby on Rails
