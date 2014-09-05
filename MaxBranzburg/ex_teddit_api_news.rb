# We're going to add a remote data source to pull in stories from Mashable and Digg.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"


# =================================================================
# Digg Stories
# =================================================================

require 'json'
require 'rest-client'

def connect_to_digg
	stories = []

	digg_json = JSON.load RestClient.get('http://digg.com/api/news/popular.json')
	digg_stories = digg_json["data"]["feed"]

	digg_stories.each do |story|
		title = story["content"]["title"]
		category = story["content"]["tags"][0]["display"]
		diggs = story["digg_score"]

		if category.downcase.include? 'cat'
			diggs = diggs * 5
		elsif category.downcase.include? 'bacon'
			diggs = diggs * 8
		elsif category.downcase.include? 'food'
			diggs = diggs * 3
		end

		stories << {
			title: title,
			category: category,
			diggs: diggs
		}

	end

	stories.each do |unique_story|
		puts "Story: #{unique_story[:title]}\nCategory: #{unique_story[:category]}\nDiggs: #{unique_story[:diggs]}"
		puts

	end

end

connect_to_digg

# =================================================================
# Mashable New Stories
# =================================================================

# require 'json'
# require 'rest-client'

# def connect_to_mashable
# 	stories = []

# 	mashable_json = JSON.load RestClient.get('http://mashable.com/stories.json')
# 	mashable_new = mashable_json["new"]

# 	mashable_new.each do |story|
# 		title = story["title"]
# 		channel = story["channel"]
# 		shares = story["shares"]["total"]

# 		stories << {
# 			title: title,
# 			channel: channel,
# 			shares: shares
# 		}

# 	end

# 	stories.each do |unique_story|
# 		puts "Story: #{unique_story[:title]}"
# 		puts "Channel: #{unique_story[:channel]}"
# 		puts "Shares: #{unique_story[:shares]}"
# 		puts

# 	end

# end

# connect_to_mashable


# =================================================================
# Reddit Stories
# =================================================================

# require 'json'
# require 'rest-client'

# def connect_to_reddit
# 	stories = []

# 	reddit_json = JSON.load RestClient.get('http://reddit.com/.json')
# 	reddit_top_level_data = reddit_json["data"]
# 	reddit_stories = reddit_json["data"]["children"]

# 	reddit_stories.each do |story|
# 		title = story["data"]["title"]
# 		category = story["data"]["subreddit"]
# 		upvotes = story["data"]["ups"]
		
# 		if category.downcase.include? 'cat'
# 			upvotes = upvotes * 5
# 		elsif category.downcase.include? 'bacon'
# 			upvotes = upvotes * 8
# 		elsif category.downcase.include? 'food'
# 			upvotes = upvotes * 3
# 		end

# 		stories << {
# 			title: title,
# 			category: category,
# 			upvotes: upvotes
# 		}

# 		end

# 	stories.each do |unique_story|
# 		puts "Story: #{unique_story[:title]}"
# 		puts "Category: #{unique_story[:category]}"
# 		puts "Upvotes: #{unique_story[:upvotes]}"
# 		puts
# 	end

# end

# connect_to_reddit
