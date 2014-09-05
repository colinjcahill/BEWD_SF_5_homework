class Participant
	def verify_email(email)
		if email.include? "@"
			true
		else
			false
		end
	end

end
class Recipient < Participant
	attr_accessor :name, :email 

	def initialize
		get_details
	end

	def get_details
		puts "What's the name of the person you would like to send this email to?"
		@name = gets.chomp
		while true
			puts "Enter your recipient's email address to send."
			@email = gets.chomp
			if verify_email(@email) == true
				break
			else 
				puts "That email address doesn't look right. Please enter it again."
			end
		end
	end

end

class Sender < Participant
	attr_accessor :template, :name, :message, :email

	def initialize
		get_details
		template_prefs
		get_message
	end
	def get_details
		puts "What's your name?"
		@name = gets.chomp
		while true
			puts "What's your email address?"
			@email = gets.chomp
			if verify_email(@email) == true
				break
			else 
				puts "That email address doesn't look right. Please enter it again."
			end
		end
	end


	def get_message
		puts "What personalized message would you like to include to your recipient?"
		@message = gets.chomp
	end

	def template_prefs
		puts "What kind of email would you like to send? Enter the number below: \n 1) Love email (romantic)\n 2) Congratulatory email"
		response = gets.chomp
		while true
			if response == "1" or response.downcase.include? "congratulatory"
				@template = "love"
				break
			elsif response == "2" or response.downcase.include? "love"
				@template = "congrats"
				break
			else 
				puts "Please enter 1, 2, or 3"
				response = gets.chomp
			end
		end
		@template
	end
end
