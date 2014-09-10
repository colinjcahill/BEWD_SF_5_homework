class User
	attr_accessor :name

	def initialize
		puts "Please enter your name:"
		@name = gets.chomp
			# while @name =~ /!|?/ do
			# 	puts "Please enter a valid name:"
			# 	@name  = gets.chomp
			# end
	end
end