require 'lib/person'
require 'lib/secret_number'

class Game
# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly

	attr_accessor :player, :sec_num, :guess, :remaining_guesses

	def initialize
		@player = Person.new("Max").name
		@sec_num = SecretNumber.new.rand_number
		@guess = guess
		@remaining_guesses = remaining_guesses
	end


	def check_num
		puts "What do you think the secret number is?"
		@remaining_guesses = 10
		while @guess != @sec_num && @remaining_guesses >= 0 do
			@guess = gets.chomp.to_i
			if @guess > @sec_num
				if @remaining_guesses > 0
					puts "Too high, you have #{remaining_guesses.to_s} guess(es) left."
					@remaining_guesses = @remaining_guesses - 1
				else
					puts "Still too high.  No more guesses left!"
					@remaining_guesses = @remaining_guesses - 1
				end
			elsif
				@guess < @sec_num
				if @remaining_guesses > 0
					puts "Too low, you have #{remaining_guesses.to_s} guess(es) left."
					@remaining_guesses = @remaining_guesses - 1
				else
					puts "Still too low.  No more guesses left!"
					@remaining_guesses = @remaining_guesses - 1
				end	
			else
				puts "Correct!"
			end
		end
	end
end