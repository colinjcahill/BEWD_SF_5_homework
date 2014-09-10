# Accepts array of stories matching search query,
# including search term, results-list length, and
# story type (new, hot, rising), and produces the
# appropriate message depending on the number of
# results and the sorted list of results, including
# relevant meta-data (e.g., title, channel, and shares),
# sorted from most shares to least.

require_relative 'length'
require_relative 'stories'

class Results

	attr_accessor :raw_stories, :sorted_stories, :max_index, :results_language, :desired_type, :search_term

	def initialize(desired_type, search_term)
		@desired_type = desired_type
		@search_term = search_term
		@raw_stories = Stories.new(desired_type, search_term)
		@max_index = Length.new.results_length
		@results_language = results_language
		@sorted_stories = []
	end

	def results_header
		if @max_index == 0
			@results_language = "You must be feeling lucky!\nHere is the most shared story about '#{search_term}':"
		elsif @sorted_stories.count == 1
			@results_language = "There is actually only one story about '#{search_term}':"
		elsif @sorted_stories.count <= @max_index
			@results_language = "There are actually only #{@sorted_stories.count} stories about '#{search_term}'.\nThey are below (sorted by # shares):"
		else
			@results_language = "Top #{@max_index + 1} search results below (sorted by # shares):"
		end
		puts @results_language
	end

	def sort_stories
		@unsorted_stories = @raw_stories.build_stories
	    if @unsorted_stories.count == 0
	      puts
	      puts "=================================================="
	      puts "Sorry, there are no stories that match your query."
	      puts "=================================================="
	      puts
	    else
	      @sorted_stories = @unsorted_stories.sort_by{|k| k[:shares]}.reverse
	      puts
	      puts "==================================================="
	      results_header
	      puts "==================================================="
	      puts
	      
	      @sorted_stories[0..@max_index].each do |unique_story|
	        puts "Story: #{unique_story[:title]}"
	        puts "Channel: #{unique_story[:channel]}"
	        puts "Shares: #{unique_story[:shares]}"
	        puts
	      end
    	end
 	end
end