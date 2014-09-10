	class TedditSearch

		  def initialize(call, json_data)
		    @call = call
		    @json = json_data
		    @results = []
		  end

#output the search results
		def output_results
		search(@call.call_type, @call.call_content)
		puts "Here is your search result:"
		show_all_stories (@results)
		  end
#This is where the search is done, depending on the three different search types, different methods are used
		def search (search_type, search_content)
#if user search in title, check if the title contains the string user searched
		if search_type == "title"

			@json['data']['children'].each do |story|	
				if story['data']['title'].include? search_content
					create_results story
				end
			end
		end

#if user search in category, check if the category matches the string user searched
		if search_type == "category"
			@json['data']['children'].each do |story|	
				if story['data']['subreddit'] == search_content
					create_results story
				end
			end
		end

#if user search in upvotes, return the stories that has upvotes more than the number user entered
		if search_type == "upvotes"
			@json['data']['children'].each do |story|	
				if story['data']['ups'] >= search_content
					create_results story
				end
			end
		end
	end

#construct the story hash and results array
		def create_results current_entry
					story = {title: current_entry['data']['title'], category: current_entry['data']['subreddit'], upvotes: current_entry['data']['ups']}
					@results << story
		end

#outputs the result stories
		def show_all_stories(stories)
		if stories.length > 0	
		  stories.each do |story|
		    puts "Story: #{story[:title]}, Category: #{story[:category]}, Current Upvotes: #{story[:upvotes]}"
		  end
		else 
			puts "There is no story matching your search"
		end

		end

	end