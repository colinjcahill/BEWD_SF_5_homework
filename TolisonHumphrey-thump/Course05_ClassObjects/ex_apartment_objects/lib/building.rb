#Building Class
class Building
	attr_accessor :building_name, :building_address

	def initialize(building_name, building_address)
		@building_name = building_name
		@building_address = building_address
	end

	def apartments
		@apartments = Array.new	
	end

	def view_apartments
		@apartments.each do |apartment|
			puts "-------"
		end
	end

end
