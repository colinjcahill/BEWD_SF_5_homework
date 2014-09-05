# Step 1: Working with Arrays and Hashes

# Copy your solution from ex_teddit_conditional.rb in 02_Variables_Conditionals

		def get_input
		  gets
		end

		def calculate_upvotes(story, category)
			upvotes = 1
			if story.downcase.include? "cats"
				upvotes = upvotes * 5
			end

			if story.downcase.include? "bacon"
				upvotes = upvotes * 8
			end

			if story.downcase.include? "food"
				upvotes = upvotes * 3
			end
			return upvotes
		end



user_response =''
while user_response.downcase.chomp !='n'



		# Create an empty stories array. This will be used t hold all stories we capture.

		stories = []

		# Users enter the story a they do now, but it gets put in a hash instead. 

		user_story = {}
		puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
		puts "Please enter a News story:"
		user_story[:title] = get_input
		puts "Please give it a category:"
		user_story[:category] = get_input
		user_story[:upvotes] = calculate_upvotes(user_story[:title], user_story[:category])
		puts "New story added! #{user_story[:title]}, Category: #{user_story[:category].capitalize}, Current Upvotes: #{user_story[:upvotes]}"

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
		puts "Would you like to add another story?  Enter \'y\' or \'n\'"
		user_response = gets
end