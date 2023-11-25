=begin
10:57

input: very long string with sentences
output: the longest sentence in the string along with a word count for that sentence

rules: words are delimited by a space or sentence ending character. sentence ending characters are . ! and ? 

mental model: First, 


algorithm:
- split string into an array of sentences
  - 
- sort the sentences according to word length
  - split each sentence into words and return the length of the resulting array from the block
- save the longest sentence to `longest_sentence` 
- save word_count to the word count for lognest sentence
-  return longest_sentence along with the word_count in the form of a sensibly formatted string



=end

def longest_sentence(text)
  sentences = text.split(/[?!\.]/)
  sorted_sentences = sentences.sort_by { |sentence| sentence.split.size }
  longest_sentence = sorted_sentences.last
  "word count:#{longest_sentence.size}\n #{longest_sentence.chars}"
end


speech = "Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.

Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this.

But, in a larger sense, we can not dedicate, we can not
consecrate, we can not hallow this ground. The brave
men, living and dead, who struggled here, have
consecrated it, far above our poor power to add or
detract. The world will little note, nor long remember
what we say here, but it can never forget what they
did here. It is for us the living, rather, to be dedicated
here to the unfinished work which they who fought
here have thus far so nobly advanced. It is rather for
us to be here dedicated to the great task remaining
before us -- that from these honored dead we take
increased devotion to that cause for which they gave
the last full measure of devotion -- that we here highly
resolve that these dead shall not have died in vain
-- that this nation, under God, shall have a new birth
of freedom -- and that government of the people, by
the people, for the people, shall not perish from the
earth."

puts longest_sentence(speech)
