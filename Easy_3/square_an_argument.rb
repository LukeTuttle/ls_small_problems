def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

puts square(5) == 25
puts square(-8) == 64


# FURTHER EXPLORATION
def multiply(num1, num2)
  num1 * num2
end

def square(num, power = 2)
  power -= 1
  result = num
  power.times do 
    result = multiply(result, num)
  end
  result
end

puts square(5) == 25
puts square(-8) == 64

puts square(2, 3)
puts square(1, 10)
puts square(10, 3)