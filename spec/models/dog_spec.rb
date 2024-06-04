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
    let!(:new_dog) { build(:dog, name: "Puppy", user: user) }

    it "fails uniqueness validation for duplicate name" do
      expect(new_dog).not_to be_valid
      expect(new_dog.errors[:name]).to include("has already been taken")
    end
  end

  context "when invalid record" do
    let(:user)  { create(:user, :registered, email: "teb@gmail.com") }

    it "returns gender can't be blank" do
      dog = build(:dog, name: "Dog 1", gender: "", user: user)

      expect(dog).not_to be_valid
      expect(dog.errors[:gender]).to include("can't be blank")
    end

    it "returns size can't be blank" do
      dog = build(:dog, name: "Dog 2", size: "", user: user)

      expect(dog).not_to be_valid
      expect(dog.errors[:size]).to include("can't be blank")
    end

    it "returns age can't be blank" do
      dog = build(:dog, name: "Dog 3", age: "", user: user)

      expect(dog).not_to be_valid
      expect(dog.errors[:age]).to include("can't be blank")
    end
  end
end
