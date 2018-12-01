class About < ApplicationRecord
  validates :bio, presence: true
  validates :image, presence: true

  
end
