require 'json'
require 'rest-client'


def show_message(message)
  puts message
end


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

def show_all_stories(stories)
  stories.each do |story|
    show_message "Story: #{story[:title]}, Category: #{story[:category]}, Current Upvotes: #{story[:upvotes]}"
  end
end

stories = []


reddit_json =JSON.load(RestClient.get('http://www.reddit.com/.json'))
	reddit_json['data']['children'].each do |reddit_story|	
			story = {title: reddit_story['data']['title'], category: reddit_story['data']['subreddit'], upvotes: reddit_story['data']['ups']}
			stories << story
			end
puts ''			
puts "Here are Reddit Stories".center(100, '*')
puts ''
show_all_stories stories
stories.clear

mashable_json = JSON.load(RestClient.get('http://mashable.com/stories.json'))
	mashable_json['new'].each do |mashable_story|
			story = {title: mashable_story['title'], category: mashable_story['channel'], upvotes: mashable_story['shares']['total']}
			stories << story
		end		
puts ''
puts "Here are Mashable stories".center(100, '*')
puts ''
show_all_stories stories
stories.clear

digg_JSON = JSON.load(RestClient.get('http://digg.com/api/news/popular.json'))
	digg_JSON['data']['feed'].each do |digg_story|
			story = {title: digg_story['content']['title'], category: digg_story['content']['tags'].first['display'], upvotes: digg_story['diggs']['count']}
			stories << story
		end
puts ''
puts "Here are Digg Stories".center(100, '*')
puts ''
show_all_stories stories
stories.clear




# We're going to add a remote data source to pull in stories from Mashable and Digg.
	# http://www.reddit.com/.json
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"



