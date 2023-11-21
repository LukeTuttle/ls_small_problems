=begin
12:47
problem: write a method which takes an array and reverses the order of the elements in place. return the same array object

input;output: array object; same array object with elemetns in reverse order

mental model: 
algorithm:
  - set param `arr` to nil
  - set `new_arr` to an empty array
  - pop off each element in arr and append to new array
  - then append arr with each shifted el from new_array
=end 

def reverse!(arr)
  new_arr = []
  loop do 
    break if arr.empty?
    new_arr << arr.pop
  end

  loop do
    break if new_arr.empty?
    arr << new_arr.shift
  end
  arr
end

# test cases
list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true