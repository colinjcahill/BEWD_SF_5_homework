class Person
# this class will likely be simple, and just remember its name
	attr_reader :name
	def initialize(name)
		@name = name
	end
	def to_s
		@name
	end
end
