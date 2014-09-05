###############################################################################
#
# Back-End Web Development - Homework #1
#
# Secret Number is a game you will build in two parts.
# The purpose of the game is to have players guess a secret number from 1-10.
#
# Read the instructions below.
# This exercise will test your knowledge of Variables and Conditionals.
#
###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret number game. 
# In this game players have three tries to guess a secret number between 1 and 10. 
#
# Here are some guidelines to building your game:
#
#	Intros
# 	DONE -	Welcome the player to your game. Let them know who created the game. 
#	  -	Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
#	  -	Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10 
#		and that they only have 3 tries to do so.
#
#	Functionality: 
#	 -	Hard code the secret number. Make it a random number between 1 and 10.
#	 - 	Ask the user for their guess.
#	 -	Verify if they were correct. Ifctly they win the game they should be congratulate the player guesses corred and the game should end.
#	 -	If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
#	 - 	Don't forget to let your players know how many guesses they have left. Your game should say something like
#		  "You have X many guesses before the game is over enter a another number"
#	 -	If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
#
# Make sure to add helpful comments to your code to document what each section does.
# 
# Remember to cast input from the Player into the appropriate data type.
#
###############################################################################


secret_number = 8

puts "Welcome to this game.  Matt Flannery created it!"
puts "Can I have your name?"
player_name = gets 
print  "Hi " + player_name 
puts "Now you must guess a number between 1 and 10 and you will only have three tries!"


number_tries = 0

while true
	puts "What is your guess?"
	player_number = gets.to_i

	if !(player_number > 0 && player_number < 11) 
		puts "Thats not a number between 1 and 10!"
	elsif(player_number == secret_number)
		puts "Congratulations you got it!"
		break
	else
		if player_number < secret_number
			puts "That is too low!"
		else
			puts "That is too high!"
		end
	end
	number_tries+=1
	if number_tries >=3 
		puts "Sorry you lose!"
		break
	end 
end 












