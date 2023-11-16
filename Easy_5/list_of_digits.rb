=begin
2:29
=begin
2:32
In a loop, divide the number by 10 such that you get the integer division and remainder.
Save the result of the integer divisio for use on the next iteration, and prepend the remainder
to some array. Continue doing this until the result of the iteger division is zero.
algorithm: 
- initialize `digits` to an empty array
- initialize `quotient` to nil
- initialize `remainder` to nil
- Loop
  divide `int` by 10 and save the quotient integer to quotient and the remainder to remainder
  prepend `digits` with remainder
  break if quotient == 0
- return digits array

paused at 2:42; resumed 3:13; ended 3:16
=end

def digit_list(int)
  digits = []
  remainder = nil
  
  loop do
    quotient, remainder = int.divmod(10)
    digits.unshift(remainder)
    break if quotient == 0
    int = quotient
  end
  digits
end

p digit_list(12345) 
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true