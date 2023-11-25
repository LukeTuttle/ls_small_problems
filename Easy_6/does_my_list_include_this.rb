=begin
9:57
write your own include? method

thoughts: 
 - return false if array is empty
 - otherwise iterate over each element in the array, checking if it is equal to the target value

=end
def include?(array, target)
  return false if array.empty?

  array.each { |el| return true if el == target }
  false
end


# test cases
p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false