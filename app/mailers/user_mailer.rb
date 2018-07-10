require 'mail'
class UserMailer < ApplicationMailer
	default from: 'naltispace@gmail.com'

	def email_questions(email,corpo)
		@email = email
		@corpo = corpo
		# mail(to: 'naltispace@gmail.com',from: email, subject: 'Mensagem do CurriculumXD')
		mail = Mail.new do
		  from    email
		  to      'naltispace@gmail.com'
		  subject 'Mensagem do CurriculumXD'
		  body    corpo
		end
		mail.deliver!
	end
end
