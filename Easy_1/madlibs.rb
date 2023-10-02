# Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.
# steps:
# welcome the user
# ask user for the various words to fill in blanks and store them (maybe in a hash?)
# interpolate the stored answers in to a string and output the string 


def initialize_a_madlib
  welcome
  user_answers = ask_user_for_words
  output_madlib(create_madlib(user_answers))
end

def welcome()
  puts 'Hello and welcome to Madlibby, a Madlib creator!'
end

def ask_user_for_words
  user_answers = {}
  user_answers['noun'] = prompt_for('noun')
  user_answers['verb'] = prompt_for('verb')
  user_answers['adjective'] = prompt_for('adjective')
  user_answers['adverb'] = prompt_for('adverb')
  user_answers['second_noun'] = prompt_for('second_noun')
  user_answers
end

# pos = part of speech
def prompt_for(pos)
  usr_input = ''
  loop do
    put_prompt(pos)
    usr_input = gets.chomp
    break unless usr_input.empty?
  end
  usr_input
end

def put_prompt(pos)
  puts "=> Enter a #{pos}:"
end

def create_madlib(words)
  sentence_1 = "I wonder what would happen if a #{words['adjective']} #{words["noun"]} were to #{words["adverb"]} #{words["verb"]} next to a #{words["second_noun"]}."
  sentence_2 = "The #{words["adjective"]} #{words["noun"]} #{words["verb"]}s #{words["adverb"]} over the lazy #{words['second_noun']}."
  sentence_3 = "The #{words["noun"]} #{words["adverb"]} #{words["verb"]}s up #{words["adjective"]} Joe's #{words['second_noun']}."
  [sentence_1, sentence_2, sentence_3].sample
end

def output_madlib(madlib)
  sleep 0.2
  puts 'Creating madlib'
  sleep 0.5
  puts madlib
end

initialize_a_madlib
