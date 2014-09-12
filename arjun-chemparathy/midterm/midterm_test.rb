require 'json'
require 'rest-client'
require 'pry'
require 'pry-debugger'


puts "Welcome to the Reddit Headline search"
sleep 1
puts "Please enter your name"
user_name = gets.chomp.capitalize
## try using the user class you wrote.... my_user = User.new(gets.chomp.capitalize)

puts "Hello #{user_name}!"
## if you used the user class you could have written "Hello#{my_user.name}"
	sleep 1
puts "We need to verify you are human and not a bot trying to trick us. Please enter a number between 0 and 10."

number = gets.chomp.to_i ## if I enter a letter here, it will evaluate to 0 with the to_i, try taking it off.

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
x.continue### your program will only let me search twice no matter what... I would challenge you to introduce
          ### some logic to make sure this continue action keep getting called if the user wants to search more.

########################################################################################################
####################################Bryan's Notes ######################################################
#### Hey Arjun, this is a good start. I can see that you were able to hit the reddit API and make a call
#### to return data based on a user provided parameter.You then did the right thing and parsed the returned
#### JSON and displayed it to the user.
#### I like that you you took a stab at doing this using a class, but there is definately
#### more that you can do with them for this program. I see that you started a User class, but didn't acutally
#### use it in the code base. You were close. I added some notes above to help you include the use of the user
#### class. Another thing to think about is the flow of you program, and whether the different conditionals
#### are actually doing what you want them to. It is important that you get a better grasp of using classes
#### and general logical programatic flow before the end of the course. We really want you to get everything
#### out of the class that we promised. Please come to my office hours before the end of the course
#### and we will sit down together and make sure this program gets tighted up.

