require 'rails_helper'

RSpec.describe User, type: :model do
  context "association" do
    it { is_expected.to have_one(:profile)}
  end

  context "validation" do
    it { expect(subject).to validate_presence_of(:email) }
    it { expect(subject).to validate_presence_of(:encrypted_password) }
  end
end