require_relative 'user'
require_relative 'eventbrite_api'
#require 'json'
#require 'rest-client'

class Manko_Pei
	attr_accessor :user, :step_count, :eb_url

	def initialize(user)
		@user = User.new
		@step_count = step_count
		@eb_url = eb_url
	end

	def activity_evaluation
		puts "What is your daily step count?"
		@step_count = gets.to_i
		
		burn_factor = 0.03
		daily_calburn = @step_count.to_f * burn_factor

		puts "You are burning #{daily_calburn} calories per day"


		if @step_count < 7499
			@user.category = 'couch_potato'
			puts "You are a Couch Potato!\n\nGet off the couch! You are living an unhealthy, sedentary lifestyle.\n\n"
		elsif @step_count == 7500 || @step_count < 12499
			puts "You are Average!\n\nYour lifestyle is somewhat active. Still room for improvement.\n\n"
			@user.category = 'average'
		elsif @step_count > 12500
			puts "You are a Juggernaut!\n\nTime to plan the next marathon!\n\n"
			@user.category = 'juggernaut'
		end
	
		activity = ['walk','salsa','marathon']

	 	if @user.category == 'couch_potato'
	 		n = 0
	 	elsif @user.category == 'average'
	 		n = 1
	 	elsif @user.category == 'juggernaut'
	 		n = 2
	 	end 
		
		activity_selection = activity[n]
		@eb_url = 'https://www.eventbriteapi.com/v3/events/search/' + '?q=' + "#{activity_selection}" + "&token=U54SFG6N5CCJ2WML6POB"

		activity_bank = []

		eventbrite_rec(@eb_url, activity_bank)
	end
end