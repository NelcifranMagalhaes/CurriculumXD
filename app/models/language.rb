class Language < ApplicationRecord
	belongs_to :creator

	validates :name,presence: true
	validates :level,presence: true
end
