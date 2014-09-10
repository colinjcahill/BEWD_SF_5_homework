class BlockChainClient < Client

	@base_url = "https://blockchain.info/ticker"

	def initialize
		@client_name = CLIENT_NAMES[0]
	end

	def get_buy_price
		r = generic_get ("https://blockchain.info/ticker")
		r['USD']['last'].to_money(r['currency'])
	end

end