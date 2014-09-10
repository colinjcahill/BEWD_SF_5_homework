#Explaining classes, objects, attr_accessor & load paths. 
#TIME: 30 min


class Apartment
  attr_accessor :name, :sqft, :bedrooms, :bathrooms# or attr_reader (can't change the attr)
  
  def initialize(name, sqft, bedrooms, bathrooms)
    @name = name
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms

    @renters = []
    @rent = 0
  end

  def occupied?
    renters.any?
  end

  def  to_s
    "#{@name} has #{sqft} sqft and #{@renters.count} renters."
end

# class ApartmentListing
#   attr_accessor :apartments

#   def initialize
#     @apartments = []
#   end

#   def apartment_availability
#     apartments.each do |apartment|
#       if apartments.occupied?
#         puts "This apartment is not for rent"
#       else
#         puts apartment
#         puts "This apartment is available, contact your broker for details"
#       end
#     end
#   end
# end


# listing= Array.new
# listing.apartments << Apartment.new ("Great Apartment!", 1200, 5, 14)
# puts apartment.get_name
