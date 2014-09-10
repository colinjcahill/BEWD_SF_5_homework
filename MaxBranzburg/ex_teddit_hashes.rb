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

def get_input
  gets.chomp
end

def show_new_story_notification(story)
  puts "New story added! #{story[:title]}, Category: #{story[:category].capitalize}, Current Upvotes: #{story[:upvotes]}"
end

def calculate_upvotes(story)
  story[:upvotes] = 1

  if story[:title].downcase.include? 'cat'
    story[:upvotes] *= 5
  elsif story[:title].downcase.include? 'bacon'
    story[:upvotes] *= 8
  end

  if story[:category].downcase == "food"
    story[:upvotes] *= 3
  end
end

def show_all_stories(stories)
  stories.each do |story|
    puts "Story: #{story[:title]}\nCategory: #{story[:category]}\nCurrent Upvotes: #{story[:upvotes]}"
    puts
  end
end

stories = []

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
answer = "y"

while answer == "y"
  story = {}

  puts "Please enter a News story:"
  story[:title] = get_input

  puts "Please give it a category:"
  story[:category] = get_input

  calculate_upvotes(story)

  stories << story
  show_new_story_notification(story)

  puts "Would you like to add another story? Enter 'y' or 'n'"
  answer = get_input.chomp.downcase
end

show_all_stories stories