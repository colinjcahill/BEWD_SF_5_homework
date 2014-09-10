# Well not the most complicated thing in the world... but IS A HUGE step for me!
# I'm hoping to maybe get some links to open at some point. Maybe figure out the API part :) 
class User
  attr_accessor :name

  def initialize(name)
    @name = name 
  end
end

class Moods
  attr_accessor :mood

  def initialize
    @mood = mood
  end
end

class Videos
  attr_accessor :user, :moods

  def initialize(user_name)
    @user = User.new(user_name)
    @mood = Moods.new
  end

  def start 
    puts "Welcome #{@user.name}!"
    puts "How is your day going?"
    puts "Please answer: Good, Okay or Bad"
    gets_mood
  end

  def gets_mood
    mood = gets.chomp.capitalize
    if mood == "Good"
      puts "Would you like to see some videos?"
      video_options
    elsif mood == "Okay"
      puts "Let\'s make your day AWESOME!"
      puts "Here are some videos that might help!"
      puts "Visit! http://digg.com/tag/funny"
    else mood == "Bad"
      puts "Let\'s FIX THAT NOW!"
      puts "Visit! http://digg.com/tag/funny"
    end
  end

  def video_options
    good_answer = gets.chomp.capitalize
    if good_answer == "Yes"
      puts "Would you like to see News, Funny or Music videos?"
      good_video_options
    else good_answer == "No"
      puts "Good Bye!"
    end
  end

  def good_video_options
    video_answer = gets.chomp.capitalize
    if video_answer == "News"
    puts "Visit! http://digg.com/tag/news"
    elsif video_answer == "Funny"
    puts "Visit! http://digg.com/tag/funny"
    else video_answer == "Music"
    puts "Visit! http://digg.com/tag/music"   
    end
  end

end


puts "Hello, welcome to Happy Videos!"
puts "Our goal is to improve your day with interesting videos!"
puts "What is your name?"
user_name = gets.chomp.capitalize
happy_videos = Videos.new(user_name)

happy_videos.start
