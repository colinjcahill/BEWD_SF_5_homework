require 'json'
require 'rest-client'


puts "Welcome to the Reddit Headline search"
sleep 1
puts "Please enter your name"
user_name = gets.chomp.capitalize

puts "Hello #{user_name}!"
	sleep 1
puts "We need to verify you are human and not a bot trying to trick us. Please enter a number between 0 and 10."

number = gets.chomp.to_i

		if number >= 0 && number <= 10
			puts "Great! You are probably human but I can't be sure. We will give you the benefit of the doubt."
			sleep 1
			puts "Let's get started"
		else 
			puts "Nice try bot! You didn't pass the human check."
		end

class Reddit_search
	def get_from_reddit

	puts "Alright, tell me what you want to look up on Reddit."
	query=gets.chomp
	url="http://www.reddit.com/search.json?q="+query

	response = JSON.load(RestClient.get(url))
	number = 0
	response["data"]["children"].each do |story|
		story_title = {title: story["data"]["title"]}
		puts number += 1
		puts story_title[:title]
		end
	end

	def continue
		puts "Do you want to continue? Y or N"
		answer = gets.chomp
		if answer = "Y"
			get_from_reddit
		else
			puts "Thanks for using my app!"
		end
	end

end

x = Reddit_search.new
x.get_from_reddit
x.continue



