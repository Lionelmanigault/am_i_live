class Contact < MailForm::Base
	attribute :name, 	:validate => true
	attribute :email, 	:validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
	attribute :phone  
	attribute :idea
	attribute :username, :validate => true

	# Declare the email headers. It accepts anything the mail method
	# in ActionMailer accepts.
	def headers
		{
			:subject => "My Contact Form",
			:to => "info@am-i-live.com",
			:from => %("#{name}" <#{email}>)
		} 
	end
end
