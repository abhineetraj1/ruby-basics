=begin
  [Day 027] Functions DSA
  Heap sort
=end

def heap_sort(arr)
  n = arr.length
  # Build heap (rearrange array)
  (n / 2 - 1).downto(0) do |i|
    heapify(arr, n, i)
  end
  # One by one extract an element from heap
  (n - 1).downto(1) do |i|
    arr[0], arr[i] = arr[i], arr[0] # swap
    heapify(arr, i, 0)
  end
  return arr
end

def heapify(arr, n, i)
  largest = i # Initialize largest as root
  l = 2 * i + 1 # left = 2*i + 1
  r = 2 * i + 2 # right = 2*i + 2

  # If left child is larger than root
  if l < n && arr[l] > arr[largest]
    largest = l
  end
  # If right child is larger than largest so far
  if r < n && arr[r] > arr[largest]
    largest = r
  end
  # If largest is not root
  if largest != i
    arr[i], arr[largest] = arr[largest], arr[i] # swap
    heapify(arr, n, largest)
  end
end