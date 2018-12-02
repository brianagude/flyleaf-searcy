class Artist < ApplicationRecord


  validates :name, presence: true
  validates :image, presence: true
  validates :bio, presence: true

  mount_uploader :image, ProductImageUploader
end
