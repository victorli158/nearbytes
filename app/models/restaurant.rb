class Restaurant < ApplicationRecord
  validates :name, :address, :city_params, :price, :lat, :long, :phone, :mon, :tue,
   :wed, :thu, :fri, :sat, :sun, :categories, presence: true
  validates :price, inclusion: { in: ['$', '$$', '$$$', '$$$$'] }

  has_many :reviews
  has_many :pictures

  def num_reviews
    self.reviews.length
  end

  def average_rating
    reviews = self.reviews
    sum = 0
    reviews.each do |review|
      sum += review.rating
    end

    if num_reviews > 0
      (sum.to_f/num_reviews).round
    else
      0
    end
  end

  def self.in_bounds(bounds)
    self.where("lat < ?", bounds[:northEast][:lat])
    .where("lat > ?", bounds[:southWest][:lat])
    .where("long > ?", bounds[:southWest][:lng])
    .where("long < ?", bounds[:northEast][:lng])
  end

end
