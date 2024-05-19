class Dog < ApplicationRecord
    belongs_to :user
    belongs_to :profile
    has_one_attached :photo_1
    has_one_attached :photo_2
    has_one_attached :photo_3

    validates :name, presence: true, uniqueness: true
    validates :breed, :gender, :size, presence: true
    validates :bio, :age, presence: true
end
