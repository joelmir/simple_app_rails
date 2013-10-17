# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
sequence(:juridical_people_address) { |n| "Rua #{n} Rio grande ,RS" }
sequence(:juridical_people_name){ |n| "Nome - #{n}"}

  factory :juridical_person do
    name { generate(:juridical_people_name) }
    cnpj "64.561.994/0001-06"
    address { generate(:juridical_people_address) }
  end

end
