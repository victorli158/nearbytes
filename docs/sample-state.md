```js
{
  currentUser: {
    id: 1,
    username: "user1"
  },
  forms: {
    signUp: {errors: []},
    logIn: {errors: []},
    createReview: {errors: ["body can't be blank"]}
    createRestaurant: {errors: ["body can't be blank"]}
  },
  reviews: {
    1: {
      body: "Like Chipotle but for Vietnamese cuisine!",
      rating: 5,
      user_id: 1,
      restaurant_id: 1
      photos: [
        {
          id: 1,
          url: "reviewphoto.com/example"
        }
      ]
    }
  },
  restaurants: {
    1: {
      name: "FreshRoll Vietnamese Rolls and Bowls",
      description: "A Vietnamese restaurant known for its fresh ingredients and authentic cuisine"
      address: "220 Bush St. San Francisco, CA 94104"
      hours: "M-W 11am - 3pm"
      price: $
      lat: "37.791324"
      long: "-122.401401"
      image_url: "eatatfreshroll.com/freshrollpic.jpg"
    }
  }
}
