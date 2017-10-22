FactoryGirl.define do
  factory :enrollment do
    after(:build) do |enrollment|
      enrollment.person = build(:person)
      enrollment.training_session = build(:training_session)
    end
  end
end
