class Signup
  attr_accessor :email, :name, :sex, :date_of_birth, :accounts_linked

  def initialize(email, name)
    @email = email
    @name = name

    @sex = sex
    @date_of_birth = date_of_birth
    @accounts_linked = []
   end

end


# def self.initial_signup
# 	puts "\nWhat is your email?\n"
# 	email = gets.strip
# 	puts "\n\nThank you for providing me your email.  Now we can stay in touch!  To get the most out of Share Life, we need to learn a little more about you!  \n\nWhat is your name?\n"
# 	name = gets.strip
# 	@account = Signup.new(email, name)
# 	email = @account.email
# 	name = @account.name
# 	confirm_email_name
# end
