=begin
7:47
problem: 
take a 3x3 matrix and transpose it into a new nested set of arrays 
such that the elements in the first column become the elements in the first row
and so on.

note!: cannot mutate original array

thoughts: 
I could create a hash which keys 1 2 and 3. 
then iterate over each of the rows and add
the element in the current iteration to its corresponding key 
which should be equal to i + 1. Then I would take the values from the hash


alorithm:
 - create an array `trans` which contains three empty subuarrays.
-  for each subarray in the input matrix
  - for each el in the subarray
    - append that element to the subarray in `trans` which corresponds to i of el
=end

def transpose(matrix)
  trans = [[], [], []]
  matrix.each_with_index do |row, _|
    row.each_with_index {|int, col_i| trans[col_i] << int }
    end
  trans
end


# test cases
matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]