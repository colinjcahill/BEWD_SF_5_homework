# Step 1: Working with Arrays and Hashes

# Copy your solution from ex_teddit_conditional.rb in 02_Variables_Conditionals
# Create an empty stories array. This will be used to hold all stories we capture.
# Users enter the story as they do now, but it gets put in a hash instead. 
# Update any reference to the story (upvotes, category and title) 
# Your story hash should look like the one below: 
# { title: "Monkeys thank mayor for flounder tooth necklace", category: "Teeth", upvotes: 1 }
# Add the hash to an array called stories and print "Story: Monkeys thank mayor for flounder tooth necklace, Category: (Teeth), Current Upvotes: 1"
# Using the stories array 
# Test your cat, bacon, and food upvote conditional logic.
#
# Step 2: Adding Loops 
# Use a loop, so that your program continues to ask a user for stories until they chose to quit. ("Would you like to add another story? Enter 'y' or 'n'")
# Once the user is finished with entering their stories, use .each to print each story in the stories array. 
#
#


stories = Array.new 

def get_input
  #Get input from the user.
  input = gets.chomp
end

def calculate_upvotes(story, category)
	# Write code so that:
		# If the Story is about cats multiply the upvotes by 5
		# If the Story is about bacon multiply the upvotes by 8
		# If the Story is about Food it gets 3 times the upvotes.
		upvotes ||= 1

		if category.downcase.to_s == "cats"
			upvotes = upvotes * 5
		
		
		elsif category.downcase.to_s == "bacon"
			upvotes = upvotes * 8
		

		elsif category.downcase.to_s == "food"
			upvotes = upvotes * 3
		
		else upvotes 

		end

	#For example:
	# "Cats frolic despite tuna shortage" should give you 5 times the upvotes!
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"



while true
	puts "Please enter a News story:"
	story = get_input
	if story.downcase.to_s == "exit"
		break
	end
	puts "Please give it a category:"
	category = get_input
	if category.downcase.to_s == "exit"
		break
	end
	upvotes = calculate_upvotes(story, category)
	headline = { titlekey: story, categorykey: category, upvoteskey: upvotes }
	stories.push headline

	puts "Next story:"
	puts %{Type "exit" if done}
end

stories.each do |printedstory|
	puts "New story added! #{printedstory[:titlekey]}, Category: #{printedstory[:categorykey]}, Current Upvotes: #{printedstory[:upvoteskey]}"
end






