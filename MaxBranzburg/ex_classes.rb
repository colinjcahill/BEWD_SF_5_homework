class Apartment
	attr_accessor :name, :sqft, :num_bedrooms, :num_bathrooms, :renters

	def initialize(name, sqft, num_bedrooms, num_bathrooms, renters)
		@name = name
		@sqft = sqft
		@num_bedrooms = num_bedrooms
		@num_bathrooms = num_bathrooms
		
		@renters = []
		@rent = 0
	end

	def occupied?
		renters.any?
	end

	def to_s
		"#{@name} has #{sqft} sqft and #{@renters.count} renters."
	end
end

class ApartmentListing
	attr_accessor :apartments

	def initialize
		@apartments = []
	end

	def available_apartments
		apartments.each do |apartment|
			if apartment.occupied?
				puts "This apartment is not for rent"
			else
				puts apartment
				puts "This apartment is for rent, ask your broker for more details."
			end
		end
	end
end

listing = ApartmentListing.new
listing.apartments << Apartment.new("Great apartment!", 1200, 5, 14, [])
listing.apartments << Apartment.new("Terrible apartment!", 100, 3, 2, [])

listing.available_apartments