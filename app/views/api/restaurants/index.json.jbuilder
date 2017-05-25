@restaurants.each do |restaurant|
  json.set! restaurant.id do
    json.extract! restaurant, :id, :name, :address, :city_params, :price, :phone,
      :lat, :long, :categories, :mon, :tue, :wed, :thu,
      :fri, :sat, :sun
    json.averageRating restaurant.average_rating
    json.numReviews restaurant.num_reviews
    json.pictures restaurant.pictures do |picture|
      json.id picture.id
      json.restaurant_id picture.restaurant_id
      json.url picture.url
    end
  end
end
