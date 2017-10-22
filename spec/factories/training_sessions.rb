FactoryGirl.define do
  factory :training_session do
    name 'Treinamento avançado monstrão'
    frequency 'ter/qui'

    after(:build) do |training_session|
      training_session.gym = build(:gym)
    end
  end
end
