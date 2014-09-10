class CoinbaseClient < Client
	
	@base_url = "https://coinbase.com/api/v1"

	def initialize
		@client_name = CLIENT_NAMES[0]
	end

	def get_buy_price
		r = generic_get ('https://coinbase.com/api/v1/prices/buy')
		r['amount'].to_money(r['currency'])
	end

end
