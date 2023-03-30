=begin
  [Day 028] Functions DSA
  Shell sort
=end

def shell_sort(arr)
  n = arr.length
  gap = n / 2
  while gap > 0
    (gap...n).each do |i|
      temp = arr[i]
      j = i
      # Shift earlier gap-sorted elements up until the correct location for arr[i] is found
      while j >= gap && arr[j - gap] > temp
        arr[j] = arr[j - gap]
        j -= gap
      end
      # Insert the original element arr[i] at its correct location
      arr[j] = temp
    end
    gap = gap / 2
  end
  return arr
end