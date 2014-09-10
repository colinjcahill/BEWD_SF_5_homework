$LOAD_PATH.unshift (File.dirname(__FILE__))
require 'lib/call'
require 'lib/teddit_search'
require 'lib/teddit_Json'



puts "Welcome to Teddit Search!"

#create the call object
new_call = Call.new

#ask for search type
new_call.ask_call_type()
#ask for search content
new_call.ask_call_content()

#create the json object
new_teddit_json = TedditJson.new("http://www.reddit.com/.json")

#create a search
new_search = TedditSearch.new(new_call, new_teddit_json.data)

#search and output the results
new_search.output_results()

