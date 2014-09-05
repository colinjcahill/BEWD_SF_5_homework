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
# 	-	Welcome the player to your game. Let them know who created the game. 
#	  -	Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
#	  -	Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10 
#		and that they only have 3 tries to do so.
#
#	Functionality: 
#	 -	Hard code the secret number. Make it a random number between 1 and 10.
#	 - 	Ask the user for their guess.
#	 -	Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.
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

#Introduction: 
puts 'Welcome to Secret Number! This game was created by T Humphrey.'
puts 'Hi Buddy! What is your name?'
player_name = gets.chomp
puts "Hi Playa #{player_name}!"
puts "Game Rules: You have three tries to guess a number between 1 and 10. Lets Begin! \n \n"

sheen_number = rand(1..10).to_i
puts sheen_number
tries = 3
guess = 0

while (guess != sheen_number && tries != 0)
	puts "What number am I thinking of? \n"
	guess = gets.to_i

	if guess == sheen_number
		puts "CONGRATS YOU WIN #{sheen_number} CRISPY TACOS!"
	elsif guess < sheen_number
		puts "Your number is too low! \n"
	elsif guess > sheen_number
		puts "Your number is too high! \n"
	end

	tries = tries-1

	if guess != sheen_number
		puts "You have #{tries} more guess(es) before the game is terminated \n Guess another number!"
	end
end 

if guess != sheen_number
	puts "YOU LOSE : _("
end


