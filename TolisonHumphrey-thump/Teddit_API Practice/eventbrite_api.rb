require 'json'
require 'rest-client'

#class Eventbrite_Sesh
	#attr_accessor :search_url, :activity_bank

	#def initialize(search_url)
		#@search_url = search_url
		#@activity_bank = []
	#end 

	def eventbrite_rec(activity_bank)
		healthevents_eb = RestClient.get('https://www.eventbriteapi.com/v3/events/search/q=walk&token=U54SFG6N5CCJ2WML6POB')
		healthevents_json = JSON.load healthevents_eb

		health_options = healthevents_json["events"]

		health_options.each do |event|
			activity_suggestion={
				:title => event["name"]["text"],
				:description => event["description"]["text"]
				}
		activity_bank << activity_suggestion



		def show_suggestions(event)
			def show_message(message)
  				puts message
			end
  			show_message("Activity Suggestion: #{event[:title]} \n Description: #{story[:description]} \n\n")
		end

		activity_bank.each do |event|
			show_suggestions(event)
		end
	end
end

activity_bank = []

eventbrite_rec(activity_bank)