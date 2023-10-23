# ask user for Input. 
# store user Input 
# remove space characters
# count number of characters and store int value
# output sentence displaying number of characters and original input. 


puts "Please write word or multiple words:"

user_input = gets.chomp
squished_input = user_input.delete(' ')

puts "There are #{squished_input.size} characters in #{user_input}."