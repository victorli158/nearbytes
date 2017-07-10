class Review < ApplicationRecord
  validates :body, :rating, :user_id, :restaurant_id, presence: true
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5], message: "can't be blank" }

  belongs_to :restaurant
  belongs_to :user

end
