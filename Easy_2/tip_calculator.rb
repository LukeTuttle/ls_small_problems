puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_f

tip_amount = bill * (tip_percentage / 100)
puts format('The tip is $%.2f', tip_amount.round(2))
puts format('The total is $%.2f', (tip_amount + bill))
