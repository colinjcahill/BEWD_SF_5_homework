require_relative 'player'
require_relative 'number'
require 'pry'

class Game
	attr_reader :player, :winning_number, :guess, :tries

	def initialize(player)
		@player = Player.new
		@winning_number = Number.new.winning_number
		@tries = 3
		@guess = guess
	end

	def start
		puts "#{@winning_number}"
	
		while (guess != @winning_number && tries != 0)
			puts "What number am I thinking of?"
			guess = gets.to_i
			@tries = @tries - 1

			if guess == @winning_number
				puts "CONGRATS YOU WIN #{winning_number} CRISPY TACOS!"
			elsif guess < @winning_number
				puts "Your number is too low! \n"
			elsif guess > @winning_number
				puts "Your number is too high! \n"
			end

			if guess != @winning_number
				puts "You have #{tries} more guess(es) before the game is terminated \n Guess another number!"
			end
		end 

		if guess != @winning_number
			puts "YOU LOSE : _("
		end
	end
end