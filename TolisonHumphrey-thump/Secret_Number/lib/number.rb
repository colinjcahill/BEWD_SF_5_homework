#Generate a secret number from plucking a random number from an array spanning 1 through 10. 

class Number
	attr_accessor :winning_number

	def initialize
		@winning_number = Array.new
		@winning_number = [*1..10]
		@winning_number = @winning_number.sample
	end 
end
