def negative(int)
  return int if int <= 0
  int * -1
end

puts negative(5) == -5
puts negative(-3) == -3 
puts negative(0) == 0 