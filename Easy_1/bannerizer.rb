# Write a method that will take a short line of text, and print it within a box.

def print_in_box(str)
  str_len = str.length
  border = "+#{'-' * (str_len + 2)}+"
  empty_line = "|#{' ' * (str_len + 2)}|"

  puts border
  puts empty_line
  puts "| #{str} |"
  puts empty_line
  puts border
end

print_in_box('hello')
print_in_box('')