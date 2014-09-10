require 'json'
require 'rest-client'

class Reddit_info

	def reddit_api_info
	  reddit_api_response = JSON.load(RestClient.get('http://www.reddit.com/r/Health/.json'))
	  
		# puts reddit_api_response['data']['children']


		reddit_api_response['data']['children'].map do |entry|
	  	story = "Title:  #{entry['data']['title']}"
	  	story
	  	end

	  # response["data"]["children"].map do |entry|
	  #   story = {title: story["data"]["title"], category: story["data"]["subreddit"]}

	  #   calculate_upvotes story
	  #   show_new_story_notification story

	  #   story
	end

end