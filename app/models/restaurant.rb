class Restaurant < ApplicationRecord
  validates :name, :address, :price, :lat, :long, :phone, :mon, :tue,
   :wed, :thu, :fri, :sat, :sun, :categories, presence: true
  validates :price, inclusion: { in: ['$', '$$', '$$$', '$$$$'] }

  has_many :reviews
  has_many :photos

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
      (sum/num_reviews).round
    else
      0
    end
  end

end
