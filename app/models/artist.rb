class Artist < ApplicationRecord

  

  validates :image, presence: true
  validates :bio, presence: true

  mount_uploader :image, ProductImageUploader
end
