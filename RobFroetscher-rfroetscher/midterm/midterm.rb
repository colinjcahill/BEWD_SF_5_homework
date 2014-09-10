require 'mail'
require 'pry'
require_relative 'lib/templates'
require_relative 'lib/participant'
require_relative 'lib/mailing'


puts "Welcome to Send-Pretty-Email!\nThis program will help you send beautiful HTML emails to those you love or want to congratulate."
email = Mailing.new
email.send
puts "Message sent!"


###########################################################################
############################ Bryan's Notes ################################
### I'm really impressed. Over all I can tell that you really understand the whole object oriented thing.
### Good job on tackling the whole sendgrid thing. I like that each of your files only has a small amound of code,
### and I think that you have written the program such that you could further divide it. For example, people will
### often times have a file per class.
### I did notice there were a few places, where you used a "while true"(I left inline notes where I found them).
### In the places I noticed, the "while true" code is not actually doing anything. From what I can tell there is no
### instance in which that particular code would evaluate to false. Clearly your code is still working, just make sure
### you know why you are using certain things. The other thing I would challenge you to do, is make sure that you are
### handling user error a little better. For example, I can just enter "@" as my email address and your code accepts it,
### but then throws an error when its time to send the email. Also you don't do anything to make sure that the user enters
### a name, I left it blank and the program proceeded just fine. Clearly these are not deal breakers, just something to think
### about. Lastly, its dangerous to check passwords into github. Your sendgrid password is shown in your code, and thats public.
### There are different ways to hide that type of thing from public view, I would suggest looking into using your ENV files to,
### store sensitive info.
### Great Job overall, I sent myself an email and it worked like a charm.
