class Dog < ApplicationRecord
    belongs_to :user
    belongs_to :profile
    has_many_attached :photos

    validates :name, presence: true
end
