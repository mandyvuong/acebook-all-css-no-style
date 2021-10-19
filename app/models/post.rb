class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :message, presence: true
  has_one_attached :image

  validate :acceptable_image

  def acceptable_image
    return unless image.attached?

    unless image.byte_size <= 1.megabyte
      errors.add(:image, "is too big")
    end
  end
end
