def prompt_for_number(ord)
  puts "==> Enter the #{ord} number:"
end

ORDINALS = ['1st', '2nd', '3rd', '4th', '5th', 'last']

user_responses = []

ORDINALS.each do |ord|
  prompt_for_number(ord)
  user_input = gets.chomp.to_i
  user_responses << user_input
end

target_int = user_responses.pop

appears_or_not_str = user_responses.include?(target_int) ? "appears" : "does not appear"

puts "The number #{target_int} #{appears_or_not_str} in #{user_responses}."