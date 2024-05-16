require 'rails_helper'

RSpec.describe Dog, type: :model do
  context "association" do
    it { is_expected.to have_many_attached(:photos)}
  end
end