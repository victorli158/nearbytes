# @restaurants.each do |restaurant|
#   json.set! restaurant.id do
#     json.extract! restaurant, :id, :name, :address, :city_params, :price, :phone,
#       :lat, :long, :categories, :mon, :tue, :wed, :thu,
#       :fri, :sat, :sun
#     json.averageRating restaurant.averageRating
#     json.numReviews restaurant.numReviews
#   end
# end
