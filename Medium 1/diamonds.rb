=begin
10:07
problem: print a diamon in an n x n grid where n will always be odd 

thoughts: 
- need to figure out how to supply number of stars in row and return a properly formatted string
- need to figure out how I want to handle iterating through the rows


algorithm: 
  - set stars_nums to an array of integers 1..(n-2) but only contains odd numbers.
  - for each num in stars_nums
    - print a row with num number of stars
  - print the row with n number of stars
  - for each num in stars nums working backward
    - print a row with num number of stars

=end


def diamond(n)
  # print_row(n) if n == 1
  stars_nums = (1..(n-2)).select {|int| int.odd?}
  stars_nums.each {|row_n| print_row(row_n, n)}
  print_row(n, n)
  stars_nums.reverse_each {|row_n| print_row(row_n, n)}
end

def print_row(row_n, n)
  blank_spaces = ' ' * ((n - row_n) / 2)
  # p blank_spaces
  puts "#{blank_spaces}#{'*' * row_n}#{blank_spaces}"
end


diamond(9)
diamond(3)
diamond(1)

