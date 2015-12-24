FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "person#{n}@example.com"}
    password "password"
    password_confirmation "password"
  end

  factory :place do
    association :user
    name "BobsPlace"
    address "123 Street St"
    description "This is a place"
  end

  factory :comment do
    association :user
    association :place
    rating "3_stars"
    message "Wow it is Bob"
  end
end