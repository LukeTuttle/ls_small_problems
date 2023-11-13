=begin
start: 2:24
input: string
output: hash
algorithm:
- set `words` to an array of words from supplied string
- set size_counts to an empty array with default value 0
- for each word in words
  - set `size` to 0
  - split the word into a `chars_arr`
  - for each char in chars_arr
    - increment size by 1 if char is alphabetic
    - otherwise go to next char
  - increment value of size_counts[size] by 1
- return size)_counts hash

=end

def word_sizes(str)
  words = str.split
  size_counts = Hash.new(0)
  words.each do |word|
    size = 0
    word.chars.each do |char|
      size += 1 if ('a'..'z').include?(char.downcase)
    end
    size_counts[size] += 1
  end
  size_counts
end





# test cases
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}