require 'rails_helper'

RSpec.describe Enrollment, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:person) }
    it { is_expected.to belong_to(:training_session) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:person) }
    it { is_expected.to validate_presence_of(:training_session) }
  end
end
