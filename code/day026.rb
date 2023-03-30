=begin
  [Day 026] Functions DSA
  Bucket sort
=end

def bucket_sort(arr, bucket_size = 5)
  if arr.empty?
    return arr
  end
  # Determine the range of the input data
  min_value = arr.min
  max_value = arr.max
  # Initialize empty buckets
  bucket_count = ((max_value - min_value) / bucket_size).floor + 1
  buckets = Array.new(bucket_count)
  # Distribute input data into buckets
  arr.each do |num|
    bucket_index = ((num - min_value) / bucket_size).floor
    if buckets[bucket_index]
      buckets[bucket_index].push(num)
    else
      buckets[bucket_index] = [num]
    end
  end
  # Sort buckets and concatenate into sorted array
  sorted_arr = []
  buckets.each do |bucket|
    if bucket
      sorted_arr.concat(bucket.sort)
    end
  end
  return sorted_arr
end
