# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. 
# The length of the string should match the given integer.

def stringy(n)
  bin = true
  iterator = 0
  out_str = ''
  until iterator == n
    el = bin ? 1:0
    out_str << el.to_s
    bin = !bin
    iterator += 1
  end
  out_str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
