class SecretNumber
	attr_accessor :player_name, :sheen_number

	def initialize (player_name, sheen_number, win_status)
		@player_name = player_name
		@sheen_number = sheen_number
		@guess = guess
		@tries = tries
	end

	def hilo_check
		sheen_number = rand(1..10).to_i
		puts sheen_number
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

		if guess != sheen_number
			puts "YOU LOSE : _("
		end
	end

end