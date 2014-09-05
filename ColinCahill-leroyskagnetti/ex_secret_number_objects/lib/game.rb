require 'lib/person'
require 'lib/secret_number'

class Game
# this class will be complex
	attr_accessor :player, :secret_number, :welcome_message

	def initialize
		@player = Player.new	
		@secret = SecretNumber.new
		self.welcome_message
	end

	def welcome_message
		puts "Welcome to a new instance of The Secret Number!\n  The rules are as follows:\n\n- You must guess a number between 1 and 10.\n- You have three chances to guess the number correctly.  The computer will give you hints on whether your guess is too high or too low.\n- If you are unable to guess the number within three chances, you will lose the game!"
	end

	def guess_loop

		@guess_count = 0
		@guess = nil
		while @guess_count < 3 && @guess != @secret.secret_number do
			puts "What is your guess?"
			@guess = gets.chomp.to_i
			if @guess == @secret.secret_number 
			self.guess_winner
			elsif ((1..10) === @guess) == false
			puts "Please enter a number between 1 and 10.".center(100, "*")
			elsif @guess.to_i < @secret.secret_number
			self.guess_low
			elsif @guess.to_i > @secret.secret_number
			self.guess_high
			end
		end
		sleep 2
		puts "#{self.player.name}, you have failed to guess the secret number in three guesses!"
		sleep 1
		print "The actual secret number was..." 
		sleep 1
		print "#{@secret.secret_number}!\n"
		puts "Better luck next time!"
	end

	def guess_winner
		puts "My stars!  You have guessed the secret number!"
		puts "Congratulations, #{self.player.name}you have won the game!"
	end

	def guess_low
		puts "Hmm, I think that is a little low..."
				@guess_count = @guess_count + 1
				sleep 1
				puts "Guesses remaining: #{3 - @guess_count}"
	end

	def guess_high
		puts "Hmm, I think that is a little high..."
				@guess_count = @guess_count + 1
				sleep 1
				puts "Guesses remaining: #{3 - @guess_count}"			
	end

end
		
	

# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly
