class DataMailer < ApplicationMailer
	default from: ENV["GMAIL_USERNAME"]

	def data_mailer(apprentice)
		@apprentice = apprentice
		mail(to: "andylever28@gmail.com", subject: "Apprentice Application <> #{@apprentice.name}")
	end 
end
