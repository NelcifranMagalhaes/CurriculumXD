FactoryBot.define do
	factory :experience do
		
		name Faker::Job.title
		begin_date Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today)
		end_date Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today)
		note Faker::Lorem.paragraphs(256, false)
		address Faker::Address.full_address
		association :creator, factory: :creator
	end 

end
