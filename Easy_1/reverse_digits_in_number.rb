# Write a method that takes a positive integer as an argument and returns that number with its digits reversed. dont use Integer#digits

# wrote as a loop for practice. I know there are simpler implementations
def reversed_number(int)
  int_str = int.to_s.chars
  reversed_int = []
  counter = 0
  i = int_str.size - 1
  until counter >= int_str.size
    if reversed_int.empty? && int_str[i] == '0'
      counter += 1
      i -= 1
      next
    else
      reversed_int << int_str[i]
      counter += 1
      i -= 1
    end
  end

  reversed_int.join.to_i
end

puts reversed_number(12345) == 54321
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654
puts reversed_number(12000) == 21 # No leading zeros in return value!
puts reversed_number(12003) == 30021
puts reversed_number(1) == 1