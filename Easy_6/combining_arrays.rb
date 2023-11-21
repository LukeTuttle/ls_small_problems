=begin
1:09
algorithm:
 - create an empty arr `new_arr`
 - for each `arr` in [arr1, arr2]
  - append each element of `arr` to new_arr unless that element is already present in new_arr
- return `new_arr`


=end

def merge(arr1, arr2)
  new_arr = []
  [arr1, arr2].each do |arr|
    arr.each { |el| new_arr << el unless new_arr.include?(el) }
  end
  new_arr
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]