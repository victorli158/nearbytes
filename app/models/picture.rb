class Picture < ApplicationRecord
  validates :restaurant_id, :url, presence: true

  belongs_to :restaurant
end
