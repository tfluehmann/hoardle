FactoryGirl.define do
  factory :category do
    name {Faker::Lorem.characters(rand(1..399))}
    user {User.last || FactoryGirl.create(:user)}
  end
end
