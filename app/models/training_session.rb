class TrainingSession < ApplicationRecord
  belongs_to :gym
  has_many :enrollments, dependent: :nullify
  has_many :people, through: :enrollments

  validates :name, :frequency, :gym, presence: true
end
