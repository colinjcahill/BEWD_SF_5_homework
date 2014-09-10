$:.unshift (File.dirname(__FILE__))

require_relative 'client'
require_relative 'coinbase_client'
require_relative 'mtgox_client'
require_relative 'blockchain_client'

puts "Welcome to the Bitcoin Expert!"
puts "Let's get the latest price of Bitcoin"

while true

	puts "Which exchange do you want to see? Coinbase or Blockchain?"
	user_preference = gets 

	if user_preference.casecmp("coinbase")
		current_client = CoinbaseClient.new
		break
	elsif user_preference.casecmp("Blockchain")
		current_client = BlockChainClient.new
		break
	else
		puts "I don't recognize that, please try again."
	end
end

current_price = current_client.get_buy_price

puts "The Current Price at " + user_preference.to_s + " is " + current_price.to_s

