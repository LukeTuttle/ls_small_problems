#1:27
=begin
Problem: return a string in which the first and last letters of each word are swapped
input/output: string ; string
algorithm: 
- set `words` to an array of the words in the supplied string split by space characters
- for each `word` in `words`
  - return the word if the length is 1
  - set `characters` to an array of word characters
  - remove and store the first and last characters of each word
  - prepend and append the `characters` array with the removed characters
  - join the characters into a string and return string from block
- join the words back into a single string and return that string. 

=end 

def swap(str)
  words = str.split
  char_swapped_words = words.map do |word|
    if word.size > 1
      characters = word.chars
      first = characters.shift
      last = characters.pop
      characters.unshift(last)
      characters.push(first)
      word = characters.join
    end
    word
  end
  char_swapped_words.join ' '
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

# took me 21 mintues. LOG THIS INTO NOTION. difficulty was moderate to high