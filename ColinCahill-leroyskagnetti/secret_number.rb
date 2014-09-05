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

secret_number = 6


puts "Welcome to my game.\nThis game was created by Colin Cahill."
puts "Player, what is your name?"
	name = gets.chomp
puts "Hi, #{name.capitalize}!"
sleep 1
puts "To play this game, you will guess a number between 1 and 10.\nYou may only take three guesses as to the correct number."

sleep 1

guess_count =0
guess = nil

while guess_count < 3 && guess != secret_number do		
	puts "\nEnter your guess:"
	guess = gets.chomp.to_i

	if guess == secret_number
		puts "My stars!  You have guessed the secret number!"
		elsif ((1..10) === guess) == false
			puts "Please enter a number between 1 and 10.".center(100, "*")
		elsif guess < secret_number
			puts "Hmm, I think that is a little low..."
			guess_count = guess_count + 1
			sleep 1
			puts "You have #{3 - guess_count} guesses remaining."
		elsif guess > secret_number
			puts "Hmm, I think that is a little high..."
			guess_count = guess_count + 1
			sleep 1
			puts "You have #{3 - guess_count} guesses remaining."
	end
end
	
	if guess == secret_number
	exit
	else
		sleep 2
		print "I'm sorry, #{name}, you have failed to guess the secret number within 3 guesses.\n
		The actual secret number was...."
		sleep 2
		print "#{secret_number}!\n"

	end





	


	# while (counter <=3 || get_input !=6) do
	# 	puts "When you are ready, please submit your guess:"

	# 	guess = gets.chomp

	# 	"Hmm, #{get_input.to_s}!"

	# 		if guess = secret_number
	# 			sleep 1
	# 			puts "My stars!  That is the secret number!  Are you a psychic medium?"
	# 		elsif guess < secret_number
	# 				sleep 1
	# 				puts "I believe that may be a little low..."
	# 		elsif guess > secret_number
	# 				sleep 1
	# 				puts "I believe that may be a little high..."
	# 		end



