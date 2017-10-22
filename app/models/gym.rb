class Gym < ApplicationRecord
  has_many :training_sessions, dependent: :destroy

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
