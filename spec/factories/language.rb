FactoryBot.define do
	factory :language do
		name Faker::Nation.language
		level Faker::Job.education_level
		association :creator, factory: :creator
	end 

end
