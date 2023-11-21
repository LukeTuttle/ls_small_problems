=begin
1:03
algorithm: 
- create an empty array `new_arr`
- iterate over the original array, creating a copy of the element and prepending it to new_arr



=end


def reverse(arr)
  new_arr = []
  arr.reduce([]) { |mem, el| mem.unshift(el) } # further exploration version
  # arr.map {|el| new_arr.unshift(el.clone)}
  # new_arr
end


# test cases
p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true