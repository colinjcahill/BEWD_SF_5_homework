class Apartment
	attr_accessor :name, :sqft, :num_bedrooms, :num_bathrooms, :renters

	def initialize(name, sqft, num_bedrooms, num_bathrooms)
		@name = name
		@sqft = sqft
		@num_bedrooms = num_bedrooms
		@num_bathrooms = num_bathrooms

		@renters = []
		@rent = 5000
	end

	def occupied?
		@renters.any?
	end

	def to_s
		"#{@name} has #{sqft} sqft and #{@renters.count} renters."
	end
end

# listing = Apar
# apartment = Apartment.new("Great Apartment")
# apartment.location = "SF"
# puts apartment.name
# puts 

# other_apartment = Apartment.new("Terrible Apartment")

# puts other_apartment.name
# puts 