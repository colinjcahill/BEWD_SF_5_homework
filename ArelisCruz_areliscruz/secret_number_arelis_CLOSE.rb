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



def greet_player
  puts "Welcome to Secret NUMBERS! Created by Arelis"
  puts "What is your name?"
  name = gets.chomp
  puts "Welcome #{name.capitalize}"
  get_number(name)
  
end

def get_number(name)
  count=0
  puts "Guess a number from 1-10. You have 3 guesses before the game is over"
  puts "what is your first guess?"
  number = gets.chomp.to_i
  count+=1
  game_loop(number,name)
end

# def game_conditional(number,name)

#   if number == secret_number
#     puts "Great JOB, #{name}! The Secret Nunber is #{secret_number}"
#   else number != secret_number
#   end
#   number_tries = 0
#   number_tries = number_tries + 1
#   while number_tries <= 3
#     puts "Nope, try again!"
    
#     break if number_tries >= 3

#elsif number = secret_number
        #print "Great JOB, #{name}! The Secret Nunber is #{secret_number}"

#   end
# end


def game_loop(number,name, count=1)
  secret_number = 4
    if number == secret_number
      puts "Awesome JOB, correct number"
    elsif count >= 3
      puts "Sorry no more tries"
    elsif number > secret_number && count <= 3 
      puts "That's too high. Guess again:"
      number = gets.to_i
      count +=1 
      game_loop(number, name, count)
    else number < secret_number && count <=3
      puts "That's too low. Guess agan: "
      count +=1 
      game_loop(number, name, count)
    end
 end


greet_player
#greet player 

#communicate the rules


