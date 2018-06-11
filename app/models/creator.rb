class Creator < ApplicationRecord
	has_many :academies
	has_many :experiences
	has_many :languages
	
	validates :name,presence: true
	validates :birthday,presence: true
	validates :description,presence: true
	validates :cpf,presence: true
	validates :email,presence: true
	
end
