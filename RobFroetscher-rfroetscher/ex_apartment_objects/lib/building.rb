#Building Class
class Building
	attr_accessor :building_name, :building_address, :apartments

	def initialize(building_name, building_address)
		@building_name = building_name
		@building_address = building_address

		@apartments = []
	end

	def view_apartments
		@apartments.each do |unit|
			puts unit
			puts unit.occupants
		end
	end

	def to_s
		"Building #{@building_name} has #{@apartments.count} apartments and is located at #{@building_address}"
	end
end
