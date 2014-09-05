![GeneralAssemb.ly](https://github.com/generalassembly/ga-ruby-on-rails-for-devs/raw/master/images/ga.png "GeneralAssemb.ly")

Back-End Web Development
--------

##MIDTERM  REQUIREMENTS

Create a command line based application that fulfills these criteria:

-  Create a directory in your personal homework folder called "midterm" and put all files there.
-  Takes user input and handles bad input (i.e. You expect numbers and they give you a letter).
-	Connects to a 3rd party api where the call varies based on what the user gives you.
-	Must be object oriented. You must instantiate classes. The only file that can run without classes is your main.rb (look at past homework for how this works; remember to use `require_relative`).
-	Push code on Github.


##GRADING
Your midterm is considered completed if it meets all requirements above. Your instructor and T.A will provide you with feedback!


API Ideas: 

*	Twitter search api
* 	reddit.com
*	digg.com

advanced:

* 	soundcloud.com
*	eventbrite.com
*	any provider at https://apigee.com/providers


# result = "Geocoder.search("...")
# result.first.data["geometry"]['location'].keys

# reddit_json = JSON.load(RestClient.get('http://www.reddit.com/.json'))

# .tweet methods:

# [:favorite_count,
#  :favorite_count?,
#  :filter_level,
#  :filter_level?,
#  :in_reply_to_screen_name,
#  :in_reply_to_screen_name?,
#  :in_reply_to_attrs_id,
#  :in_reply_to_attrs_id?,
#  :in_reply_to_status_id,
#  :in_reply_to_status_id?,
#  :in_reply_to_user_id,
#  :in_reply_to_user_id?,
#  :lang,
#  :lang?,
#  :retweet_count,
#  :retweet_count?,
#  :source,
#  :source?,
#  :text,
#  :text?,
#  :favorites_count,
#  :favoriters_count,
#  :in_reply_to_tweet_id,
#  :reply?,
#  :retweeters_count,
#  :geo,
#  :geo?,
#  :metadata,
#  :metadata?,
#  :place,
#  :place?,
#  :retweeted_status,
#  :retweeted_status?,
#  :retweeted_tweet,
#  :retweet?,
#  :retweeted_tweet?,
#  :user,
#  :user?,
#  :favorited?,
#  :favorited,
#  :retweeted?,
#  :retweeted,
#  :truncated?,
#  :truncated,
#  :full_text,
#  :uri,
#  :url,
#  :entities?,
#  :hashtags,
#  :hashtags?,
#  :media,
#  :media?,
#  :symbols,
#  :symbols?,
#  :uris,
#  :urls,
#  :uris?,
#  :urls?,
#  :user_mentions,
#  :user_mentions?,
#  :created_at,
#  :created?,
#  :id,
#  :id?,
#  :eql?,
#  :==,
#  :hash,
#  :inspect,
#  :attrs,
#  :to_h,
#  :to_hash,
#  :to_hsh,
#  :[],
#  :freeze,
#  :memoize,
#  :pry,
#  :__binding__,
#  :pretty_print,
#  :pretty_print_cycle,
#  :pretty_print_instance_variables,
#  :pretty_print_inspect,
#  :to_json,
#  :nil?,
#  :===,
#  :=~,
#  :!~,
#  :<=>,
#  :class,
#  :singleton_class,
#  :clone,
#  :dup,
#  :taint,
#  :tainted?,
#  :untaint,
#  :untrust,
#  :untrusted?,
#  :trust,
#  :frozen?,
#  :to_s,
#  :methods,
#  :singleton_methods,
#  :protected_methods,
#  :private_methods,
#  :public_methods,
#  :instance_variables,
#  :instance_variable_get,
#  :instance_variable_set,
#  :instance_variable_defined?,
#  :remove_instance_variable,
#  :instance_of?,
#  :kind_of?,
#  :is_a?,
#  :tap,
#  :send,
#  :public_send,
#  :respond_to?,
#  :extend,
#  :display,
#  :method,
#  :public_method,
#  :singleton_method,
#  :define_singleton_method,
#  :object_id,
#  :to_enum,
#  :enum_for,
#  :pretty_inspect,
#  :equal?,
#  :!,
#  :!=,
#  :instance_eval,
#  :instance_exec,
#  :__send__,
#  :__id__]
