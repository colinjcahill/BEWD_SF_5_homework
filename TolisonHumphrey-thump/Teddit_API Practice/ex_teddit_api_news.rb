# We're going to add a remote data source to pull in stories from Mashable and Digg.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"
require 'json'
require 'rest-client'

def reddit_json(stories)
	stories_from_reddit=RestClient.get('http://www.reddit.com/.json')
	stories_json= JSON.load stories_from_reddit

	stories_json["data"]["children"].each do |story|
		news_story={
		:title => story["data"]["title"],
		:author => story["data"]["author"],
		:upvotes => story["data"]["ups"]
	}
	stories << news_story

	end
	
	def show_new_story_notification(story)

		def show_message(message)
  			puts message
		end
		
  		show_message("Story: #{story[:title]}, Author: #{story[:author].capitalize}, Current Upvotes: #{story[:upvotes]}")
	end

	stories.each do |story|
		show_new_story_notification(story)
	end

end

stories =[]

reddit_json(stories)



# def show_message(message)
#   puts message
# end

# def get_input
#   gets.strip
# end

# def show_new_story_notification(story)
#   show_message("New story added! #{story[:title]}, Category: #{story[:category].capitalize}, Current Upvotes: #{story[:upvotes]}")
# end

# def calculate_upvotes(story)
#   story[:upvotes] = 1

#   if story[:title].downcase.include? 'cat'
#     story[:upvotes] *= 5
#   elsif story[:title].downcase.include? 'bacon'
#     story[:upvotes] *= 8
#   end

#   if story[:category].downcase == "food"
#     story[:upvotes] *= 3
#   end
# end

# def show_all_stories(stories)
#   stories.each do |story|
#     show_message "Story: #{story[:title]}, Category: #{story[:category]}, Current Upvotes: #{story[:upvotes]}"
#   end
# end

# stories = []

# show_message("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!")
# answer = "y"

# while answer == "y"
#   story = {}

#   show_message("Please enter a News story:")
#   story[:title] = get_input

#   show_message("Please give it a category:")
#   story[:category] = get_input

#   calculate_upvotes(story)

#   stories << story
#   show_new_story_notification(story)

#   show_message("Would you like to add another story? Enter 'y' or 'n'")
#   answer = get_input.strip.downcase
# end
