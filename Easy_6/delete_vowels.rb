=begin
4:00
problem: take an array of string and return an array of the samestring values but with vowels removed.

Algorithm:
- for each string in strings
  - create an empty string `non_vowels` which will collect the relevant characters and be returned as an array element
  - split the string into characters
  - for each `char` in characters
    - if the char is not a vowel, then append it to  `non_vowels`
    - otherwise, go to the next character
  - return the array with the non_vowel strings

=end

def remove_vowels(str_arr)
  non_vowel_strings = str_arr.map do |str|
    non_vowels = ''
    str.each_char do |char|
      non_vowels << char unless %w(a e i o u).include?(char.downcase)
    end
    non_vowels
  end
  non_vowel_strings
end  



# testcases 
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']