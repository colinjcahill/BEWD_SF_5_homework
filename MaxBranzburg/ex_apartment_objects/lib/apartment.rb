#Apartment Class
class Apartment

	attr_accessor :name, :apt_sqft, :apt_bedrooms, :apt_bathrooms, :renter, :rent

	def initialize(name, apt_sqft, apt_bedrooms, apt_bathrooms)
	    @name = name
	    @apt_sqft = apt_sqft
	    @apt_bedrooms = apt_bedrooms
	    @apt_bathrooms = apt_bathrooms
  	end

  	def to_s 
		"\nUnit:\t#{@name}\nSQFT:\t#{@apt_sqft}\nBed:\t#{apt_bedrooms}\nBath:\t#{apt_bathrooms}"
	end

end