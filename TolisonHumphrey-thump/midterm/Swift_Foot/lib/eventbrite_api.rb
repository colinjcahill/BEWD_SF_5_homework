require 'json'
require 'rest-client'

def eventbrite_rec(eb_url, activity_bank)

healthevents_eb = RestClient.get('eb_url')
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
  		show_message("Activity Suggestion: #{event[:title]} \n\n Description: #{event[:description]} \n\n")
	end

		activity_bank.each do |event|
			show_suggestions(event)
		end
	end
end

activity_bank = []

eventbrite_rec(activity_bank)



