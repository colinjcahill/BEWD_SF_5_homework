class Apartment
	attr_reader :name , :sqft, :num_bedrooms, :num_bathrooms, :renters

	def initialize(name, sqft, num_bedrooms, num_bathrooms)
		@name = name
		@sqft = sqft
		@num_bathrooms = num_bathrooms
		@num_bedrooms = num_bedrooms

		@renters = []
		@rent = 5000
	end

	def occupied?
		renters.any?
	end

	def to_s
		"#{@name} has #{sqft} sqft and #{renters.count} renters."
	end

end

apartment = Apartment.new("Great Apartment!", 1200, 5, 14)
puts apartment