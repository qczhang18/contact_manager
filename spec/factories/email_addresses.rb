FactoryGirl.define do
  factory :email_address do
    address { Faker::Internet.email }
    person
  end
end
