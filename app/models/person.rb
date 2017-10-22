class Person < ApplicationRecord
  has_many :enrollments, dependent: :nullify

  validates :name, :birth, :registry_number, :integration_id, presence: true
  validates :registry_number, uniqueness: { case_sensitive: false }
end
