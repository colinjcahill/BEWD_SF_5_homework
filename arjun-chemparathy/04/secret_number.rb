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

#Intro and Rules
puts "Welcome to the Secret Number game!"
puts "This game was designed by Arjun Chemparathy"
puts "Before we get started, tell me your name"
player_name = gets.chomp
puts "Hello #{player_name}! Nice to meet you! Let me tell you the rules of the game."
puts "The goal is for you to guess the Secret Number which which will be between 1 to 10."
puts "You will have 3 attempts to guess the number."
puts "I will provide some clues to help you out :)"


def play
	secret_number = rand(0..10)
	puts secret_number
	puts "what is your guess?"
	attempt =0
	until attempt ==3
		attempt = attempt + 1
		guess = gets.chomp
		if guess == secret_number.to_s
			puts "Congratulations! You guessed the Secret Number!"
				"Thanks for playing rockstar! Have a good day!"
		elsif guess > 10.to_s
			puts "not a valid guess! try again. You just lost a guess!"
		elsif guess < secret_number.to_s
			puts "Looks like you missed it. Try a higher number!"
		else guess > secret_number.to_s && guess <= 10.to_s
			puts "Looks like you missed it. Try a smaller number!"
		end
	end
	# puts "You failed. The correct number was #{secret_number}"
end


play
puts "Do you want to play again?"
response = gets.chomp
if response == "Y" || response == "y"
	play
else
	puts "Thanks for playing!"
end






	

