## Component Hierarchy

**AuthFormContainer**
- AuthForm

**HomeContainer**
- Home
- FeaturedRestaurant

**RestaurantSearch**
- ByteSearch
- ByteSearchResults

**SearchResultsContainer**
- SearchResultsIndex
- Map
- Restaurant

**RestaurantContainer**
- RestaurantIndex

**RestaurantIndex**
- Title
- Description
- Rating
- Map
- Reviews

**ReviewFormContainer**
- NewReview

## Routes

|Path   | Component   |
|-------|-------------|
| "/sign-up" | "AuthFormContainer" |
| "/sign-in" | "AuthFormContainer" |
| "/home" | "HomeContainer" |
| "/home/restaurant/:restaurantId" | "RestaurantContainer" |
| "/home/search-results" | "SearchResultsContainer" |
| "/home/restaurant/:restaurantId/review" | "ReviewFormContainer" |
