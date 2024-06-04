require 'rails_helper'

RSpec.describe Dog, type: :model do
  context "association" do
    it { is_expected.to have_one_attached(:photo_1)}
    it { is_expected.to have_one_attached(:photo_2)}
    it { is_expected.to have_one_attached(:photo_3)}
  end

  context "validation" do
    it { expect(subject).to validate_presence_of(:name) }
    it { expect(subject).to validate_presence_of(:breed) }
    it { expect(subject).to validate_presence_of(:gender) }
    it { expect(subject).to validate_presence_of(:size) }
    it { expect(subject).to validate_presence_of(:age) }
    it { expect(subject).to validate_presence_of(:bio) }
  end

  context "when name is duplicated" do
    let(:user) { create(:user, :registered, email: "seb@gmail.com")}
    let!(:new_dog) { build(:dog, user: user) }

    it "fails uniqueness validation for duplicate name" do
      expect(new_dog).not_to be_valid
      expect(new_dog.errors[:name]).to include("has already been taken")
    end
  end
end
