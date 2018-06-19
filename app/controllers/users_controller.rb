class UsersController < ApplicationController
	load_and_authorize_resource :only => [:index]
	def index
		@users = User.all
	end

	def show
		
	end
end
