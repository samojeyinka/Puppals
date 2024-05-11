require 'rails_helper'

RSpec.describe User, type: :model do
  context "association" do
    it { is_expected.to have_one(:profile)}
  end
end