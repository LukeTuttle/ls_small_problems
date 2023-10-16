def prompt(str)
  puts '>> ' + str
end

prompt("Please enter an integer greater than 0:")
user_int = gets.chomp.to_i

prompt("Enter 's' to comput the sum, 'p' tom compute the product.")
operation = gets.chomp.downcase

if operation == 's'
  operation = 'sum'
  result = (1..user_int).inject(:+)
elsif operation == 'p'
  operation = 'product'
  result = (1..user_int).inject(:*)
else
  puts "Error!"
end

puts "The #{operation} of the integers between 1 and #{user_int} is #{result}."