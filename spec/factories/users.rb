# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
sequence(:user_name) { |n| "Usuario-#{n}" }
sequence(:user_email) { |n| "user-#{n}@exemplo.com" }

  factory :user do
    name { generate(:user_name) }
    email { generate(:user_email) }
    birthday { 1.month.from_now.to_date }
  end
end
