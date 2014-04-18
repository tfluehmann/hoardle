FactoryGirl.define do
  factory :link do
    link {Faker::Internet.url}
    category {Category.last || FactoryGirl.create(:category)}
  end
end
