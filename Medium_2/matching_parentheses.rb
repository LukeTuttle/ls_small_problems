=begin
2:18
problem: create a string which returns true if parentheses are balanced and false otherwise. 
rules: no parenthesis at all should return true

input:output str; boolean

thoughts: as soon as you encounter a bad closing bracket you should be able to return false
for opening brackets, you must get all the way through the string to check if there is a closing bracket

you much check eat character as to whehther it is an opening or closing bracket. before moving on to 
the next character you need to check if the count of brackets are fatally unbalanced.

what constitutes fatally unballanced?: 
At the end of the string op brackets and cl brackets are unequal. 
At any point in the string, if closing brackets are greater than opening, it is fatally unbalanced. 

algorithm:
  - set `opening` to 0
  - set `closing` to 0 
  - for each char in string characters
    - next unless char is ( or )
    - increment opening or closing as appropriate
    - return false if closing is greater than opening
  - return the comparison for equality between opening and closing
=end


def balanced?(str)
  opening = 0
  closing = 0
  str.each_char do |char|
    next unless '()'.include?(char)
    opening += 1 if char == '('
    closing += 1 if char == ')'
    return false if closing > opening
  end
  opening == closing
end
# test cases
p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What ())(is() up') == false