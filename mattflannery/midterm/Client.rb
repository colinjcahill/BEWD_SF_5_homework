class Client  

	require 'multi_json'
	require 'hashie'
	require 'httparty'
	require 'monetize'


	CLIENT_NAMES = %w[coinbase blockchain]


	def get_buy_price
	end	

	def generic_get(url)
		uri = URI.parse(url)
		http = Net::HTTP.new(uri.host, uri.port)
		http.use_ssl = true

		request = Net::HTTP::Get.new(uri.request_uri)
		response = http.request(request)
		if response.body && response.body.length >= 2
			jsonout = JSON.parse(response.body)
		end	
	end

	def generic_post(url, params)
		uri = URI.parse(url)
		response = Net::HTTP.post_form(uri, params )
	end
end  