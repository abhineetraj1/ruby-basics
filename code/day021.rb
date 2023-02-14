=begin
  [Day 021] Object serialization to **YAML**
=end

require '../day009/book.rb'
require 'yaml'

book1 = Book.new "Book 1", "FooBar", 2018, 200, 70, 1234567
book2 = Book.new "Book 2", "FooBar", 2017, 400, 90, 9876543

### Serializing objects in YAML
serialized_object = YAML.dump book1
puts serialized_object
# => --- !ruby/object:Book
# => title: Book 1
# => author: FooBar
# => year: 2018
# => pages: 200
# => price: 70

puts serialized_object.class
# => String

### Deserializing YAML to Book object
deserialized_object = YAML.load serialized_object

puts deserialized_object
# => Book 1
# The result above it is the return of the method to_s

puts deserialized_object.class
# => Book

books = [book1, book2]
# Saving as a file
File.open("books.yml", "w") do |file|
  for book in books do
    file.puts YAML.dump book
    file.puts ""
  end
end

# Reading from a YAML file
File.open("books.yml", "r").map do |serialized_book|
  puts YAML.load serialized_book
end
