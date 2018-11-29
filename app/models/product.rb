class Product < ApplicationRecord
  validates :title, presence: true
  validates :price, presence: true
  validates :author, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :image_1, presence: true

  

  def to_param
    id.to_s + '-' + title.parameterize
  end
end
