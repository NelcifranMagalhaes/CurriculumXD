FactoryBot.define do
	factory :skill do
		name Faker::ProgrammingLanguage.name
		association :creator, factory: :creator
	end 

end
