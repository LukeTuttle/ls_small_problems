=begin 
start 1:51
problem: replace non alphabetic characters in the supplied string with ' ' (space), consecutive spaces not allowed
input: string
output: new string
alogorithm
- set `out_string` to an empty string
- set `chars_arr` to an array of the string's characters
- for each char in `chars_arr` if the character is alphabetic, append it to the `out_string`
  otherwise, go to the next character.
- having iterated through all characters, iterate over the characters in `out_str` such that 
  consecutive spaces are removed. 
  - convert out_str to an array of character
  - for each character
    - check that the previous chacter was a space and if so remove that character from the returned array

=end

def cleanup(str)
  alphabetic_chars = ('a'..'z').to_a + ('A'..'Z').to_a
  out_string = ''
  chars_arr = str.chars
  chars_arr.each do |char|
   char_to_append = alphabetic_chars.include?(char) ? char : ' '
   out_string << char_to_append
  end
  out_string.squeeze
end




# test cases
p cleanup("---what's my +*& line?") == ' what s my line '  