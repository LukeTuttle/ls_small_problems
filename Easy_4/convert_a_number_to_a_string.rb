# 1:22

# Problem: Convert an integer to its string representation without using standard conversion methods
# Req's/assumptions: integer will be 0 or positive

# input/output: int/str

# mental model: I will need to split the integer into its component digits. Then I will use a 
#  lookup hash to get a string representation for each digit. I will store each string digit/char 
#  to a string for outputting. 

=begin
# algorithm
- create a lookup hash `digits_lookup` for converting integer digits to str characters
- split the integer into an array containing its digits called `digits`
- initiate an empty string, `str_num`, for storing the str char for each digit
- for  `digit` in `digits` access the str character for the `digit` in the lookup hash and append it to `str_num`
- return str_num

=end

def integer_to_string(int)
  digits_lookup = (0..9).to_a.zip(('0'..'9').to_a).to_h
  digits = int.digits.reverse
  str_num = ''

  digits.each { |digit| str_num << digits_lookup[digit] }
  str_num
end


# tests
p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'