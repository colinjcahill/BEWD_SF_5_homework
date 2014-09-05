# Teddit Contionals - Starter Code.

# Let's add a new Teddit feature. Upvotes!
# Complete the application below. 
# Where you see comments (lines that begin with #) replace it with code so that the program works.

def get_input
	gets.chomp
  #Get input from the user.
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
story = get_input
puts "Please give it a category:"
category = get_input


def calculate_upvotes(category)
	puts "Current number of upvotes:"
	upvotes = get_input.to_i
	
	if category == 'cats'
		upvotes=upvotes*5
	elsif category == 'bacon'
		upvotes=upvotes*8
	elsif category == 'Food'
		upvotes=upvotes*3
	end
end

upvotes = calculate_upvotes(category)
	
puts "New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"
# Write code so that:
		# If the Story is about cats multiply the upvotes by 5
		# If the Story is about bacon multiply the upvotes by 8
		# If the Story is about Food it gets 3 times the upvotes.
