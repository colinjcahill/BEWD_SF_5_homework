# $LOAD_PATH.unshift (File.dirname(__FILE__))
require_relative  'lib/signup'
require_relative  'lib/linked_accounts'
require_relative  'lib/reddit'
require  'date'
require 'pry'

def initial_signup
	puts "\nWhat is your email?\n"
	email = gets.strip
	puts "\n\nThank you for providing me your email.  Now we can stay in touch!  To get the most out of Share Life, we need to learn a little more about you!  \n\nWhat is your name?\n"
	name = gets.strip
	@account = Signup.new(email, name)
	email = @account.email
	name = @account.name
	confirm_email_name
end


def additional_info

	puts "We need a little more information to continue."

	puts "\n\nWhat is your sex?\n(m)ale\n(f)emale\n"
	sex_response = gets.strip.downcase
	
	until sex_response == 'm' || sex_response == 'f'
	puts "Oh no!  I don't understand what you wrote.  What is your sex?\n(m)ale\n(f)emale\n"
	sex_response = gets.strip.downcase
	end
	
	case sex_response
	when "m"
		@account.sex = 'male'
	when "f"
		@account.sex = 'female'
	end

	puts "\nAlmost there!  Please tell me your date of birth."
	puts "What year were you born?"
	dob_year = gets.strip.to_i
	puts "What month were you born? (i.e. 01, 02, 03, etc)"
	dob_month = gets.strip.to_i
		until dob_month > 0 && dob_month <= 12
		puts "Sorry, I don't understand.  What month were you born? (i.e. 01, 02, 03, etc).  Please enter a month between 1-12." 
		dob_month = gets.strip.to_i
		end
		case dob_month
		when 1
			dob_month_en = "January"
		when 2
			dob_month_en = "February"
		when 3
			dob_month_en = "March"
		when 4
			dob_month_en = "April"
		when 5
			dob_month_en = "May"
		when 6
			dob_month_en = "June"
		when 7
			dob_month_en = "July"
		when 8
			dob_month_en = "August"
		when 9
			dob_month_en = "September"
		when 10
			dob_month_en = "October"
		when 11
			dob_month_en = "November"
		when 11
			dob_month_en = "December"
		end

	puts "What day in  were you born?"
	dob_day = gets.strip.to_i

	puts "Rock on!  Thank you for letting us know you were born on #{dob_day} #{dob_month_en}, #{dob_year}."

	dob = Date.new(dob_year,dob_month,dob_day)
	@account.date_of_birth = dob

	
	# account = Signup.new(email, name)

	puts "#{@account.date_of_birth}."


	puts "\nThank you #{@account.name} for signing up for ShareLife.com! \n"

end

def confirm_email_name
	puts 'clear'
	puts "\n\nIs your name and email correct? \nName:  #{@account.name}\nEmail: #{@account.email}\n\nPlease enter (y)es or (n)o."

	@email_name_confirmation = gets.strip.downcase

	until @email_name_confirmation == 'y' || @email_name_confirmation == 'n'
	puts `clear`
	puts "Oh no!  I don't understand what you wrote. Please confirm your name and email is:  \nName: #{@account.name}\nEmail: #{@account.email}\n\nDoes your name/email look correct?  (y)es?  (n)o\n"
	@email_name_confirmation = gets.strip.downcase
	end

	if @email_name_confirmation == 'y'
		puts "Excellent!"
	else @email_name_confirmation == 'n'
		puts 'clear'
		puts "oh no!  No worries, we can correct that!\n"
		initial_signup
	end
end


def link_health_account_to_user
	@fit_bit = LinkedAccounts.new("Fit Bit", 1)
	@up_by_jawbone = LinkedAccounts.new("UP by Jawbone", 2)

	#how can i create this variable without having to assign a random variable to it before the "until" statement?

	@account_options = [@fit_bit, @up_by_jawbone]

	account_to_link =  10000000

	valid_options = @account_options.map { |account| account.account_code }
	#valid_options = Account.pluck(:account_code)

	until account_to_link <= @account_options.length && account_to_link > 0
	# while account_to_link.nil?
	puts `clear`
	puts "Please choose which accounts you would like to connect.  (Please enter a number.)"
	puts "#{list_each_available_account}"
	puts "\n\n\n\n\n\nINSTRUCTOR QUESTION:  How do i remove the code from displaying the entire array in this screen?"
	# account_to_link = gets.strip.to_i

	input = gets.strip.to_i

		if valid_options.include?(input)
			account_to_link = input
		end
	end	

	account = @account_options.find { |account| account.account_code == account_to_link }
	# account = Account.find_by(account_code: account_to_link)


	#this adds the health account to the user account.   Is there a better way of doing this?
	# *****how can i automate this "case" so that it links the info from one key in the hash to another key value in the same hash?
	case account_to_link
		when 1
	 	  @account.accounts_linked.push(@fit_bit)
	 	  puts "\nExcellent!  You added #{@account.accounts_linked.last.account_name} to your account."
	 	when 2
	 	  @account.accounts_linked.push(@up_by_jawbone)
	 	  puts "\nExcellent!  You added #{@account.accounts_linked.last.account_name} to your account."
		else
		  puts "\nI'm sorry, there is an error.  Please close and restart."
	end
end

# def list_each_available_account
# 	@account_options.each do |individual_account|
# 		puts "#{individual_account.account_code}.  #{individual_account.account_name}\n"
# 	end
# end


def reddit_display

	puts "Now would you like to see health stories from Reddit?\n(y)es\n(n)o\n"

	@reddit_confirmation = gets.strip.downcase

	until @reddit_confirmation == 'y' || @reddit_confirmation == 'n'
	puts `clear`
	puts "\n\nOh no!  I don't understand what you wrote. Please confirm you want to read health articles on reddit.  OK?  \n(y)es?  \n(n)o\n"
	@reddit_confirmation = gets.strip.downcase
	end

	if @reddit_confirmation == 'y'
		puts "Excellent!"
		red_instance_of_class = Reddit_info.new
		puts red_instance_of_class.reddit_api_info
		puts "\n\nThank you for using my app!"

	else @reddit_confirmation == 'n'
		puts "oh no!  You said no!   It is important that you see all of these amazing health articles on reddit.  I'll give you another opportunity to make the correct choice.\n"
		reddit_display
	end
end

# @account = Signup.new("email", "name")



# @account = Signup.new()


puts `clear`
puts "\n*********************************************\nThis is the mid-term!  I learned a lot.\n*********************************************\n"
puts "Welcome to ShareLife.com, where our users help top scientists combat the most difficult medical diseases.  ShareLife provides our users a confidential and secure means to control what health data, if any, they wish to share with scientists at the top universities, including Stanford, Harvard, and the Mayo Clinic.  Learn more about how it works.\n"

# gets email/name and then confirms email/name
initial_signup

# # starts next process where the user will connect their accounts.
link_health_account_to_user

additional_info

reddit_display
