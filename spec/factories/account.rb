# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
sequence(:account_name) { |n| "Conta-#{n}" }

  factory :account do
    name { generate(:account_name) }
    expiration_date { 1.month.from_now.to_date }
  end

end
