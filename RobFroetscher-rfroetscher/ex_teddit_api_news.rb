# We're going to add a remote data source to pull in stories from Mashable and Digg.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"

require 'json'
require 'rest-client'
require 'pry'


def calculate_upvotes(story)
	# Write code so that:
		# If the Story is about cats multiply the upvotes by 5
		# If the Story is about bacon multiply the upvotes by 8
		# If the Story is about Food it gets 3 times the upvotes.

	def upvote_multiplier(string_var)
		if string_var.downcase.to_s == "cats"
			5
		elsif string_var.downcase.to_s == "bacon"
			8
		elsif string_var.downcase.to_s == "food"
			3
		else 
			1
		end
	end


	if story[:category].class == Array
		multiplier = 1
		story[:category].each do |cat|
			multiplier = multiplier * upvote_multiplier(cat)
		end

		story[:upvotes] = story[:upvotes] * multiplier


	else

		if story[:category].downcase.to_s == "cats"
			story[:upvotes] = story[:upvotes] * 5
		
		
		elsif story[:category].downcase.to_s == "bacon"
			story[:upvotes] = story[:upvotes] * 8
		

		elsif story[:category].downcase.to_s == "food"
			story[:upvotes] = story[:upvotes] * 3
		
		else story[:upvotes]

		end
	end

	#For example:
	# "Cats frolic despite tuna shortage" should give you 5 times the upvotes!
end

def get_from_mashable
	stories = []
	mashable_news = JSON.load(RestClient.get('http://mashable.com/stories.json'))

	mashable_news['new'].each do | json_story |
		stories << {
			title: json_story['title'],
			category: json_story['channel'],
			upvotes: json_story['shares']['total'] # no upvotes so shares total instead
		}
	
	end
	stories
end

def get_from_reddit
  stories = []
  reddit_news = JSON.load(RestClient.get('http://www.reddit.com/.json'))

  reddit_news['data']['children'].each do |json_story|
    stories << {
      title: json_story['data']['title'],
      category: json_story['data']['subreddit'],
      upvotes: json_story['data']['ups']
    }
  end
  stories
end

def get_from_digg

	def load_inner_array (key_name)
	collection = []
		self.each do |cat_hash|
			collection << cat_hash[key_name]
		end
	collection
	end

	stories = []
	digg_news = JSON.load(RestClient.get('http://digg.com/api/news/popular.json'))

	digg_news['data']['feed'].each do | json_story |
		stories << {
			title: json_story['content']['title'],
			category: json_story['content']['tags'].load_inner_array('display'),
			upvotes: json_story['digg_score']
			
		}
	
	end
	stories
end

def get_from_hacker_news
	stories = []
	hacker_news = JSON.load(RestClient.get('http://api.ihackernews.com/page'))

	hacker_news['items'].each do |json_story|
		stories << {
			title: json_story['title'],
			category: "Hacking",
			upvotes: json_story['points']

		}
	end
	stories
end



def show_all_stories(stories)
	
	  stories.each do |story|
			show_message "Story: #{story[:title]}, Category: #{story[:category]}, Current Upvotes: #{story[:upvotes]}"
		end
end

def show_message(message)
  puts message
end

mashable_stories = get_from_mashable 

digg_stories = get_from_digg

reddit_stories = get_from_reddit

hacker_stories = get_from_hacker_news

mashable_stories.each do |story|
	calculate_upvotes(story)
end

digg_stories.each do |story|
	calculate_upvotes(story)
end

hacker_stories.each do |story|
	calculate_upvotes(story)
end

def category_array_to_string(stories)
	stories.each do |story|
		story[:category] = story[:category].join(", ")
	end
end


show_message("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!")

show_all_stories mashable_stories

category_array_to_string(digg_stories)

show_all_stories digg_stories

show_all_stories reddit_stories

show_all_stories hacker_stories
