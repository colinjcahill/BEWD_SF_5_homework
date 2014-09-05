class Mailing
	attr_accessor :sender, :recipient, :template

	def initialize
		@sender = Sender.new
		@recipient = Recipient.new
		@template = Template.new("#{@sender.template}", "#{@sender.name}", "#{@sender.message}", "#{@recipient.name}")
	end

	def send
		Mail.defaults do
		  delivery_method :smtp, { :address   => "smtp.sendgrid.net",
		                           :port      => 587,
		                           :domain    => "waterthought.org",
		                           :user_name => "robfroetscher",
		                           :password  => "yCXas9Un", 
		                           :authentication => 'plain',
		                           :enable_starttls_auto => true }
		end

		message = Mail.new({:to => "#{@recipient.email}",
                    :from => "#{@sender.email}",
                    :subject => "#{@template.subject}" })

		html_part = Mail::Part.new
		html_part.content_type = "text/html; charset=UTF-8"
		html_part.body = "#{@template.body}"

		text_part = Mail::Part.new
		text_part.content_type = "text/plain; charset=UTF-8"
		text_part.body = "Text"

    	message.add_part(html_part)
    	#message.add_part(text_part) #This looks bad--going to comment it out until I can figure out how to make it only show up in the source

    	message.deliver

	end
end