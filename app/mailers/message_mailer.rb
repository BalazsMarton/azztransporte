class MessageMailer < ApplicationMailer
	default from: "<info@azzumzug.ch>"
	default to: "Azzumzug <azzumzug@gmail.com>"

	def new_message(message)
		@message = message

		mail(from: "#{message.name} <#{message.email}>", subject: "kapcsolatfelvétel: #{message.name} | azzumzug.ch ")
	end
end
