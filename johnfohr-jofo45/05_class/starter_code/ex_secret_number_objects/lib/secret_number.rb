class SecretNumber
# this class will generate our secret number for us

	attr_accessor :guess

		def initialize(guess)
			@guess = guess
		end

	secretnumber = rand(9)+1

end

