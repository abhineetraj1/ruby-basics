=begin
  [Day 020] File API II: Some Utilities
=end

some_path = "/some/awesome/path/do_not_open.txt"

puts File.absolute_path some_path
# => /some/awesome/path/do_not_open.txt

puts File.dirname some_path
# => /some/awesome/path

puts File.extname some_path
# => .txt

# Getting the last access time for the named file as a Time object
puts File.atime "do_not_open.txt"
# => 2018-06-01 22:53:44 -0300
# ...or
file = File.open "do_not_open.txt", "r"
puts File.atime file
# => 2018-06-01 22:53:44 -0300

# Getting the change time
puts File.ctime "do_not_open.txt"
# => 2018-06-01 22:53:44 -0300
