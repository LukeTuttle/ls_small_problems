=begin 
10:38
problem: take an array and return  a set of nested arrays such the original array is split between the 
two nested arrays with the first array getting 1 extra element in the odd numbered length case

algorithm
- set out_arr to an empty array
- set added_length to 0 or 1 depending on if the array length is odd
- append the first subarray to out_arr starting at index 0 and going for array.size/2 + added_length elements
- append the second subarray to out_arr starting at index array.size/2 + added_length with legnth of remaining elements


=end


def halvsies(array)
  out_array = []
  added_length = array.size.odd? ? 1 : 0
  out_array << array[0, (array.size/2 + added_length)]
  out_array << array[((array.size/2 + added_length)..)]
  p out_array

end


p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]