require 'mail'
require 'pry'
require_relative 'lib/templates'
require_relative 'lib/participant'
require_relative 'lib/mailing'


puts "Welcome to Send-Pretty-Email!\nThis program will help you send beautiful HTML emails to those you love or want to congratulate."
email = Mailing.new
email.send
puts "Message sent!"
