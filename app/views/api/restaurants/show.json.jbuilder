json.extract! @restaurant, :id, :name, :address, :city_params, :mon, :tue, :wed, :thu,
  :fri, :sat, :sun, :price, :lat, :long, :phone, :categories

json.reviews @restaurant.reviews.order("created_at DESC") do |review|
  json.id review.id
  json.created_at review.created_at.strftime("%m/%d/%Y")
  json.rating review.rating
  json.body review.body
  json.user_id review.user_id
  json.user do
    json.extract! review.user, :username, :avatar_url
  end
end

json.pictures @restaurant.pictures do |picture|
  json.id picture.id
  json.restaurant_id picture.restaurant_id
  json.url picture.url
end

json.averageRating @restaurant.average_rating
json.numReviews @restaurant.num_reviews
