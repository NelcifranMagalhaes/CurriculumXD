class Creator < ApplicationRecord
  has_many :academies
  has_many :experiences
  has_many :languages
end
