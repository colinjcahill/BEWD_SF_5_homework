# Teddit Contionals - Starter Code.

# Let's add a new Teddit feature. Upvotes!
# Complete the application below. 
# Where you see comments (lines that begin with #) replace it with code so that the program works.

def get_input
  gets.strip.capitalize
  #Get input from the user.
end

def calculate_upvotes(story, category)
	upvote=1
	if category =='Cats' 
		upvote*5
	elsif category == 'Bacon'
		upvote*8
	elsif category == 'Food'
		upvote*3
	else
		upvote
	end
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
story = get_input
puts "Please give it a category:"
category = get_input
upvotes = calculate_upvotes(story, category)
puts "New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"

