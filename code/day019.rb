=begin
  [Day 019] File API I: Writing and reading files
=end

### Reading lines of a file
movies = File.open "my_favorite_movies.txt", "r"
movies.each { |movie| puts movie }
# => Pirates of the Caribbean
# => Star Wars
# => The Martian
# => Interestelar

### Writing in a file and overriding the content
File.open "my_favorite_movies.txt", "w" do |my_movies|
  new_movies = ["Harry Potter", "Jurassic Park"]

  # The method "puts" prints a line and add a \n at the end
  new_movies.each { |movie| my_movies.puts movie }
end

### Writing at the end of a file
File.open "my_favorite_movies.txt", "a" do |my_movies|
  other_movies = ["Deadpool", "Back to the future"]
  other_movies.each { |movie| my_movies.puts movie }
end

# And now, reading again to see the result
movies = File.open "my_favorite_movies.txt", "r"
movies.each { |movie| puts movie }
# => Harry Potter
# => Jurassic Park
# => Deadpool
# => Back to the future

### Getting the size in bytes
puts movies.size
# => 55

### Creating a empty file
# w+ allows write and read
new_file = File.new "message.txt", "w+"
new_file.puts "This is an incredible message"
puts new_file.path
# => message.txt
