#Apartment class.
class Apartment
  attr_accessor :name, :apt_sqft, :apt_bedrooms, :apt_bathrooms

  def initialize (name, apt_sqft, apt_bedrooms, apt_bathrooms)
  	@name = name
  	@apt_sqft = apt_sqft
  	@apt_bedrooms = apt_bedrooms
  	@apt_bathrooms = apt_bathrooms
  end
end

apartment = Apartment.new("red arrow","B","C","D")
puts apartment


# class Apartment
#   attr_accessor :name, :sqft, :num_bedrooms, :num_bathrooms, :renters

#   def initialize(name, sqft, num_bedrooms, num_bathrooms)
#     @name = name
#     @sqft = sqft
#     @num_bedrooms = num_bedrooms
#     @num_bathrooms = num_bathrooms

#     @renters = []
#     @rent = 5000
#   end

#   def occupied?
#     @renters.any?
#   end

#   def to_s
#     "#{@name} has #{sqft} sqft and #{@renters.count} renters."
#   end
# end