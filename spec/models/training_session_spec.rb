require 'rails_helper'

RSpec.describe TrainingSession, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:gym) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:frequency) }
    it { is_expected.to validate_presence_of(:gym) }
  end
end
