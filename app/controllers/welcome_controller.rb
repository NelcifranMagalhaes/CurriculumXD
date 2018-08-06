class WelcomeController < ApplicationController
	
	def index
		
	end
	
	def questions
		if params[:email].present? && params[:description].present?
			UserMailer.email_questions(params[:email],params[:description]).deliver_now
			#puts "#{params[:email]} e #{params[:description]} !!!!!!!!!!!!"
			redirect_to questions_path,notice: 'Email enviado sucesso.'       

		else
			puts "Tudo nulo !!!!!!!!!!!!" 		
		end
	end

	def frequently_questions
		
	end

end