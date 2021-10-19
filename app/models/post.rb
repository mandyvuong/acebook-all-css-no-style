class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :message, presence: true
  has_many :likes, dependent: :destroy
end
