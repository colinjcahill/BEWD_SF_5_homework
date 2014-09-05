class SecretNumber
	attr_accessor :numbers

	def initialize
		@numbers = []
	end

	def rand_number
		0.upto 100 do |rand|
			rand = 1 + rand(10)
			@numbers << rand
		end
		secret_num = @numbers[rand(100)]
	end
end