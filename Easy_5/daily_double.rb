=begin
2:09
input: string
output: string
rules: if supplied an empty string return an new? empty string.
mental model: starting with the first character, check if the next character is the
same character and if it is move to the next character. Once a non equivalent character is 
found append the current character to an out string. return the out string. 

algorithm: 
- initialize an empty str `out_str`
- if the supplied string is empty return `out_str`
- split the supplied string in a chars array `chars_arr`
- for each char in chars_arr
  - if the character to the right is the same as char
    - move to the next iteration
  - otherwise, append char to `out_str`
  * if char is the last char in the chars_arr it should be added to out_str
    think about a nil return value for the char to the right
- return the chars_arr

=end

def crunch(str)
  out_str = ''
  return out_str if str.empty?

  chars_arr = str.chars
  chars_arr.each_with_index do | char, i |
    next if char == chars_arr[i + 1]
    out_str << char
  end
  out_str
end


# test cases:
p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''