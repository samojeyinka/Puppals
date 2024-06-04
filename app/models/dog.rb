class Dog < ApplicationRecord
    belongs_to :user
    has_one_attached :photo_1
    has_one_attached :photo_2
    has_one_attached :photo_3

    validates :name, presence: true, uniqueness: true
    validates :breed, :gender, :size, presence: true
    validates :bio, :age, :hobby, presence: true
    validate :valid_image

    def valid_image
        return unless photo_1.attached?

        unless attached_file_size <= 1.megabyte
            errors.add(:base, "Total file size should not exceed 1MB")
        end
    end

    def select_attached_file
        [photo_1, photo_2, photo_3].select(&:attached?)
    end

    def attached_file_size
        select_attached_file.sum { |file| file.blob.byte_size}
    end
end
