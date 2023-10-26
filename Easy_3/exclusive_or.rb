# create an xor method
# mental model
# Create a method which takes two arguments and returns false if both arguements are either both false or both true.
# steps
# check if the first argument evaluates to true and store result
# check if the second argument evaluates to true and store result
# if the stored results are equivalent then return false



def xor?(arg1, arg2)
  !!arg1 != !!arg2
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false
puts xor?('a', nil) == true

p xor?(false, true) == true
p xor?(42, nil) == true
p xor?(['a', 'b', 'c'], {a: 1, b: 2, c: 3}) == false
p xor?('This is truthy', (puts "This is truthy")) == true
p xor?([1, 2, 3].include?(4), 5.odd?) == true