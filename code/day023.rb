=begin
  [Day 023] Using Mixins as Inheritance Alternative
=end

load 'human.rb'
load 'alien.rb'

human = Human.new
puts human.say_something_great
# => These aren't the droids you're looking for

alien = Alien.new
puts alien.say_something_cool
# => Ruby is awesome
