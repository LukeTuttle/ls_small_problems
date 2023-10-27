=begin
Write a method that takes a year as input and returns the century. 
The return value should be a string that begins with the century number, 
and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

Mental Model:
problem 1
Take an integer and find out what is in the hundredths place–not 
just the digit but what ordinal value. (maybe divide the integer by 100)
If there is a remainder, then the century should be the quotient plus one. 
Note that the only time this wont happen is if the year is a centenial (i.e. 1900, 2000).
Save this value

problem 2
take the saved value and figure out what the approprieat string suffix is. You can't just go off of the 
last digit because 23rd is not 13th (ex)  so you must take a look at the second to last digit and if it is a 1
then it should get 'th'. If not a one then look at the last digit and assign the appropriate string. 

Algorithm:
- Divide the integer by 100, save the quotient as `century` and the remainder a `remainder`
- Unless the remainder is 0 add 1 to `century`
- Put the digits of `century` into an array and save it

- create a hash which has the str suffixes as keys and an array with the relevant digits as keys; inlcude 'teen' in the array correspond to the 'th' key
- initialize a variable called ord_suffix to an empty string
- check the second to last digit in `century` 
  - if it only has one digit or digit is not a 1, go to next step
  - if digit is 1 then get the key from str suffixes has which has an array containing 'teen' and assign it to `ord_suffix`
- check the last digit of `century` and get the key from the str_suffixes hash which has a the digit in its value (array); assign it to `ord_suffix`
- convert century to a string and append it with 'ord_suffix'

=end

require 'pry-byebug'
def century(year)
  # binding.pry
  century, remainder = year.divmod(100)
  century += 1 unless remainder == 0
  century_digits = century.digits.reverse

  str_suffixes = { 'st': [1], 'nd': [2], 'rd': [3], 'th': [4,5,6,7,8,9,0] }

  ord_suffix = if century_digits[-2] == 1
                 'th'
               else
                 str_suffixes.select { |k, v| v.include?(century_digits[-1]) }.keys.first.to_s
               end

  century.to_s + ord_suffix
end

# test cases
p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

p century(2000)
p century(2001)
p century(1965)
p century(256)
p century(5)
p century(10103)
p century(1052)
p century(1127)
p century(11201)