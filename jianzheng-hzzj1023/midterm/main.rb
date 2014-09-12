$LOAD_PATH.unshift (File.dirname(__FILE__))
require 'lib/call'
require 'lib/teddit_search'
require 'lib/teddit_Json'
require 'pry'
require 'pry-debugger'


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

##################################Bryan's Notes ###################################
#### Greate job on using classes here Jian ! I realy like how you segmented your program
#### into different files and used classes to encapsulate the different functionality. Overall
#### your code it very clean and lean! Also great use of comments. It always helps other people
#### understand the program and code when you have comments. I can also see that you were able to
#### successfully make a call to the Reddit API and return a json, and then parse so the user could
#### see the response in a nicely formatted way.
#### Here are a few suggestions to really tighten this code up. When you are writing the program,
#### always think about mistakes the user might make, and try to catch them. When the program asked
#### me for the type of search I wanted to make, I entered 'kittens'.... you caught that and made sure
#### that I entered the right thing before I went on, but then asked me what I wanted to search in kitten.
#### I left a note in the code about what that happened (hint: its has to do with an instance variable you set).
#### I would also challenge you to figure out how to take the user's input and then submit that to reddit
#### as a search parameter. Currently if what I am looking for in your program is not in the top 25,
#### then I am basically kicked out of the program. You should ask the user to search again.
#### Lastly, there are a few places where your indentation is a little sloppy. Make sure to indent correctly,
#### it will save you in the long run.


