class Dog < ApplicationRecord
    belongs_to :user
    belongs_to :profile
    has_many_attached :photos

    validates :name, presence: true, uniqueness: true
    validates :breed, :gender, :size, presence: true
    validates :bio, :age, presence: true
end


# it { expect(subject).to validate_presence_of(:name) }
#     it { expect(subject).to validate_presence_of(:breed) }
#     it { expect(subject).to validate_presence_of(:gender) }
#     it { expect(subject).to validate_presence_of(:size) }
#     it { expect(subject).to validate_presence_of(:age) }
#     it { expect(subject).to validate_presence_of(:hobby) }
#     it { expect(subject).to validate_presence_of(:bio) }
