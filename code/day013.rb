=begin
  [Day 013] While and similar loops
=end

i = 0

while i < 3
  puts "Ruby"
  i+=1
end
# => Ruby
# => Ruby
# => Ruby

i = 0
until i >= 3
  puts "Rails"
  i += 1
end
# => 0
# => 1
# => 2

i = 0
loop do
  break if i >= 3
  puts "Gem"
  i += 1
end
# => Gem
# => Gem
# => Gem

i = 0
begin
  puts "Sinatra"
  i += 1
end while i < 3
# => Sinatra
# => Sinatra
# => Sinatra
