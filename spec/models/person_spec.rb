require 'rails_helper'

RSpec.describe Person, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:birth) }
    it { is_expected.to validate_presence_of(:registry_number) }
    it { is_expected.to validate_presence_of(:integration_id) }
    it { is_expected.to validate_uniqueness_of(:registry_number).case_insensitive }
  end
end
