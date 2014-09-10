class Person
	attr_accessor :name

	def initialize
		puts "Please enter your name"
		@name = gets.strip
	end
# this class will likely be simple, and just remember its name
end
