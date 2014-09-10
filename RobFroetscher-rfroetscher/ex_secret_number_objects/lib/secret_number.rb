class SecretNumber
# this class will generate our secret number for us
attr_accessor :secret_number
	def initialize
		@secret_number = 1 + rand(10)
	end
end
