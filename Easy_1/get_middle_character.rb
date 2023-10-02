=begin
Write a method that takes a non-empty string argument, 
and returns the middle character or characters of the argument. 
If the argument has an odd length, you should return exactly one character. 
If the argument has an even length, you should return exactly two characters.

steps
determine if there are an odd or even number of characters
if the length is even:
  find the indexes of the first and second characters to be extracted
    divide the integer of the length by 2 callit `first`. 
    `first` is the index of the second character and `first - 1` is the indexes of the first_character
  if the length is odd:
    then add one to the length of the string and divide by 2 and save the result
    the saved result is the index of the number to be output
    return the character at that index
=end  


def center_of(str)
  if str.length.odd?
    i = (str.length + 1) / 2
    return str[i - 1]
  else
    second_i = (str.length / 2)
    first_i = second_i - 1
    str[first_i] + str[second_i]
  end
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
