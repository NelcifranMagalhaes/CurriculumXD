class Creator < ApplicationRecord
	has_many :academies,inverse_of: :creator,dependent: :destroy
	has_many :experiences,inverse_of: :creator,dependent: :destroy
	has_many :languages,inverse_of: :creator,dependent: :destroy
	has_many :skills,inverse_of: :creator,dependent: :destroy
	
	accepts_nested_attributes_for :academies, reject_if: :all_blank, allow_destroy: true
  	accepts_nested_attributes_for :experiences, reject_if: :all_blank, allow_destroy: true
  	accepts_nested_attributes_for :languages, reject_if: :all_blank, allow_destroy: true
  	accepts_nested_attributes_for :skills, reject_if: :all_blank, allow_destroy: true

	
	validates :name,presence: true
	validates :birthday,presence: true
	validates :description,presence: true
	validates :cpf,presence: true
	validates :email,presence: true
	validates :phone_number,presence: true,length: {is: 11}
	
end
