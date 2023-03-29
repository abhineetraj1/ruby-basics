=begin
  [Day 025] Library
  Multiplication of two matrics
=end

class Matrix
  def self.multiply(matrix1, matrix2)
    # Ensure that the matrices are compatible for multiplication
    unless matrix1[0].size == matrix2.size
      raise ArgumentError, "The matrices cannot be multiplied."
    end
    
    # Perform matrix multiplication
    result = Array.new(matrix1.size) { Array.new(matrix2[0].size, 0) }
    matrix1.size.times do |i|
      matrix2[0].size.times do |j|
        matrix1[0].size.times do |k|
          result[i][j] += matrix1[i][k] * matrix2[k][j]
        end
      end
    end
    
    # Return the resulting matrix
    result
  end
end
