class User < ApplicationRecord
  has_one :profile
  has_one_attached :photo
  has_many :posts, dependent: :destroy

  validates :email, presence: true
  validates :encrypted_password, presence: true
  has_one :dog
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
