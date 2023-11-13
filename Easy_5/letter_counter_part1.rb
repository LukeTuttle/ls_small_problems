=begin 
start 2:10
questions: none
input: stirng
output: hash where keys are word length and value a count of words with that length
algorithm
- set `words` to an array containing the words from supplied string
- set `size_counts` to a an empty hash
- for each word in words
  - set `size` to the word's size
  - if size_counts has a key == to `size` increcement the associated value of that key by 1 and move to next iteration
  - if size_count does not have a key == `size` then create a key value pair in size_counts with key == to `size` and value == to 1
- return size_counts hash
=end

def word_sizes(str)
  words = str.split
  size_counts = {}
  words.each do |word|
    size = word.size
    if size_counts.key?(size)
      size_counts[size] += 1
    else
      size_counts[size] = 1
    end
  end
  size_counts
end

# test casesword_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}