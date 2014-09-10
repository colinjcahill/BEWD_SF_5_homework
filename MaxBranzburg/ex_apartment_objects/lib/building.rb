#Building Class
class Building

	attr_accessor :building_name, :building_address, :apartments
	
	def initialize(building_name, building_address)
	    @building_name = building_name
	    @building_address = building_address
	    @apartments = []
  	end 

  	def view_apartments
  		puts "#{@building_name} @ #{@building_address} inlcudes:"
		apartments.each do |apartment|
			if apartment.rent != nil
				puts "Unit #{apartment.name}: #{apartment.apt_sqft} sqft || #{apartment.apt_bedrooms} bed | #{apartment.apt_bathrooms} bath | Rented for $#{apartment.rent}/month"
			else
				puts "Unit #{apartment.name}: #{apartment.apt_sqft} sqft || #{apartment.apt_bedrooms} bed | #{apartment.apt_bathrooms} bath | Available for rent!"
			end
  		end
  	end
end
