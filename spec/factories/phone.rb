FactoryBot.define do
  factory :phone do
    number_phone Faker::Number.number(11)
	association :creator, factory: :creator

  end
end
