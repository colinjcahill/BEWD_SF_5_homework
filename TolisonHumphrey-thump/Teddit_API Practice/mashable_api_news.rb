# We're going to add a remote data source to pull in stories from Mashable and Digg.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"
require 'json'
require 'rest-client'

def mashable_json(stories)
	stories_from_mashable=RestClient.get('http://mashable.com/stories.json')
	stories_json= JSON.load stories_from_mashable
	stories_json_new = stories_json["new"]

	stories_json_new.each do |story|
		news_story={
		:title => story["title"],
		:author => story["author"],
	}

	stories << news_story

	end
	
	def show_new_story_notification(story)

		def show_message(message)
  			puts message
		end
		
  		show_message("Story: #{story[:title]}, Author: #{story[:author].split.map(&:capitalize).join(' ')}")
	end

	stories.each do |story|
		show_new_story_notification(story)
	end

end

stories =[]

mashable_json(stories)