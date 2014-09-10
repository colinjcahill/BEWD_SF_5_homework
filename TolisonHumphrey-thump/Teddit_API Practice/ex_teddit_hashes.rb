# Step 1: Working with Arrays and Hashes

# Copy your solution from ex_teddit_conditional.rb in 02_Variables_Conditionals


def get_input
	gets.chomp
  #Get input from the user.
end

def calculate_upvotes(category)
	puts "Current number of upvotes:"
	upvotes = get_input.to_i
	
	if category == 'cats'
		upvotes=upvotes*5
	elsif category == 'bacon'
		upvotes=upvotes*8
	elsif category =='Food'
		upvotes=upvotes*3
	end
end

def add_story(title, category, upvotes)
	story_hash = Hash.new
	story_hash = {title: title.to_s, category: category.to_s, upvotes: upvotes.to_s}
end

story_array = Array.new
puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
answer = 'y'

until answer == 'n'
	puts "Please enter a News story:"
	title = get_input
	puts "Please give it a category:"
	category = get_input	
	upvotes = calculate_upvotes(category)

	story_array << add_story(title, category, upvotes)

	puts "New story added! #{title}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"

	puts "Would you like to add another story? Enter 'y' or 'n'"
	answer = get_input.to_s
end

story_array.each do |sto|
	puts sto
end




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