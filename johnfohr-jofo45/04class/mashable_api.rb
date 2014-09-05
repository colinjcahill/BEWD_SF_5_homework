
# mashable

require "json"
require "rest-client"


# def get_from_mashable
# 	mashable_info = RestClient.get("http://www.mashable.com/stories.json")
# 	result = JSON.load(mashable_info)
# 	#creates hash of the parameter "mashable_edit"

# 	stories = []

# 	mashable_stories_array = result['new']

# 	mashable_stories_array.each do |json_story|

# 		stories.push ({
# 			title: json_story['title'],
# 			date: json_story['post_date'],
# 			author: json_story['author']
# 		})
# 	end
# 	stories
# end

# puts get_from_mashable







# digg


# def get_from_digg
# 	digg_info = RestClient.get("http://digg.com/api/news/popular.json")
# 	result = JSON.load(digg_info)
# 	#creates hash of the parameter "mashable_edit"

# 	stories = []

# 	digg_stories_array = result['data']["feed"]

# 	digg_stories_array.each do |json_story|

# 		stories.push ({
# 			title: json_story["content"]['title'],
# 			date: json_story['date'],
# 			score: json_story['digg_score'],
# 			author: json_story['author']
# 		})
# 	end
# 	stories
# end

# puts get_from_digg






def get_from_jobs
	jobs_info = RestClient.get("http://api.usa.gov/jobs/search.json")
	result = JSON.load(jobs_info)
	#creates hash of the parameter "mashable_edit"

	stories = []

	jobs_array = result

	jobs_array.each do |json_story|

		stories.push ({
			title: json_story["position_title"],
			date: json_story['organization_name'],
			max: json_story['maximum'],
			min: json_story['minimum'],
			locations: json_story['locations']
		})
	end
	stories
end

puts get_from_jobs
