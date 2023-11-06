# 9:21
=begin 
problem: Write a method that takes an Array of numbers, 
and returns an Array with the same number of elements, 
and each element has the running total from the original Array.

input/output: array, same length array
questions: 
- empty array returns empty array

# algorithm
- create an empty array `cumulative_arr`
- return cumulative_arr if `arr` is empty
- for each `el` in `arr` (param) 

  - find the sum of all elements in `arr` prior to and including `el`. add this sum to `cumulative_arr`
- return `cumulative_arr`

sum subroutine:
- create a new array from `arr` by starting with first element and counting element index + 1 numbers forward
=end

def running_total(arr)
  cumulative_arr = []
  return cumulative_arr if arr.empty?
  
  1.upto(arr.size) do |n|
    cumulative_arr << arr[0, n].reduce(&:+)
  end
  cumulative_arr
end

def running_total(arr)
  out_arr = []
  arr.reduce(0) do |sum, el|
    out_arr << sum + el
    sum = sum + el
  end
  out_arr
end

def running_total(arr)
  sum = 0
  arr.each_with_object([]) do |el, out_arr|
    out_arr << sum += el
  end
end

# tests:
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []