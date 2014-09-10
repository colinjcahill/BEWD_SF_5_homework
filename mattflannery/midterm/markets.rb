class Markets

  def index
  	curr_price = Price.new
  	current_client = CoinbaseClient.new(current_user)
  	curr_price.buy_price = current_client.get_buy_price
  	curr_price.client = current_client.client_name
    curr_price.save
  	@prices = Price.all

  end

  def live
  	@prices = [] #= Price.all #uncomment this to see all of the prices instead of just the live updates
  end

  def stream
  	response.headers["Content-Type"] = "text/event-stream"
  	loop do
      price = update_price
      response.stream.write("event: price_update\n")
      response.stream.write("data: #{price.to_json}\n\n")
      #sleep 1 #Matt: 1 = one second, put any number here.
  	end

    rescue IOError
      Rails.logger.info "Stream closed"
    ensure
      response.stream.close  
    
  end

  private

  def update_price
    curr_price = Price.new
    curr_price.buy_price = CoinbaseClient.get_buy_price
    curr_price.client = CoinbaseClient.client_name
    curr_price.save
  	curr_price
  end


end
