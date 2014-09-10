require 'lib/person'
require 'lib/secret_number'

class Game
# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly
	def initialize
		@tries = 3
		@secret_number = SecretNumber.new.secret_number
		game_loop
		lose_notifier
	end

	def guess_count_notifier(tries)
		if tries > 1
		"You have #{tries} guesses before the game is over. What's your guess?"
		else
		"You have #{tries} guess before the game is over. What's your guess?"
		end
	end

	def guess_evaluator(guess)
			if guess == @secret_number
				puts "Congratulations, you won the game!"
				true
			elsif guess > @secret_number
				puts "Your guess is too high!"
				false
			elsif guess < @secret_number
				puts "Your guess is too low!"
				false
			end
	end


	def game_loop
		while @tries > 0 do
			puts guess_count_notifier(@tries)
			@guess = gets.chomp.to_i
			if guess_evaluator(@guess) == true
				break
			end
			@tries -= 1
			puts
		end
	end

	def lose_notifier
		if @tries == 0
		puts "You lost the game! The number was #{@secret_number}."
		end
	end


end
