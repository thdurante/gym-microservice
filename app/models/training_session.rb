class TrainingSession < ApplicationRecord
  belongs_to :gym
  has_many :enrollments, dependent: :nullify

  validates :name, :frequency, :gym, presence: true
end
