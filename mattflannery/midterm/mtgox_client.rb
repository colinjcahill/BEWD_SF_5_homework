class MtgoxClient < Client

	@base_url = "http://data.mtgox.com/api/2/BTCUSD/money/ticker_fast"

	def initialize
		@client_name = CLIENT_NAMES[0]
	end

	def get_buy_price
		r = generic_get (@base_url)
		r['amount'].to_money(r['currency'])
	end


end