class Artist < ApplicationRecord

  def to_param
    id.to_s + '-' + title.parameterize
  end

  validates :image, presence: true
  validates :bio, presence: true


end
