require_relative 'lib/manko_pei'

puts 'Welcome to SwiftFoot! Where we help you select the best upcoming fitness event based on your lifestyle.'
puts 'What is your name (First & Last Name)?'
user_name = gets.chomp

puts 'What is your age?'
user_age = gets.chomp

puts 'What is your gender(M/F)?'
user_sex = gets.chomp

puts "Hi #{user_name}!"
puts "Application Instructions: Please follow along as instructed and we will help you select your next healthy activity. Lets Begin! \n \n"

SwiftFoot = Manko_Pei.new(user_name)
SwiftFoot.activity_evaluation