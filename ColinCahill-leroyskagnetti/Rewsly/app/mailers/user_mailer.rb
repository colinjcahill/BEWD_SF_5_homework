class UserMailer < ActionMailer::Base
  default from: "bill@microsoft.com"

  def welcome_email(user)
    @user = user
    @url  = 'http://www.rotten.com'
    mail(to: 'colin@milyoni.com', subject: 'Check out this awesome ass site')
  end
end