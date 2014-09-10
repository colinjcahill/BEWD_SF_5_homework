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

def guess_term(remaining_guesses)			# Ensure agreement of # of guesses remaining and language
	if remaining_guesses == 1
		return "guess"
	else
		return "guesses"
	end
end

puts "Welcome to Secret Number!"				# Introduce game
puts "Secret Number was created by Max Branzburg"
puts "What is your name?"

name = gets.chomp								# Identify player name

puts "Hi, #{name}!"
puts
puts "Rules:\n  1.\tGuess a number between 1 and 10 (inclusive).\n  2.\tYou will have 3 guesses."

secret_num = 1 + rand(10)						# Set secret number as random between 1 and 10 (inclusive)

puts
puts "What is your first guess?"
guess = 0
remaining_guesses = 2

while guess != secret_num && remaining_guesses >= 0 do 		# Initiate loop while player has remaining guesses and hasn't guessed correctly
	guess = gets.chomp.to_i
	if
		guess > secret_num
		if remaining_guesses > 0
			puts "Too high, you have " + remaining_guesses.to_s + " #{guess_term(remaining_guesses)} left."
			remaining_guesses = remaining_guesses - 1
		else
			puts "Still too high.  No more guesses left!"
			remaining_guesses = remaining_guesses - 1
		end
	elsif
		guess < secret_num
		if remaining_guesses > 0
			puts "Too low, you have " + remaining_guesses.to_s + " #{guess_term(remaining_guesses)} left."
			remaining_guesses = remaining_guesses - 1
		else
			puts "Still too low.  No more guesses left!"
			remaining_guesses = remaining_guesses - 1
		end	
	else
		puts "Correct!"
	end
end

puts
puts "Game Over!"								# End game
