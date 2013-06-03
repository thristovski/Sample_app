FactoryGirl.define do
  factory :user do
    name     "Tome Hristovski"
    email    "tome@tome.com"
    password "123456"
    password_confirmation "123456"
  end
end