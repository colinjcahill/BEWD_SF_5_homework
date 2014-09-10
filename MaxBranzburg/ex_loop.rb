# Write a program that prints 99 bottles of beer on the wall.
# The song starts with 
# 99 bottles of beer on the wall
# 99 bottles of beer!
# You take one down and pass it around,
# 98 bottles of beer on the wall!
#
# And ends with 
# 1 bottle of beer on the wall
# 1 bottle of beer!
# You take one down and pass it around,
# No more bottles of beer on the wall :-(

# Added functionality to start at any # of bottles of beer

def beer_song total_bottles
	total_bottles.downto 1 do |bottle_number|
		if bottle_number > 1
			puts bottle_number.to_s + " bottles of beer on the wall"
			puts bottle_number.to_s + " bottles of beer!"
			puts "You take one down and pass it around,"
			puts (bottle_number - 1).to_s + " bottles of beer on the wall!"
			puts
		else
			puts bottle_number.to_s + " bottle of beer on the wall"
			puts bottle_number.to_s + " bottle of beer!"
			puts "You take one down and pass it around,"
			puts "No more bottles of beer on the wall :-("
		end
	end
end

puts "How many bottles of beer?"
answer = gets.chomp.to_i
beer_song answer