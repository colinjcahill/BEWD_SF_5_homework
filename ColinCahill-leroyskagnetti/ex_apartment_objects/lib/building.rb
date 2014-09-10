#Building Class
class Building
	attr_accessor :building_name, :building_address, :apartments

	def initialize(building_name, building_address)
		@building_name = building_name
		@building_address = building_address
		@apartments = []
	end

	def view_apartments
		puts "******************Highrise Luxury Apartment Listing****************** \n"
		@apartments.each do |apt|
			puts apt.name
			puts "sqft: #{apt.apt_sqft}\t Bedrooms: #{apt.apt_bedrooms}\t Bathrooms: #{apt.apt_bathrooms}\n"
			if apt.renter.nil?
				puts "This apartment is vacant."
			else puts "This apartment is rented."
			end
		
		end
	end
end
