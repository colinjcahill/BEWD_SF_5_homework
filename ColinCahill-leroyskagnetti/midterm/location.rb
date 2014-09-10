#gem install geocoder

require 'geocoder'

class Location

		attr_accessor :geocoder, :selection, :coordinates

	def initialize
		puts "Loading Location Finder".center(100,"~")
		self.location_enter
		@coordinates = nil
	end


  	def location_search
	    self.location_enter
	    self.location_results
	    self.select_result
	end

	def location_enter
		puts "Please enter a location (cross-street, city, state, region, IP address):"
		@location = gets.chomp
		@geocoder = Geocoder.search(@location)
	end

	def location_results
		puts "The following matches have been found:\n\n"
		# binding.pry
		if @geocoder.size == 0
			puts "Sorry, but no results could be found for that search term.  Please try again."
			self.location_search
		else
			@geocoder.each_with_index do |name, index|
				# [first , middle , last ].compact.join(',')
				puts "\(#{index + 1}\)  #{name.data["formatted_address"] || name.data["city"] + name.data["region_name"] + name.data["country_name"]}"

				""
			end
		end
	end

	

	def select_result
		puts "Please enter the number of the closest geographical match to your search query, or \(R\)eturn to the location search."
			@selection = gets.chomp
				if @selection.downcase == "r"
					self.location_search
			elsif @selection.to_i < 1
				puts "You must enter a valid number to proceed."
				self.select_result
			else
				puts "Great.  Your selection has been recorded."
				geo_result = @geocoder[@selection.to_i-1].data
					if geo_result["geometry"].nil?
						@coordinates = "#{geo_result["latitude"]},#{geo_result["longitude"]}" 
					else
						@coordinates = "#{geo_result["geometry"]["location"]["lat"]},#{geo_result["geometry"]["location"]["lng"]}"
					end

			end
	end
end
