=begin
  [Day 035] Fibonacci sequence
  Write a ruby program that takes an integer n as input and prints the first n terms of the Fibonacci sequence.
=end

def fibonacci(n)
  if n == 0
    return []
  elsif n == 1
    return [0]
  else
    fib = [0, 1]
    (2...n).each do |i|
      fib << fib[i-1] + fib[i-2]
    end
    return fib
  end
end

puts "Enter the number of terms you want in the Fibonacci sequence:"
n = gets.chomp.to_i

puts "The first #{n} terms of the Fibonacci sequence are:"
fib = fibonacci(n)
fib.each do |num|
  print num.to_s + " "
end
