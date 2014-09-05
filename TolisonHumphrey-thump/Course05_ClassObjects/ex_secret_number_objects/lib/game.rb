# Game
#	This class holds most of the game logic and should:
#		Welcome players and inform them of the game rules.
#		Initialize the Player class.
# 		Initialize the Secret Number class.
# 		Prompt the user to choose a number, verify if the user guessed correctly.
# 		If the user guesses incorrectly let them know if they were too high or too low.
#		Monitor how many guesses the player has before the game is over.
#
# In creating your game, make sure it has arrays, hashes and all functionality is wrapped in methods.
# Add helpful comments to your code to document what each section does.

require_relative 'person'
require_relative 'secret_number'

class Game
	attr_accessor :session, :gold_num
	
	def initialize(session)
		@session = Person.new
		@gold_num = SecretNumber.new(number)
	end

	puts "Hi Playa #{player_name}!"
	puts "Game Rules: You have three tries to guess a number between 1 and 10. Lets Begin! \n \n"

	tries = 3
	guess = 0

	while (guess != sheen_number && tries != 0)
		puts "What number am I thinking of? \n"
		guess = gets.to_i

		if guess == sheen_number
			puts "CONGRATS YOU WIN #{sheen_number} CRISPY TACOS!"
		elsif guess < sheen_number
			puts "Your number is too low! \n"
		elsif guess > sheen_number
			puts "Your number is too high! \n"
		end

		tries = tries-1

		if guess != sheen_number
			puts "You have #{tries} more guess(es) before the game is terminated \n Guess another number!"
		end
	end 

	if guess != sheen_number
		puts "YOU LOSE : _("
	end
end
