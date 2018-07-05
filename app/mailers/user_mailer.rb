class UserMailer < ApplicationMailer
	default from: 'naltispace@gmail.com'

	def email_questions(email,corpo)

		mail(to: 'naltispace@gmail.com',
			subject: 'Mensagem do CurriculumXD',
			body: corpo,
			content_type: 'text/html')

	end

end
