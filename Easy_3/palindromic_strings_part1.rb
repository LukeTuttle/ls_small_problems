# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. 
#  A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

# mental model
# The string must be the very same backward and forward sensitive to case and punctuation. 
# If you reverse teh string and compare it to itself that should work

def palindrome?(str)
  str == str.reverse
end

#test cases
p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true