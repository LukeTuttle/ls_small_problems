=begin
4:27

valid triangle is when: (short1.size + short2.size > longest.size) && all lengths are > 0


algorithm:
  - check if triangle is valid
  - check if it is equillateral (all equal)
  - check if  isoceles 1 side is larger than the other two which are equal
  - check if scalene all three sides different

=end

def triangle(s1, s2, s3)
  all_sides = [s1, s2, s3].sort
  # check if invalid
  return :invalid unless all_sides.all? {|side| side > 0}
  return :invalid unless all_sides.take(2).sum > all_sides.last

  #only valid beyond this point
  return :equilateral if all_sides.first == all_sides.last
  # return :isosceles if all_sides.uniq != all_sides
  return  (all_sides.uniq == all_sides ? :scalene : :isosceles)
  true
  
end



# test cases
p triangle(3, 3, 3) 
p triangle(3, 3, 1.5)
p triangle(3, 4, 5) 
p triangle(0, 3, 3) 
p triangle(3, 1, 1) 
p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid