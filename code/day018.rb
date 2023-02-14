=begin
  [Day 018] Pure vs. Imperative: The symbol "!"
=end

name = "marcos"

### Pure Functions
# Most of the functions in Ruby are Pure, they don't change the original object
puts name.capitalize
puts name

### Imperative Functions
# The "!" character is a convention to tell people that the method
# must be used with careful, because it can have side effects.
# In the following example, the site effect will change the
# variable value.
puts name.capitalize!
puts name
