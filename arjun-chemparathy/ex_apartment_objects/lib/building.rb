#Building Class
class Building
	attr_accessor :building_name, :building_address, :apartments

	def initialize (building_name, building_address)
		@building_name = building_name
		@building_address = building_address

		@apt_count = 0
		@apartments = []
	end
end
