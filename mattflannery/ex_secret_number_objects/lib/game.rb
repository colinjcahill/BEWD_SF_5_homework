require 'lib/person'
require 'lib/secret_number'

class Game


	attr_accessor :secret_number, :current_player, :secret_number

	def initialize()
		puts "Welcome to the Secret Number Game!"

		puts "...and what is your name?"
		player_name = gets 

		@current_player = Person.new ( player_name )

		print  "Hi " + @current_player.name

		@secret_number = SecretNumber.new()

		play

	end
	

	def play

		puts "Now you must guess a number between 1 and 10 and you will only have three tries!"

		number_tries = 0

		while true
			puts "What is your guess?"
			player_number = gets.to_i

			if !(player_number > 0 && player_number < 11) 
				puts "Thats not a number between 1 and 10!"
			elsif(player_number == @secret_number.number)
				puts "Congratulations you got it!"
				break
			else
				if player_number < @secret_number.number
					puts "That is too low!"
				else
					puts "That is too high!"
				end
			end

			number_tries+=1

			if number_tries >=3 
				puts "Sorry you lose!"
				break
			end
		end 
	end
end 
