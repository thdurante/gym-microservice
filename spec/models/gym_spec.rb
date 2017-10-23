require 'rails_helper'

RSpec.describe Gym, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:training_sessions).dependent(:destroy) }
    it { is_expected.to have_many(:people).through(:training_sessions) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
  end
end
