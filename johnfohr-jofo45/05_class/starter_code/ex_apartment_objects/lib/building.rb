#Building Class
class Building
	attr_accessor :building_name, :building_address, :apartments, :number_units

	def initialize(building_name, building_address)
			@building_name = building_name
			@building_address  = building_address

			@apartments = []
			@number_units = 0
	end

	def to_s
	end


	# def apartments unit_info
	#  apartments[unit]=unit_info		
	# end

end

# puts building.building_name
# puts building.building_address
# puts building.apartments
# puts building.number_units


#puts building
