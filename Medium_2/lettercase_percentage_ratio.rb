=begin
11:27
problem: given a string, return a hash with keys lowercase, uppercase, neither with values corresponding
to the percentage of characters in he string which belong to each of those 3 groups.

rules: space character falls into the 'neither' category

algorithm:
- initialize `all_chars` to an array of all the strings characters
- create a hash `percents` with the three relevant keys (default of 0)
- for each char in all_chars
  - check which key (group) that char belongs to and increment the value by 1
- divide all the values in percents by the length of `all_chars` and multiply by 100
- return percents


=end

def letter_percentages(str)
  all_chars = str.chars
  percents = Hash.new(0)
  [:uppercase, :lowercase, :neither].each {|key| percents[key] = 0}

  all_chars.each do |char|
    percents[which_group(char)] += 1
  end
  
  percents.transform_values {|count| (count.to_f/all_chars.size) * 100}
end

def which_group(char)
  if ('A'..'Z').include?(char)
    :uppercase
  elsif ('a'..'z').include?(char)
    :lowercase
  else
    :neither
  end
end




p letter_percentages('abCdef 123')
p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef')  == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }