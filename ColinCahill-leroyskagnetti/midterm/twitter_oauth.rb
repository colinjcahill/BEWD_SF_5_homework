# Never did get this to work, so I abandoned it in favor of the Twitter gem.

# require 'oauth'
# require 'pry'
# # Exchange your oauth_token and oauth_token_secret for an AccessToken instance.
# def prepare_access_token(oauth_token, oauth_token_secret)
#   consumer = OAuth::Consumer.new("1OjqzZ6XVPN6hbyWWVhR5hrNw".chomp, "UvZSkz63JEJoPJ9tuTDEdTvbGAQlj46iMtDFjy33m3OGzmpZ4O".chomp,
#     { :site => "https://api.twitter.com",
#       :scheme => :header
#     })
#   # now create the access token object from passed values
#   token_hash = { :oauth_token => oauth_token,
#                  :oauth_token_secret => oauth_token_secret
#                }
#   access_token = OAuth::AccessToken.from_hash(consumer, token_hash )
#   return access_token
# end
 
# # Exchange our oauth_token and oauth_token secret for the AccessToken instance.
# access_token = prepare_access_token("149583545-UFOXnvuFn2Ug0Ujeyz6O9hCFuWZCJx0jTCfvJGcR
# ".chomp, "UvZSkz63JEJoPJ9tuTDEdTvbGAQlj46iMtDFjy33m3OGzmpZ4O".chomp)
# # use the access token as an agent to get the home timeline
# response = access_token.request(:get, "https://api.twitter.com/1.1/statuses/home_timeline.json")

# binding.pry