class Apartment
	attr_accessor :name, :sqft, :renters

	def initialize(name, sqft)
		@name
		@sqft

		@renters=[]
		@rent=0
	end

	def occupied?
		renters.any?
	end

	def to_s
		"#{@name} has #{@sqft} sqft and #{renters.count} renters."
	end
end

