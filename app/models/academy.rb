class Academy < ApplicationRecord
  belongs_to :creator
  
  validates :name,presence: true
  validates :begin_date,presence: true
  validates :end_date,presence: true

end
