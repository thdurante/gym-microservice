class Gym < ApplicationRecord
  has_many :training_sessions, dependent: :destroy
  # TODO: relacionar enrollment e person com gym

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
