=begin
10:31
problem: merge two sorted array into a new sorted array. you may not call sort on the merged array
you must build it as you go and you cannot mutate the input arrays

input;output: 2 sorted arrays; 1 new sorted array

notes!: array may be of different lengths or even 1 array could be empty

thoughts: 
One way to do this is to shift the array which has the less-than element and append shifted value to out_array

will need to stop comparison once one array is empty because Integer > nil throws an exception

# How to handle case of empty array at each iteration
  need to know which array is empty
    could create an method which takes both arrays as arguments and return the non empty array
      returns nil if neither empty 
  ability to automatically choose the non empty array to shift
  merge sort is finished when both arrays are empty

algorithm:
- set out_array to an empty array
- clone the input arrays and name them arr1 and arr2
- until both arrays are empty
  - if one array is empty
    - shift element at 0 to out_array
    - go to next iteration
  - else if niether empty
    - compare the elements at index 0 for both arrays
    - shift the lesser element onto out_array
    - go to next iteration
- return out array (once both empty, `until` should exit loop once this is the case)
=end

def merge(arr_1, arr_2)
  arr1 = arr_1.clone
  arr2 = arr_2.clone
  out_array = []

  until arr1.empty? && arr2.empty?
    non_empty_arr = which_non_empty(arr1, arr2)
    if !!non_empty_arr
      out_array << non_empty_arr.shift
      next
    elsif non_empty_arr.nil?
      out_array << (arr1.first < arr2.first ? arr1.shift : arr2.shift)
      p out_array
    end
  end
  out_array
end

# this is problematic if both arrays are empty, since it will return arr1 in that case
def which_non_empty(arr1, arr2)
  return nil if !(arr1.empty?) && !(arr2.empty?)
  return arr1 if arr2.empty?
  return arr2 if arr1.empty?
end



# p which_non_empty([], [])
# p which_non_empty([1], [])
# p which_non_empty([], [2])
# p which_non_empty([1], [2])







# test cases
merge([1, 5, 9], [2, 6, 8])
p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]