require 'Date'

puts "What is your age?"
age = gets.chomp.to_i

puts 'At what age would you like to retire?'
retirement_age = gets.chomp.to_i

current_year = Date.today.year
remaining_years_of_work = retirement_age - age
puts "It's #{current_year}. You will retire in #{current_year + remaining_years_of_work}."
puts "You only have #{remaining_years_of_work} years of work to go!"
