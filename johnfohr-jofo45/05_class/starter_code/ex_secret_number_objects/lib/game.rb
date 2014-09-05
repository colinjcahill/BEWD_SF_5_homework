require 'lib/person'
require 'lib/secret_number'

class Game
		attr_accessor :name

 def initialize(name)
  	@name = name
  end

  puts "Welcome #{name} to a new fun game!"



 puts "I am thinking of a number between 1 and 10.   Please tell me your guess and I'll tell you if you are correct.  (If you are wrong I'll even give you a hint."
 secret_number_guess = gets.strip.to_i
# confirms that we received an appropriate guess.

  # if unit_rented == "y"
  #   apartment.renter = create_renter
  #   puts "Renter added successfully"
 	# while secret_number_guess == false
 	# 	puts "That is not a good secret number, please tell me an integer."
 	# 	secret_number=gets.strip.to_i
 	# 	if 

 	# else
 	# 	puts "Thank you for telling me that number.  It will be our secret."
 	# end

# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly




end


#	This class holds most of the game logic and should:
#		Welcome players and inform them of the game rules.
#		Initialize the Player class.
# 		Initialize the Secret Number class.
# 		Prompt the user to choose a number, verify if the user guessed correctly.
# 		If the user guesses incorrectly let them know if they were too high or too low.
#		Monitor how many guesses the player has before the game is over.



