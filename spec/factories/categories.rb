FactoryGirl.define do
  sequence(:tags){|n|
    tag_list= []
    a = rand(1..5)
    a.times do |index|
      tag_list << FactoryGirl.create(:tag)
    end
    tag_list}

  sequence(:links){|n|
    link_list = []
    a = rand(1..5)
    a.times do |index|
      link_list << FactoryGirl.create(:link)
    end
    link_list}
  factory :category do
    name {Faker::Lorem.characters(rand(1..240))}
    user {User.last || FactoryGirl.create(:user)}
    factory :complete_category do
      tags {generate(:tags)}
      links {generate(:links)}
    end
  end
end
