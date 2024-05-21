class Dog < ApplicationRecord
    belongs_to :user
    has_one_attached :photo_1
    has_one_attached :photo_2
    has_one_attached :photo_3

    validates :name, presence: true, uniqueness: true
    validates :breed, :gender, :size, presence: true
    validates :bio, :age, :photo_1, presence: true
end
