# This is the class where it create a search on the Json data

	class Call
	  attr_accessor :call_content, :call_type

#Ask for the type of the search
	def ask_call_type
		puts "You can search the teddit in three ways: by title, by category or by number of upvotes"
		puts "Tell me what do you want to search: title, category or upvotes?"
		@call_type = gets.chomp
		check_call_type @call_type
	end

#Verife the search type user entered matches one the search types we support, if not
#ask for the search type again
	def check_call_type(call_type)

		while call_type != "title" && call_type != "category" && call_type != "upvotes"
		   puts "Please enter one of the three search criterias: title, category or upvotes"
		   call_type = gets.chomp
		end

	end

#Once we know the search type, now ask what user want to search within the search type
	def ask_call_content
		puts "Now tell me what do you want to search in #{@call_type}?"
		@call_content = gets.chomp
		check_call_content(@call_content, @call_type)
	end


#Make sure user enter a string for search in title and category and a number for search in upvotes
	def check_call_content(call_content, call_type)

		if @call_type == "category" or @call_type == "title"
			while @call_content.to_i != 0 or @call_content == "0"
			puts "Please enter a String for your search" 
			@call_content = gets.chomp
		end
		end

		if @call_type == "upvotes"
			  
			while @call_content != "0" && @call_content.to_i == 0
			puts "Please enter a number for your search" 
			@call_content = gets.chomp
		end
		@call_content = @call_content.to_i

		end
	end



	end