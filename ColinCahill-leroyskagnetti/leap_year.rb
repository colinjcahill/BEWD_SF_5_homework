# Write a program that asks for a starting year and an ending year and then puts all the leap years between them (and including them, if they are also leap years). Leap years are years divisible by 4 (like 1984 and 2004). However, years divisible by 100 are not leap years (such as 1800 and 1900) unless they are also divisible by 400 (such as 1600 and 2000, which were in fact leap years). What a mess!

puts "Beginning year?"
 x = gets.chomp
 puts "Ending year?"
 y = gets.chomp

(x..y).each do |num|
	  	if num % 4 == 0
	  		puts num
		end
	end			
