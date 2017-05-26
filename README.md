# NearBytes

[NearBytes Live Link](https://nearbytes.herokuapp.com)

NearBytes is a full-stack web application inspired by Yelp for finding
nearby restaurants. It was built with React/Redux, Ruby on Rails,
and PostgreSQL within a two-week timeframe.

![screenshot](http://res.cloudinary.com/nearbytes/image/upload/c_scale,q_100,w_1000/v1495835944/Screen_Shot_2017-05-26_at_2.58.17_PM_qiqmgb.png)

## Features
- User account creation and sign-in with secure authentication
- Search for restaurants, each of which has a detailed page including average rating, reviews, business info, and photos
- Signed in users may add reviews to restaurants
- Google Maps API implementation allows users to locate restaurants on maps

### Restaurant Search
![screenshot](http://res.cloudinary.com/nearbytes/image/upload/c_scale,q_100,w_1000/v1495836966/Screen_Shot_2017-05-26_at_3.15.21_PM_rosxvg.png)

Users are able to search for restaurants and results will be returned based on names, categories, or a few keywords. For example, "restaurants" will return all businesses in the database except for the one seeded ice cream shop, while "cheap" returns all businesses with a price level of "$". The search function is case-insensitive and returns all businesses that include the string entered into the search bar anywhere within their names or categories. Search result locations are shown in the adjacent Google Maps element as well.

See below for search code snippet from restaurants_controller:
```ruby
def index
  if params[:query] === "restaurants"
    @restaurants = Restaurant.where.not("name = 'Bi-Rite Creamery'")
  elsif params[:query].downcase === "cheap"
    @restaurants = Restaurant.where("price = '$'")
  elsif params[:query] === ""
    @restaurants = Restaurant.all
  else
    query = '%' + params[:query].split.join('%') + '%'
    @restaurants = Restaurant.where("categories ILIKE :query OR name ILIKE :query", query: query)
  end
  render :index
end
```
### Reviews
![screenshot](http://res.cloudinary.com/nearbytes/image/upload/c_scale,q_100,w_1000/v1495838117/Screen_Shot_2017-05-26_at_3.34.12_PM_wlhzov.png)

Users can submit reviews upon choosing a rating and entering a value into the text area. Ratings will render differently when hovering over each rating star, and persist if one is clicked. Submitted reviews will render on the restaurant's detailed page and impact the restaurant's average rating.

## Future Improvements

### User Profiles

Logged in users will be able to view their own profiles, which will show their avatar picture, submitted reviews, and other information they share about themselves. To implement this, I would create a separate user detail page, and the back-end structure is already set up to support this functionality.

### Improved Search Function

Filters can be added, which would allow for users to filter by price, category, and "open now" based on the current time and date, which would be compared to the days and hours already tracked in each seeded restaurant's values. These filters could be added to the search results page, and send additional AJAX queries to retrieve filtered search results from the database.
