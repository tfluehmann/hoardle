# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tag do
    name {Faker::Lorem.characters(rand(1..240))}
  end
end
