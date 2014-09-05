#Program to echo any input sent by the user unless it is written in upcase.

# Logic flow:

# - Grandma can't hear unless user input is entered in upcase.
# 	- If grandma can't hear, she repsonds "NO, NOT SINCE 1938!"
# 		- She should shout a random year each time between 1930 and 1950.
# 	- If she can hear, Grandma will respond with "Oh, that's nice."
# - When the user wants to leave, the user must enter "BYE" three consecutive times to end the conversation.





puts "Grandma:  Hello, Sonny.  How are you doing?"

	response = gets.chomp
	bye_counter = 0

	while bye_counter < 3 do
		
	   if response == "BYE"
			bye_counter = bye_counter + 1
			puts bye_counter.to_s + "first conditional"
	   elsif response == response.chomp.upcase
			puts "NO, NOT SINCE 19" + (30..50).to_a.sample.to_s + "!"
			bye_counter = 0		
			puts bye_counter.to_s + "second conditional"
		else
		puts "HUH?  SPEAK UP, SONNY!"
		bye_counter = 0
		end
		response = gets.chomp	
		puts bye_counter
	end
		
		puts "Alright, dear.  See you later."

