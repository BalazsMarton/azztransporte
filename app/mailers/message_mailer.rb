class MessageMailer < ApplicationMailer
	default from: "<info@azzumzug.ch>"
	default to: "Azzumzug gmail <azzumzug@gmail.com>, Azzumzug info <info@azzumzug.ch>"

	def new_message(message)
		@message = message

		mail(from: "#{message.name} <#{message.email}>", subject: "kapcsolatfelvétel: #{message.name} | azzumzug.ch ")
	end
end
