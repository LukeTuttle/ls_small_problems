=begin
Write a method that takes a positive integer, n, as an argument,
and displays a right triangle whose sides each have n stars.
The hypotenuse of the triangle (the diagonal side in the images below)
should have one end at the lower-left of the triangle,
and the other end at the upper-right.
=end

# steps
# print a line with n number of stars where n is equal to the ordinal position of the line.
#   put another way... the first line will have 1 star and the second line will have 2 stars etc.
# the stars should be aligned to the right and the number of blank spaces will be equal to the arg
#   supplied `n` - nstars.

# simple implementation
# def triangle(n)
#   1.upto(n) do |line_n|
#     puts "#{' ' * (n - line_n)}#{'*' * line_n}"
#   end
# end

# FURTHER EXPLORATION
# def triangle(n, pos = 'bottom-right')
#   row_nums = (1..n).to_a
#   # determines up down orientation
#   row_nums.reverse! if pos.include?('top')

#   row_nums.each do |line_n|
#     # creates a line with stars justified/aligned to the right
#     line_str = "#{' ' * (n - line_n)}#{'*' * line_n}"
#     # reorients the stars to the left if specified in the arg supplied to `pos`
#     line_str.reverse! if pos.include?('left')

#     puts line_str
#   end
# end

def triangle(n, pos = 'bottom-right')
  row_nums = (1..n).to_a
  shape = row_nums.map {|line_n| "#{' ' * (n - line_n)}#{'*' * line_n}" }
  shape.reverse! if pos.include?('top')
  shape.map! { |ln| ln.reverse } if pos.include?('left') # shape.map!(&:reverse) also works

  puts shape
end

triangle(5)
triangle(5, 'top-right')
triangle(5, 'top-left')
triangle(5, 'bottom-left')
