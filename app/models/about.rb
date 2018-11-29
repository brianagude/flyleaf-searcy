class About < ApplicationRecord
  def to_param
    id.to_s + '-' + title.parameterize
  end

  validates :bio, presence: true  
end
