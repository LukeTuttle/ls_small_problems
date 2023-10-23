# prompt user for integer input
# store input
# perform operations and output results 

def output_prepender(str)
  puts "==> + #{str}"
end

output_prepender('Enter the first number:')
first_number = gets.chomp.to_i

output_prepender('Enter the second number:')
second_number = gets.chomp.to_i

output_prepender("#{first_number} + #{second_number} = #{first_number + second_number}")
output_prepender("#{first_number} - #{second_number} = #{first_number - second_number}")
output_prepender("#{first_number} * #{second_number} = #{first_number * second_number}")
output_prepender("#{first_number} / #{second_number} = #{first_number / second_number}")
output_prepender("#{first_number} % #{second_number} = #{first_number % second_number}")
output_prepender("#{first_number} ** #{second_number} = #{first_number ** second_number}")


