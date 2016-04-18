FactoryGirl.define do
  factory :seminar do
    firstname Faker::Name.first_name
    lastname Faker::Name.last_name
    language ['Deutsch', 'English'].sample
  end
end
