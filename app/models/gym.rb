class Gym < ApplicationRecord
  has_many :training_sessions, dependent: :destroy
  has_many :people, through: :training_sessions

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
