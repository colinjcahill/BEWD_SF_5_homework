#Just create a json object with the entered hyperlink

require 'json'
require 'rest-client'

	class TedditJson
		attr_accessor :data

		def initialize(json_link)
		   @data =JSON.load(RestClient.get(json_link))
		end

	end
