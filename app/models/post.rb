class Post < ApplicationRecord
  has_many :comments
  validates :message, presence: true
  has_one_attached :image
  has_many :likes, dependent: :destroy
end
