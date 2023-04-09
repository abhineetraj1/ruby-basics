=begin
  [Day 031] Inverse matric
  Taking out inverse of matric by creating own alogrithm
=end

# Define the matrix as a 2-dimensional array
matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
n = matrix.length

# Add the identity matrix to the right of the original matrix
for i in 0...n
  matrix[i] += [0] * i + [1] + [0] * (n - i - 1)
end

# Perform Gaussian elimination to obtain an upper-triangular matrix
for i in 0...n
  pivot = matrix[i][i]
  for j in i...n * 2
    matrix[i][j] /= pivot
  end
  for j in i + 1...n
    factor = matrix[j][i]
    for k in i...n * 2
      matrix[j][k] -= factor * matrix[i][k]
    end
  end
end

# Perform back-substitution to obtain a diagonal matrix
for i in (n - 1).downto(0)
  for j in (i - 1).downto(0)
    factor = matrix[j][i]
    for k in i...n * 2
      matrix[j][k] -= factor * matrix[i][k]
    end
  end
end
inverse = []
for i in 0...n
  inverse << matrix[i][n...n*2]
end

puts inverse
