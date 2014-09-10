require 'pry'
#please make sure these are installed before running

require 'twitter'
require 'rest-client'

#Including OpenSSL disabler to avoid conflicts on outdated OpenSSL terminals.

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

class TwitterConnection

 attr_accessor :client, :query

  def initialize
  # Initializes new connection to Twitter API.
  # connection info found here:  http://rdoc.info/gems/twitter
  
  
     puts "Loading New Twitter Session".center(100,"~")
     @client = Twitter::REST::Client.new do |config|
       config.consumer_key        = "1OjqzZ6XVPN6hbyWWVhR5hrNw"
       config.consumer_secret     = "UvZSkz63JEJoPJ9tuTDEdTvbGAQlj46iMtDFjy33m3OGzmpZ4O"
       config.access_token        = "149583545-UFOXnvuFn2Ug0Ujeyz6O9hCFuWZCJx0jTCfvJGcR"
       config.access_token_secret = "yJmaXu5OrwvaJp6XE0Ie4EdNZORLOxxQK9RlUmCIdnQZ3" 
      end
  end

 
  def search_input

   # Gets search query from user
    
    puts "Please enter a search term on Twitter:"
    @query = gets.chomp
      if @query.empty?
        puts "You must enter a valid search term."
        self.search_input
      else
      end
  end

  def search


    puts "Let me check on that..."
         @results = client.search(@query, :result_type => "recent", :count =>'10').take(10)
  end

  def search_result

    # Prints each tweet in the returned results

    @results.each do |tweet|
    puts "".center(100,"_")
    puts "\nUser:\t@#{tweet.user.screen_name}\nTweet Text:\t\"#{tweet.text}\"\nTweet time:\t#{tweet.created_at}\n"
    puts "".center(100,"_")
    sleep 0.5
    end
  end

  def location_search_filter

    # Optionally applies a search filter to a location-based query of tweets

      puts "Now, please enter a search term to filter results, or press enter to display all results near your location."
      @query = gets.chomp
      @search_radius = 5
  end

  def location_search(query,coordinates)
    @results = client.search(@query, :geocode =>"#{coordinates},#{@search_radius}mi", :count =>'10').take(10)
      if @results.size < 3
        puts "\nFew tweets found - increasing search radius area."
        sleep 0.5
        @search_radius =  @search_radius * 2
        self.location_search(query,coordinates)
      else 
      end
  end

  def location_search_results
    @results.each do |tweet|
    puts "".center(100,"_")
    puts "\nUser:\t@#{tweet.attrs[:user][:name]}\nTweet Text:\t\"#{tweet.attrs[:text]}\"\nTweet time:\t#{tweet.attrs[:created_at]}\nLocation:\t#{tweet.attrs[:place].class == Hash ? tweet.attrs[:place][:full_name] : tweet.attrs[:user][:location] || "Location not found"}"  
    puts "".center(100,"_")
    sleep 0.5
  end
  end

end