class SecretNumber
# this class will generate our secret number for us

	attr_accessor :number

	def initialize ()
		number_array = Array.new(10) {|i| i+1 }
		@number = number_array.sample
	end
end 