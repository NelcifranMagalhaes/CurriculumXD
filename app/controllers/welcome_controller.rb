class WelcomeController < ApplicationController
	
	def index
		
	end
	
	def questions
		puts "#{params[:email]} e #{params[:description]} !!!!!!!!!!!!"
		if params[:email].present? && params[:description].present?
			UserMailer.email_questions(params[:email],params[:description])
		else
			puts "Tudo nulo !!!!!!!!!!!!" 		
		end
	end

	def frequently_questions
		
	end

end