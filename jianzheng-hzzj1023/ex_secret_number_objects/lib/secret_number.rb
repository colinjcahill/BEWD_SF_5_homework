class SecretNumber
# this class will generate our secret number for us

attr_accessor :value

def initialize 

	number_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

	@value = number_array.sample


end

end
