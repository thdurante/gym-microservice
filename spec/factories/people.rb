FactoryGirl.define do
  factory :person do
    name { Faker::Name.name }
    birth { Faker::Date.between(50.years.ago, 10.years.ago) }
    registry_number { Faker::Number.number(10) }
    integration_id { Faker::Number.number(2) }
  end
end
