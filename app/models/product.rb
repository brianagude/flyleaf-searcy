class Product < ApplicationRecord
  validates :title, presence: true
  validates :price, presence: true
  validates :author, presence: true
  validates :description, presence: true
  validates :location_1_name, presence: true
  validates :location_1_url, presence: true
  validates :image_1, presence: true

  mount_uploader :image_1, ProductImageUploader
  mount_uploader :image_2, ProductImageUploader
  mount_uploader :image_3, ProductImageUploader
  mount_uploader :image_4, ProductImageUploader
  mount_uploader :image_5, ProductImageUploader

  def to_param
    id.to_s + '-' + title.parameterize
  end
end
