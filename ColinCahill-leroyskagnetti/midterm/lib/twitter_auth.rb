require 'rest-client'
require 'twitter'
require 'pry'
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "1OjqzZ6XVPN6hbyWWVhR5hrNw"
  config.consumer_secret     = "UvZSkz63JEJoPJ9tuTDEdTvbGAQlj46iMtDFjy33m3OGzmpZ4O"
  config.access_token        = "149583545-UFOXnvuFn2Ug0Ujeyz6O9hCFuWZCJx0jTCfvJGcR"
  config.access_token_secret = "yJmaXu5OrwvaJp6XE0Ie4EdNZORLOxxQK9RlUmCIdnQZ3"
end
binding.pry