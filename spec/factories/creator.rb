FactoryBot.define do
	factory :creator do
		name Faker::DragonBall.character
		birthday Faker::Date.birthday(18, 65)
		description Faker::Lorem.paragraphs(256, false)
		cpf Faker::Number.number(9)
		email Faker::Internet.email
		association :user, factory: :user
	end 

end
