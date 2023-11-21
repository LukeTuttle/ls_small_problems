=begin
5:00
problem: write a method which returns the longest common prefix string from an array of strings
rules: if no common prefix string, return an empty string '' 

thoughts:
starting with the shortest string, check if all the other strings start with that string.
If they do, return that shortest string. If not, chop off the last character of the shortest string and check again
algorithm:
 - set out_string to empty string
 - set comparison_string to a string equivalent in value to the shortest sring in the array
 - until the comparison string is empty
  - if all the strings in the array start with the comparison string, return the comparison string
  - otherwise, chop off the last character of the comparison string
 - return the out_string


=end 


def common_prefix(arr)
  # out_string = ''
  comparison_string = arr.sort_by(&:size).first.clone

  until comparison_string.empty?
    break if arr.all? { |string| string.start_with?(comparison_string) }
    comparison_string.chop!
  end
  comparison_string
end


p common_prefix(%w(flower flow flight))
p common_prefix(%w(dog racecar car))
p common_prefix(%w(interspecies interstellar interstate))
p common_prefix(%w(throne dungeon))
p common_prefix(%w(throne throne))