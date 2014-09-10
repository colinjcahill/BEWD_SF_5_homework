# Builds array of Mashable stories of desired type that include
# users' query in their bodies.  Calls search and type classes
# to execute.

require_relative 'search'
require_relative 'type'

class Stories

  require 'json'
  require 'rest-client'

  attr_accessor :type, :query, :mashable_stories, :stories

  def initialize(desired_type, search_term)
    @type = Type.new(desired_type).desired_type
    @query = Search.new(search_term).search_term
    @mashable_stories = []
    @stories = []
  end

  def build_stories

    mashable_json = JSON.load RestClient.get('http://mashable.com/stories.json')
    mashable_new = mashable_json["new"]
    mashable_hot = mashable_json["hot"]
    mashable_rising = mashable_json["rising"]

    if @type == 'n'
      @mashable_stories = mashable_new
    elsif @type == 'h'
      @mashable_stories = mashable_hot
    elsif @type == 'r'
      @mashable_stories = mashable_rising
    end

    mashable_stories.each do |story|
      title = story["title"]
      channel = story["channel"]
      content = story["content"]["plain"]
      shares = story["shares"]["total"]

      if content.downcase.include? "#{@query}"
        @stories << {
          title: title,
          channel: channel,
          shares: shares
        }
      end
      
    end

    @stories

  end
  
end