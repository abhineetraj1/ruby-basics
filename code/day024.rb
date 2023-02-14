=begin
  [Day 024] Including Mixins within existing objects
=end

load 'alien.rb'
load 'say_something.rb'

alien = Alien.new
alien.extend CoolDialogs
puts alien.say_something_weird
# => CSharp is awesome
