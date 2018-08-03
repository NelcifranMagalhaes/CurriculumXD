FactoryBot.define do
	factory :academy do
		name Faker::HarryPotter.house
		begin_date Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today)
		end_date Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today)
		note Faker::Lorem.paragraphs(256, false)
		association :creator, factory: :creator
	end 

end
