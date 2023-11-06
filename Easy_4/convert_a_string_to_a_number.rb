# start: 9:47
=begin
# problem: convert a string to an integer without using any conversion methods
# req's: dont worry about leading +- signs or any other punctuation. all chars will be numeric

# mental model: 
set `power_ten` to 1
create a hash `int_lookup` which has string integers 0-9 as keys and Integer integers as the values

set out_num to 0
starting with the last character, for each `num` in `str` (param)
  set `num_int` to the Integer value of `num` using the lookup hash
  increment out_num by product of `num_int` and `power_ten`
  increment power_ten by multiplying by 10
  repeat with the next `num` in `str`
return out_num


=end

def string_to_integer(str)
  int_lookup = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }
  power_ten = 1
  out_num = 0

  str.reverse.chars.each do |num|
    num_int = int_lookup[num]
    out_num += num_int * power_ten
    power_ten *= 10
  end
  out_num
end



# tests
p string_to_integer('4321') == 4321
p string_to_integer('570') == 570