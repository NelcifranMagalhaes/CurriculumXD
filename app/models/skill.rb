class Skill < ApplicationRecord
	belongs_to :creator
	validates :name,presence: true

end
