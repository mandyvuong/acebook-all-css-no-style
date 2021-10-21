class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :message, presence: true
  has_one_attached :image
  has_many :likes, dependent: :destroy
end