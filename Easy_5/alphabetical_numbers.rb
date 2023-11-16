=begin
time: 1:37
input: array of integers 0..19
output: sorted array of strings 
- Algorithm:
- create a hsh `lookup` with integer string key value pairs
- set `sorted_strings` to an sorted array of the values from `lookup` 
- initialize an empty array `out_arr`
- for each string in sorted_strings
  - find the corresponding key (i.e. integer)for the value `string` in the lookup hash and append it to `out_arr`
- return out_arr
=end

def alphabetic_number_sort(int_arr)
  strings = %w(zero, one, two, three, four, five, six, seven, eight, nine, ten,
  eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen)
  lookup = {}
  int_arr.each_with_index { |i, el| lookup[el] = strings[i] }
  sorted_strings = lookup.values.sort
  out_arr = []

  sorted_strings.each do |string|
    out_arr << lookup.key(string)
  end
  out_arr
end


# test case:
p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]