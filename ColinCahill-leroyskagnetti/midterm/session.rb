require_relative 'user'

#User.rb contains the User class
require_relative 'location'

#Location.rb contains the Location class

require_relative 'TwitterConnection'

#TwitterConnection contains the TwitterConnection class

class Session
	
	attr_accessor :client, :user, :geo_search, :twitter

	def initialize
		@twitter = TwitterConnection.new
		@user = User.new

	# initializes new Twitter connection and new user.  
	# User enters name at prompt	

	end

	def start
		# method to initiate presentation of game options

		self.options_present
		self.game_chooser
	end

	def options_present
		puts "\n#{@user.name}, please make a selection.  Would you like to:\n\n"
		puts "(S)earch for tweets?\n(V)iew trending tweets from your location.\n(Q)uit"
	end

	def game_chooser

	# Main logic controller for the game.  User can choose Twitter search, Location search, or to quit.

		user_choice = gets.chomp.downcase
		if user_choice == 's'
			@twitter.search_input
			@twitter.search
			@twitter.search_result
			self.start
		elsif user_choice == 'v'
			@geo_search = Location.new
			@geo_search.location_results
			@geo_search.select_result
			@twitter.location_search_filter
			@twitter.location_search(@twitter.query,@geo_search.coordinates)
			@twitter.location_search_results
			self.start
		elsif user_choice == 'q'
			puts "Thanks for playing!"
			exit
		else 
			puts "Please enter \"S\", \"V\", or \"Q\" to select from the above options."
			self.game_chooser
		end
	end

	
end


