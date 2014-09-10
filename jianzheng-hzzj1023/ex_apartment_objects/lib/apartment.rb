#Apartment class.
class Apartment
	attr_accessor :name, :sqft, :num_bedrooms, :num_bathrooms, :renter, :rent

	def initialize(name, sqft, num_bedrooms, num_bathrooms)
		@name = name
		@sqft = sqft
		@num_bedrooms = num_bedrooms
		@num_bathrooms = num_bathrooms

		@rent = 0
	end

	def to_s
			"#{@name} has #{@sqft} sqft with #{@num_bedrooms} bedrooms and #{@num_bathrooms} bathrooms"
		end


end
