class Enrollment < ApplicationRecord
  belongs_to :person
  belongs_to :training_session

  validates :person, :training_session, presence: true

  accepts_nested_attributes_for :person
end
