json.extract! @restaurant, :id, :name, :address, :mon, :tue, :wed, :thu,
  :fri, :sat, :sun, :price, :lat, :long, :phone, :categories

json.reviews @restaurant.reviews do |review|
  json.id review.id
  json.created_at review.created_at.strftime("%m/%d/%Y")
  json.rating review.rating
  json.body review.body
  json.user_id review.user_id
  json.user do
    json.extract! review.user, :username
  end
end

json.averageRating @restaurant.average_rating
json.numReviews @restaurant.num_reviews