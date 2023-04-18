 =begin
  [Day 033] DSA
   
  Quicksort Algorithm
=end

def quicksort(array)
  return array if array.length <= 1

  pivot = array.sample
  left = []
  right = []

  array.each do |x|
    if x < pivot
      left << x
    elsif x > pivot
      right << x
    end
  end

  return *quicksort(left), pivot, *quicksort(right)
end

# Example usage
array = [5, 2, 8, 4, 7, 1, 3, 6]
sorted_array = quicksort(array)
puts sorted_array
