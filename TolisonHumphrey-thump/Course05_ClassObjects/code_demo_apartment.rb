#Explaining classes, objects, attr_accessor & load paths. 
#TIME: 30 min

#Need for an apartment listing 


class Apartment
	attr_accessor :name, :sqft, :num_bedrooms, :num_baths)
	def initialize (name, sqft, num_bedrooms, num_baths, renters)
		@name = name
		@sqft = sqft
		@num_bedrooms = num_bedrooms
		@num_baths = num_baths
		@renters = renters

		@renters = []
		@rent = 0
	end

	def occupied?
		@renters.any?
	end
#Overriding junk to provide meaningful output- Overrides the string method
	def to_s
		"#{@name} has #{sqft} and #{@renters.count} renters."
	end 
end

class ApartmentListing
	attr_accessor :apartments

	def initialize 
		@apartments = []
	end

	def apartment_availability
		apartments.each do |apartment|
			if apartment.occupied?
				puts "This apartment is not for rent"
			else
				puts apartment
				puts "This aparment is for rent, ask your broker for more details."
			end
		end
	end
end

listing = Apartment.new
listing.apartments << Apartment.new ("Great Apartment!", 1200, 5, 14, [])
