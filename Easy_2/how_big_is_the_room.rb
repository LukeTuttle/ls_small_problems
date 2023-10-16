=begin
Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

Note: 1 square meter == 10.7639 square feet

Do not worry about validating the input at this time.
Example run
Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).

Algorithm:
- ask user for length and width of the room
- save the sq meters as `sq_meters`
- convert `sq_meters` to `sq_feet` given 1m = 10.7639ft
- print a string that gives the square meters and feet of the room
=end

METERS_TO_FEET_CONVERSION_FACTOR = 10.7639
puts "Enter the length of the room in meters:"
length = gets.chomp.to_i

puts "Enter the width of the room in meters:"
width = gets.chomp.to_i

sq_meters = length * width
sq_feet = (sq_meters * METERS_TO_FEET_CONVERSION_FACTOR).round(2)

puts "The area of the room is #{sq_meters} square meters (#{sq_feet} square feet)."