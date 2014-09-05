class SecretNumber
	attr_accessor :secret_number

	def initialize
		@secret_number = (1..10).to_a.sample
	end
end