class User < ApplicationRecord
	after_create :assign_role

	rolify
	  # Include default devise modules. Others available are:
	  # :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	         :recoverable, :rememberable, :trackable, :validatable

	has_many :creators    


	def assign_role
		add_role(:normal)
	end

end
