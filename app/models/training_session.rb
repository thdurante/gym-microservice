class TrainingSession < ApplicationRecord
  belongs_to :gym

  validates :name, :frequency, :gym, presence: true
end
