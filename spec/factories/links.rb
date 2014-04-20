FactoryGirl.define do
  factory :link do
    link {Faker::Internet.url}
    after(:create) do |instance, evaluator|
      instance.tags << create_list(:tag, rand(1..8))
    end
  end
end
