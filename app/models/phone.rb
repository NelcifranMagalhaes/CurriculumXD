class Phone < ApplicationRecord
	belongs_to :creator

	validates :number_phone,presence: true
end
