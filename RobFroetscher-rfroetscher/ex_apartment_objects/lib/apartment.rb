#Apartment class.
class Apartment
	attr_accessor :name, :apt_sqft, :apt_bedrooms, :apt_bathrooms, :renter, :rent

	def initialize(name, apt_sqft, apt_bedrooms, apt_bathrooms)
		@name = name
		@apt_sqft = apt_sqft
		@apt_bedrooms = apt_bedrooms
		@apt_bathrooms = apt_bathrooms

		@renter = []
		@rent = 0
	end

	def to_s
		"Apartment #{@name} is #{@apt_sqft} sqft, has #{@apt_bedrooms} bedrooms and #{@apt_bathrooms} bathrooms"
	end

	def occupants 
		@renter
	end
end
