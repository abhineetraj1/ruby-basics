=begin
  [Day 022] Using Mixins as Namespaces
    - Mixins (or modules) are like Java packages
    - You can access Classes inside Mixins with Constant Lookups "::"
=end

load 'media.rb'

disk1 = DVD::Disk.new price=4, storage=4.4
disk2 = Bluray::Disk.new price=30, storage=50

puts disk1.class
# => DVD::Disk
puts disk2.class
# => Bluray::Disk
