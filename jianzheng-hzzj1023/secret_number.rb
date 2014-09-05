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

puts "Welcome to Secret Number, a game created by Jian Zheng"

puts "Please enter your name"

username = gets.strip

puts "\n"

puts "Hi #{username}!"

puts "Here are the rules for the Secret Number game:"

puts "You have three chances to guess a number between 1 and 10"

puts "You will get hint everytime you guess a number so you can adjust your next guess"

puts "You win the game if you guess the number right within 3 guesses and you lose if you don't"

puts "\n"
puts "Plesae enter your first guess:"

user_guess = gets.strip.to_i

secret_number = rand(10)+1

2.downto(0) do |i|
if user_guess == secret_number 
	puts "Congratulations! You won!"
	break
else
	if i > 0
		if user_guess > secret_number
			number_difference = "high"
		else number_difference = "low"
		end
		puts "The number you guessed is too #{number_difference}. You have #{i} guesses before the game is over enter another number:"
		user_guess = gets.strip.to_i
	else
	puts "You lost! The secret_number is #{secret_number}"
	end
end
end




