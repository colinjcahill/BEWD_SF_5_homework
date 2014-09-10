require 'lib/person'
require 'lib/secret_number'

class Game

	def initialize (player)

		@player = player
		@secret_number = SecretNumber.new
	end

	def greeting

		puts "\n"
		puts "Hi #{@player.name}!"
		puts "Here are the rules for the Secret Number game:"
		puts "You have three chances to guess a number between 1 and 10"
		puts "You will get hint everytime you guess a number so you can adjust your next guess"
		puts "You win the game if you guess the number right within 3 guesses and you lose if you don't"
		puts "\n"
		

	end



	def play
		puts "Plesae enter your first guess:"

		user_guess = gets.strip.to_i
	
		2.downto(0) do |i|
		if user_guess == @secret_number.value 
			puts "Congratulations! You won!"
			break
		else
			if i > 0
				if user_guess > @secret_number.value
					number_difference = "high"
				else number_difference = "low"
				end
				puts "The number you guessed is too #{number_difference}. You have #{i} guesses before the game is over enter another number:"
				user_guess = gets.strip.to_i
			else
			puts "You lost! The secret_number is #{@secret_number.value}"
			end
		end
		end

	end



# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly
end
