=begin
1:56
problem: convert an integer, positive or negative to its string representation.
requirements: str representations should be prepended with a + or - as appropriate. 0 gets no prepending sign

input/output: integer; string

algorithm
- create an object, `digit_lookup` for translating a Integer digit into a String digit
- initialize an empty string `str_num`
- reassign int value to `new_int`
– make sure `int` is positive
  - if `int` is less than 0, multiply by -1 and reassign
- iterate over the int, such that you end up with the right most digit `cur_digit` isolated 
  - prepend `str_num` with str version of cur_digit (use digit_lookup object)
  - update `int` such that on the next iteration through the loop the next rightmost digit is isolated
  - break the loop when there are no more digits to work through
- prepend the appropriate sign to `str_num`
  - use helper method `which_sign` to return the appropritate sign (+- or empty)
- return str_num
=end

def which_sign(int)
  return '' if int == 0

  int.negative? ? '-' : '+'
end


def signed_integer_to_string(int)
  digit_lookup = ('0'..'9').to_a
  str_num = ''
  new_int = int < 0 ? int*-1 : int

  loop do
    new_int, remainder = new_int.divmod(10)
    str_num.prepend(digit_lookup[remainder])
    break if new_int == 0 
  end

  str_num
  str_num.prepend(which_sign(int))
end





# test cases
p signed_integer_to_string(4321)
p signed_integer_to_string(-123)
p signed_integer_to_string(0) 

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
