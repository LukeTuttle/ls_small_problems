=begin
8:01
problem: create a transpose method which works with any collection which 
has at least 1 row and 1 column (i.e. 1 non empty subarr)

input: an array of arrays
output: an array of arrays where the number of subarrays (i.e. rows) in the supplied 
array of array become the length of the subarrays in the output. And the length of 
the subarrays  (ie number of columns) becomes the number of subarrays in the out put

input             output
rows              columns
sa length         n subaraas
n subuarrays      sa length

thoughts: 

I can take the length of any of the input subarrays (all the same ) and that will tell me the number of subarrays to include in the output
Then you can iterate over the input subarrasy such that the index of the subarray el corresponds to the index of the subarray in the output.

How do I dynamically create a nested array which has the length of the input subarrays? 



=end

def transpose(matrix)
  trans = []
  matrix.first.size.times { trans << []}
  matrix.each do |row|
    row.each_with_index { |el, col_i| trans[col_i] << el }
  end
  trans
end


# test cases

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]