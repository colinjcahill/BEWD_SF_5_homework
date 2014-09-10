require_relative 'session'
require 'pry'
#Pry is included for debugging purposes

# Session is initiated
session = Session.new

# session.start presents the user with the game options (Twitter Search, Location-based tweet search, Quit)
session.start



######Bryan's Notes##########
#### This really looks good Colin. In general it looks like this program really accomplished what was asked in the midterm prompt
#### I left a few notes in line on your code. For the most part I think you should clean up your indentation a bit. As you start
#### working with larger code bases indentation will help keep track of all the dos and ends. I also noticed that you left a binding.pry
#### in the code..tisk tisk... try to remove any debugging tools for final products.
#### I like that you wrote code to make sure that random user error won't break the program... though I found that if I enter % into
#### the search parameters, I get an error. That's probably an edge care haha, but I challenge you to be able to take care of that.
#### I can't tell if you wrote all the code here, but even if you didn't you clearly were able to follow documentation to make it work,
#### and that's what its all about.
#### Please let me know if you would like any other feed back here. We might be able to sit down one data and hammer out that OAuth thing.
