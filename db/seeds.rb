# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Restaurant.destroy_all
# User.destroy_all
# Review.destroy_all

guest = User.create({ username: 'Guest', password: 'password' })

sam = User.create({ username: 'Sam W.', password: 'password' })
victor = User.create({ username: 'Victor L.', password: 'password' })
sean = User.create({ username: 'Sean P.', password: 'password' })
allen = User.create({ username: 'Allen C.', password: 'password' })
yong = User.create({ username: 'Yong L.', password: 'password' })
vu = User.create({ username: 'Vu P.', password: 'password' })
miles = User.create({ username: 'Miles H.', password: 'password' })
jean = User.create({ username: 'Jean C.', password: 'password' })
gary = User.create({ username: 'Gary Y.', password: 'password' })
jill = User.create({ username: 'Jill D', password: 'password' })

reviews = Review.create([
  {
    body: "Decent, but not quite as good as Sotto Mare.",
    rating: 3,
    user_id: 4,
    restaurant_id: 15
  },
  {
    body: "I can't pronounce this place's name, therefore I give it a 1.",
    rating: 1,
    user_id: 2,
    restaurant_id: 15
  },
  {
    body: "Bella Trattoria? Mama mia!",
    rating: 4,
    user_id: 10,
    restaurant_id: 15
  },
  {
    body: "Nothing special. Our food took a while to come out too.",
    rating: 3,
    user_id: 9,
    restaurant_id: 14
  },
  {
    body: "Great Italian spot. Try it out!",
    rating: 4,
    user_id: 7,
    restaurant_id: 14
  },
  {
    body: "Quite literally the best restaurant on Earth!",
    rating: 5,
    user_id: 3,
    restaurant_id: 14
  },
  {
    body: "I had heard of this place plenty of times, but wasn't fond of my breath after eating here.",
    rating: 3,
    user_id: 5,
    restaurant_id: 13
  },
  {
    body: "Everyone likes garlic, right? Service is a little slow though.",
    rating: 4,
    user_id: 10,
    restaurant_id: 13
  },
  {
    body: "The memories... Took my wife here for our first date and the food is still good!",
    rating: 5,
    user_id: 4,
    restaurant_id: 13
  },
  {
    body: "Quite a stinky place indeed. I couldn't figure out the smell. The garlic was good though!",
    rating: 2,
    user_id: 2,
    restaurant_id: 13
  },
  {
    body: "Hah! First review this time! Yeah, I don't like this place either.",
    rating: 1,
    user_id: 2,
    restaurant_id: 12
  },
  {
    body: "Literally the best! The best, I tell you!",
    rating: 5,
    user_id: 3,
    restaurant_id: 12
  },
  {
    body: "What an interesting fusion! Delicious and worth trying.",
    rating: 4,
    user_id: 6,
    restaurant_id: 12
  },
  {
    body: "Almost exactly like Chipotle, except much tastier.",
    rating: 4,
    user_id: 9,
    restaurant_id: 11
  },
  {
    body: "Literally the best Mexican food I've ever had! Literally.",
    rating: 4,
    user_id: 3,
    restaurant_id: 11
  },
  {
    body: "This place is ok, but our waiter was a bit rude.",
    rating: 3,
    user_id: 11,
    restaurant_id: 10
  },
  {
    body: "Tropisueno. No, no, no!",
    rating: 1,
    user_id: 2,
    restaurant_id: 10
  }
  {
    body: "SF's legendary Mexican restaurant - it deserves the reputation!",
    rating: 5,
    user_id: 8,
    restaurant_id: 9
  },
  {
    body: "Literally the best restaurant I've ever visited!",
    rating: 5,
    user_id: 3,
    restaurant_id: 9
  },
  {
    body: "Why would you name a restaurant that? Farolito is not even in the English dictionary.",
    rating: 1,
    user_id: 2,
    restaurant_id: 9
  }
  {
    body: "I asked and there is NO chairman at this place. Only managers.",
    rating: 1,
    user_id: 2,
    restaurant_id: 8
  },
  {
    body: "The place is alright but you might as well do hot pot at home.",
    rating: 3,
    user_id: 5,
    restaurant_id: 7
  },
  {
    body: "Literally the tastiest I've ever had!",
    rating: 5,
    user_id: 3,
    restaurant_id: 7
  },
  {
    body: "The food was tasty, the pots were not. Misleading.",
    rating: 2,
    user_id: 2,
    restaurant_id: 7
  },
  {
    body: "I'd give the food about a B-. I'd give the food poisoning an A+",
    rating: 1,
    user_id: 8,
    restaurant_id: 6
  },
  {
    body: "This is literally my favorite restaurant of all time!",
    rating: 5,
    user_id: 3,
    restaurant_id: 6
  },
  {
    body: "Frauduluent. Ate here for 2 hours and literally NO dragons to be seen!",
    rating: 1,
    user_id: 2,
    restaurant_id: 6
  },
  {
    body: "Truly an amazing experience. And I'm rich so the price is nothing.",
    rating: 4,
    user_id: 9,
    restaurant_id: 5
  },
  {
    body: "Chef Geoffrey is incredible, thank you for the best sushi I've had!",
    rating: 5,
    user_id: 10,
    restaurant_id: 5
  },
  {
    body: "Literally the best restaurant I've ever been to!",
    rating: 5,
    user_id: 3,
    restaurant_id: 5
  },
  {
    body: "ju-ni translates to the number 12. The number of pieces I got for $100.",
    rating: 1,
    user_id: 2,
    restaurant_id: 5
  },
  {
    body: "Pretty good, though I've had better ramen elsewhere.",
    rating: 4,
    user_id: 11,
    restaurant_id: 4
  },
  {
    body: "This is literally my favorite restaurant ever!",
    rating: 5,
    user_id: 3,
    restaurant_id: 4
  },
  {
    body: "If you want good ramen, just get it from the grocery store for much cheaper.",
    rating: 1,
    user_id: 2,
    restaurant_id: 4
  },
  {
    body: "This is literally my favorite restaurant ever!",
    rating: 5,
    user_id: 3,
    restaurant_id: 3
  },
  {
    body: "Udon Mugizo? More like Udon Mugi-NO.",
    rating: 1,
    user_id: 2,
    restaurant_id: 3
  },
  {
    body: "The wait is pretty long, but the wings are indeed legendary.",
    rating: 4,
    user_id: 7,
    restaurant_id: 2
  },
  {
    body: "Believe the hype! The chicken wings are to die for.",
    rating: 5,
    user_id: 6,
    restaurant_id: 2
  },
  {
    body: "This is literally my favorite restaurant ever!",
    rating: 5,
    user_id: 3,
    restaurant_id: 2
  },
  {
    body: "Why do people eat chicken wings? The chickens need those to fly!",
    rating: 1,
    user_id: 2,
    restaurant_id: 2
  },
  {
    body: "This is literally my favorite restaurant ever!",
    rating: 5,
    user_id: 3,
    restaurant_id: 1
  },
  {
    body: "I don't get it. It's not sushi and it's not a burrito either.",
    rating: 1,
    user_id: 2,
    restaurant_id: 1
  },
  {
    body: "Worth trying out, but the line is long and it's a bit pricey",
    rating: 3,
    user_id: 4,
    restaurant_id: 1
  },
  {
    body: "I'm so conflicted! The food is delicious but I can't wait that long.",
    rating: 3,
    user_id: 5,
    restaurant_id: 1
  }
  ])

restaurants = Restaurant.create([
  {
    name: "Sushirrito",
    address: "59 New Montgomery St, San Francisco, CA 94105",
    price: "$$",
    lat: 37.788139,
    long: -122.401021,
    phone:"(415) 495-7655",
    mon: "11:00 am - 4:00 pm",
    tue: "11:00 am - 4:00 pm",
    wed: "11:00 am - 4:00 pm",
    thu: "11:00 am - 4:00 pm",
    fri: "11:00 am - 4:00 pm",
    sat: "Closed",
    sun: "Closed",
    categories: "Japanese, Sushi Bars, Asian Fusion"
  },
  {
    name: "San Tung",
    address: "1031 Irving St, San Francisco, CA 94122",
    price: "$$",
    lat: 37.763696,
    long: -122.469001,
    phone: "(415) 242-0828",
    mon: "11:00 am - 3:00 pm, 5:00 pm - 9:30 pm",
    tue: "11:00 am - 3:00 pm, 5:00 pm - 9:30 pm",
    wed: "Closed",
    thu: "11:00 am - 3:00 pm, 5:00 pm - 9:30 pm",
    fri: "11:00 am - 3:00 pm, 5:00 pm - 9:30 pm",
    sat: "11:00 am - 3:00 pm, 5:00 pm - 9:30 pm",
    sun: "11:00 am - 3:00 pm, 5:00 pm - 9:30 pm",
    categories: "Chinese, Chicken Wings, Asian Fusion"
  },
  {
    name: "Udon Mugizo",
    address: "1581 Webster St, San Francisco, CA 94115",
    price: "$$",
    lat: 37.785046,
    long: -122.432093,
    phone: "(415) 931-3118",
    mon: "11:30 am - 3:00 pm, 5:30 pm - 9:30 pm",
    tue: "11:30 am - 3:00 pm, 5:30 pm - 9:30 pm",
    wed: "11:30 am - 3:00 pm, 5:30 pm - 9:30 pm",
    thu: "11:30 am - 3:00 pm, 5:30 pm - 9:30 pm",
    fri: "11:30 am - 3:00 pm, 5:30 pm - 9:30 pm",
    sat: "11:30 am - 3:00 pm, 5:00 pm - 9:30 pm",
    sun: "11:30 am - 3:00 pm, 5:00 pm - 9:00 pm",
    categories: "Japanese, Noodles"
  },
  {
    name: "Mensho Tokyo",
    address: "672 Geary St, San Francisco, CA 94102",
    price: "$$",
    lat: 37.7786599,
    long: -122.414305,
    phone: "(415) 800-8345",
    mon: "Closed",
    tue: "5:00 pm - 11:30 pm",
    wed: "5:00 pm - 11:30 pm",
    thu: "5:00 pm - 11:30 pm",
    fri: "5:00 pm - 11:30 pm",
    sat: "5:00 pm - 11:30 pm",
    sun: "5:00 pm - 11:30 pm",
    categories: "Ramen, Noodles"
  },
  {
    name: "ju-ni",
    address: "1335 Fulton St, San Francisco, CA 94117",
    price: "$$$$",
    lat: 37.776589,
    long: -122.438833,
    phone: "(415) 655-9924",
    mon: "6:00 pm - 10:30 pm ",
    tue: "6:00 pm - 10:30 pm ",
    wed: "6:00 pm - 10:30 pm ",
    thu: "6:00 pm - 10:30 pm ",
    fri: "6:00 pm - 10:30 pm ",
    sat: "6:00 pm - 10:30 pm ",
    sun: "6:00 pm - 10:30 pm ",
    categories: "Japanese, Sushi Bars"
  },
  {
    name: "Dragon Beaux",
    address: "5700 Geary Blvd, San Francisco, CA 94121",
    price: "$$",
    lat: 37.780500,
    long: -122.480722,
    phone:"(415) 333-8899",
    mon: "11:00 am - 2:30 pm, 5:30 pm - 10:00 pm",
    tue: "11:00 am - 2:30 pm, 5:30 pm - 10:00 pm",
    wed: "11:00 am - 2:30 pm, 5:30 pm - 10:00 pm",
    thu: "11:00 am - 2:30 pm, 5:30 pm - 10:00 pm",
    fri: "11:00 am - 2:30 pm, 5:30 pm - 10:00 pm",
    sat: "10:00 am - 3:00 pm, 5:30 pm - 10:00 pm",
    sun: "11:00 am - 2:30 pm, 5:30 pm - 10:00 pm",
    categories: "Dim Sum, Hot Pot"
  },
  {
    name: "Tasty Pot",
    address: "815 Clement St, San Francisco, CA 94118",
    price: "$$",
    lat: 37.782578,
    long: -122.4680006,
    phone: "(415) 666-3888",
    mon: "11:30 am - 3:00 pm, 5:00 pm - 10:00 pm",
    tue: "11:30 am - 3:00 pm, 5:00 pm - 10:00 pm",
    wed: "11:30 am - 3:00 pm, 5:00 pm - 10:00 pm",
    thu: "11:30 am - 3:00 pm, 5:00 pm - 10:00 pm",
    fri: "11:30 am - 3:00 pm, 5:00 pm - 10:00 pm",
    sat: "11:30 am - 11:00 pm",
    sun: "11:30 am - 10:00 pm",
    categories: "Taiwanese, Bubble Tea, Hot Pot"
  },
  {
    name: "The Chairman",
    address: "670 Larkin St, San Francisco, CA 94109",
    price: "$",
    lat: 37.784069,
    long: -122.417594,
    phone: "(415) 813-8800",
    mon: "11:30 am - 9:00 pm",
    tue: "11:30 am - 9:00 pm",
    wed: "11:30 am - 9:00 pm",
    thu: "11:30 am - 9:00 pm",
    fri: "11:30 am - 9:00 pm",
    sat: "11:30 am - 9:00 pm",
    sun: "11:30 am - 7:00 pm",
    categories: "Taiwanese"
  },
  {
    name: "El Farolito",
    address: "2779 Mission St, San Francisco, CA 94110",
    price: "$",
    lat: 37.752656,
    long: -122.418103,
    phone: "(415) 824-7877",
    mon: "10:00 am - 2:30 am",
    tue: "10:00 am - 2:30 am",
    wed: "10:00 am - 2:30 am",
    thu: "10:00 am - 2:30 am",
    fri: "10:00 am - 3:30 am",
    sat: "10:00 am - 3:30 am",
    sun: "10:00 am - 2:30 am",
    categories: "Mexican, Seafood, Sandwiches"
  },
  {
    name: "Tropisueno",
    address: "75 Yerba Buena Ln, San Francisco, CA 94103",
    price: "$$",
    lat: 37.785349,
    long: -122.403828,
    phone: "(415) 243-0299",
    mon: "10:00 am - 10:00 pm",
    tue: "10:00 am - 10:00 pm",
    wed: "10:00 am - 10:00 pm",
    thu: "10:00 am - 10:30 pm",
    fri: "10:00 am - 10:30 pm",
    sat: "11:00 am - 10:30 pm",
    sun: "11:00 am - 10:00 pm",
    categories: "Mexican, Cocktail Bars"
  },
  {
    name: "Don Pisto's",
    address: "510 Union St, San Francisco, CA 94133",
    price: "$$",
    lat: 37.800742,
    long: -122.407954,
    phone: "(415) 395-0939",
    mon: "5:30 pm - 11:00 pm",
    tue: "5:30 pm - 11:00 pm",
    wed: "5:30 pm - 11:00 pm",
    thu: "5:30 pm - 11:00 pm",
    fri: "5:30 pm - 11:00 pm",
    sat: "11:00 am - 11:00 pm",
    sun: "10:00 am - 10:00 pm",
    categories: "Mexican"
  },
  {
    name: "Tacorea",
    address: "809 Bush St, San Francisco, CA 94108",
    price: "$",
    lat: 37.789745,
    long: -122.410579,
    phone: "(415) 885-1325",
    mon: "11:30 am - 3:00 pm, 6:00 pm - 9:00 pm",
    tue: "11:30 am - 3:00 pm, 6:00 pm - 9:00 pm",
    wed: "11:30 am - 3:00 pm, 6:00 pm - 9:00 pm",
    thu: "11:30 am - 3:00 pm, 6:00 pm - 9:00 pm",
    fri: "11:30 am - 3:00 pm, 6:00 pm - 9:00 pm",
    sat: "11:30 am - 3:00 pm, 6:00 pm - 9:00 pm",
    sun: "11:30 am - 3:00 pm, 6:00 pm - 9:00 pm",
    categories: "Mexican, Korean, Latin American"
  },
  {
    name: "The Stinking Rose",
    address: "325 Columbus Ave, San Francisco, CA 94133",
    price: "$$",
    lat: 37.798125,
    long: -122.407543,
    phone: "(415) 781-7673",
    mon: "11:30 am - 10:00 pm",
    tue: "11:30 am - 10:00 pm",
    wed: "11:30 am - 10:00 pm",
    thu: "11:30 am - 10:00 pm",
    fri: "11:30 am - 10:00 pm",
    sat: "11:30 am - 10:00 pm",
    sun: "11:30 am - 10:00 pm",
    categories: "Italian, Seafood"
  },
  {
    name: "Sotto Mare",
    address: "552 Green St, San Francisco, CA 94133",
    price: "$$",
    lat: 37.799768,
    long: -122.408316,
    phone: "(415) 398-3181",
    mon: "11:30 am - 9:30 pm",
    tue: "11:30 am - 9:30 pm",
    wed: "11:30 am - 9:30 pm",
    thu: "11:30 am - 9:30 pm",
    fri: "11:30 am - 9:30 pm",
    sat: "11:30 am - 9:30 pm",
    sun: "Closed",
    categories: "Seafood, Italian, Salad"
  },
  {
    name: "Bella Trattoria",
    address: "3854 Geary Blvd, San Francisco, CA 94118",
    price: "$$",
    lat: 37.781364,
    long: -122.460937,
    phone: "(415) 221-0305",
    mon: "5:00 pm - 9:30 pm",
    tue: "5:00 pm - 9:30 pm",
    wed: "5:00 pm - 9:30 pm",
    thu: "5:00 pm - 9:30 pm",
    fri: "12:00 pm - 3:00 pm, 5:00 pm - 10:30 pm",
    sat: "5:00 pm - 10:30 pm",
    sun: "12:00 pm - 9:00 pm",
    categories: "Italian"
  },
  {
    name: "Beretta",
    address: "1199 Valencia St, San Francisco, CA 94110",
    price: "$$",
    lat: 37.753815,
    long: -122.420729,
    phone: "(415) 695-1199",
    mon: "5:30 pm - 1:00 am",
    tue: "5:30 pm - 1:00 am",
    wed: "5:30 pm - 1:00 am",
    thu: "5:30 pm - 1:00 am",
    fri: "5:30 pm - 1:00 am",
    sat: "11:00 am - 1:00 am",
    sun: "11:00 am - 1:00 am",
    categories: "Italian, Bars, Pizza"
  },
  {
    name: "Little Star Pizza",
    address: "846 Divisadero St, San Francisco, CA 94117",
    price: "$$",
    lat: 37.777529,
    long: -122.438003,
    phone: "(415) 441-1118",
    mon: "5:00 pm - 9:30 pm",
    tue: "5:00 pm - 9:30 pm",
    wed: "5:00 pm - 9:30 pm",
    thu: "5:00 pm - 9:30 pm",
    fri: "4:00 pm - 10:30 pm",
    sat: "3:00 pm - 10:30 pm",
    sun: "3:00 pm - 9:30 pm",
    categories: "Pizza, Salad, Chicken Wings"
  },
  {
    name: "Golden Boy Pizza",
    address: "542 Green St, San Francisco, CA 94133",
    price: "$",
    lat: 37.799715,
    long: -122.408071,
    phone: "(415) 982-9738",
    mon: "11:30 am - 12:30 am",
    tue: "11:30 am - 12:30 am",
    wed: "11:30 am - 12:30 am",
    thu: "11:30 am - 12:30 am",
    fri: "11:30 am - 2:30 am",
    sat: "11:30 am - 2:30 am",
    sun: "11:30 am - 12:30 am",
    categories: "Pizza, Italian"
  },
  {
    name: "Super Duper Burgers",
    address: "721 Market St, San Francisco, CA 94103",
    price: "$$",
    lat: 37.786967,
    long: -122.403995,
    phone: "(415) 538-3437",
    mon: "8:00 am - 11:00 pm",
    tue: "8:00 am - 11:00 pm",
    wed: "8:00 am - 11:00 pm",
    thu: "8:00 am - 11:30 pm",
    fri: "8:00 am - 11:30 pm",
    sat: "10:30 am - 11:30 pm",
    sun: "10:30 am - 10:00 pm",
    categories: "Burgers"
  },
  {
    name: "In-N-Out Burger",
    address: "333 Jefferson St, San Francisco, CA 94133",
    price: "$",
    lat: 37.807730,
    long: -122.418533,
    phone: "(800) 786-1000",
    mon: "10:30 am - 1:00 am",
    tue: "10:30 am - 1:00 am",
    wed: "10:30 am - 1:00 am",
    thu: "10:30 am - 1:00 am",
    fri: "10:30 am - 1:30 am",
    sat: "10:30 am - 1:30 am",
    sun: "10:30 am - 1:00 am",
    categories: "Fast Food, Burgers"
  },
  {
    name: "Burma Superstar",
    address: "309 Clement St, San Francisco, CA 94118",
    price: "$$",
    lat: 37.78282831,
    long: -122.462555,
    phone: "(415) 387-2147",
    mon: "11:30 am - 3:00 pm, 5:00 pm - 9:30 pm",
    tue: "11:30 am - 3:00 pm, 5:00 pm - 9:30 pm",
    wed: "11:30 am - 3:00 pm, 5:00 pm - 9:30 pm",
    thu: "11:30 am - 3:00 pm, 5:00 pm - 9:30 pm",
    fri: "11:30 am - 3:00 pm, 5:00 pm - 10:00 pm",
    sat: "11:30 am - 3:00 pm, 5:00 pm - 10:00 pm",
    sun: "11:30 am - 3:00 pm, 5:00 pm - 9:30 pm",
    categories: "Burmese"
  },
  {
    name: "House of Prime Rib",
    address: "1906 Van Ness Ave, San Francisco, CA 94109",
    price: "$$$",
    lat: 37.793452,
    long: -122.422543,
    phone: "(415) 885-4605",
    mon: "5:30 pm - 10:00 pm",
    tue: "5:30 pm - 10:00 pm",
    wed: "5:30 pm - 10:00 pm",
    thu: "5:30 pm - 10:00 pm",
    fri: "5:00 pm - 10:00 pm",
    sat: "4:00 pm - 10:00 pm",
    sun: "4:00 pm - 10:00 pm",
    categories: "American (Traditional), Steakhouses"
  },
  {
    name: "Alexander’s Steakhouse",
    address: "448 Brannan St, San Francisco, CA 94107",
    price:"$$$$",
    lat: 37.779306,
    long: -122.395699,
    phone: "(415) 495-1111",
    mon: "5:30 pm - 9:00 pm",
    tue: "5:30 pm - 9:00 pm",
    wed: "5:30 pm - 9:00 pm",
    thu: "5:30 pm - 9:00 pm",
    fri: "5:30 pm - 10:00 pm",
    sat: "5:30 pm - 10:00 pm",
    sun: "5:30 pm - 9:00 pm",
    categories: "Steakhouses"
  },
  {
    name: "The Halal Guys",
    address: "340 O'Farrell St, San Francisco, CA 94102",
    price: "$$",
    lat: 37.786284,
    long: -122.410506,
    phone: "(415) 549-3454",
    mon: "10:00 am - 2:00 am",
    tue: "10:00 am - 2:00 am",
    wed: "10:00 am - 2:00 am",
    thu: "10:00 am - 4:00 am",
    fri: "10:00 am - 4:00 am",
    sat: "10:00 am - 4:00 am",
    sun: "10:00 am - 2:00 am",
    categories: "Halal, Middle Eastern, Mediterranean"
  },
  {
    name: "Gary Danko",
    address: "800 N Point St, San Francisco, CA 94109",
    price: "$$$$",
    lat: 37.805846,
    long: -122.420607,
    phone: "(415) 749-2060",
    mon: "5:30 pm - 10:00 pm",
    tue: "5:30 pm - 10:00 pm",
    wed: "5:30 pm - 10:00 pm",
    thu: "5:30 pm - 10:00 pm",
    fri: "5:30 pm - 10:00 pm",
    sat: "5:30 pm - 10:00 pm",
    sun: "5:30 pm - 10:00 pm",
    categories: "American (New), French"
  },
  {
    name: "The House",
    address: "1230 Grant Ave, San Francisco, CA 94133",
    price: "$$$",
    lat: 37.798470,
    long: -122.407051,
    phone: "(415) 986-8612",
    mon: "11:30 am - 3:00 pm, 5:30 pm - 10:00 pm",
    tue: "11:30 am - 3:00 pm, 5:30 pm - 10:00 pm",
    wed: "11:30 am - 3:00 pm, 5:30 pm - 10:00 pm",
    thu: "11:30 am - 3:00 pm, 5:30 pm - 10:00 pm",
    fri: "11:30 am - 3:00 pm, 5:30 pm - 10:00 pm",
    sat: "11:30 am - 3:00 pm, 5:30 pm - 10:00 pm",
    sun: "11:30 am - 3:00 pm, 5:30 pm - 10:00 pm",
    categories: "Asian Fusion"
  },
  {
    name: "Kokkari Estiatorio",
    address: "200 Jackson St, San Francisco, CA 94111",
    price: "$$$",
    lat: 37.797030,
    long:  -122.399956,
    phone: "(415) 981-0983",
    mon: "11:30 am - 2:30 pm, 5:30 pm - 10:00 pm",
    tue: "11:30 am - 2:30 pm, 5:30 pm - 10:00 pm",
    wed: "11:30 am - 2:30 pm, 5:30 pm - 10:00 pm",
    thu: "11:30 am - 2:30 pm, 5:30 pm - 10:00 pm",
    fri: "11:30 am - 2:30 pm, 5:30 pm - 10:00 pm",
    sat: "5:00 pm - 11:00 pm",
    sun: "5:00 pm - 10:00 pm",
    categories: "Greek, Mediterranean"
  },
  {
    name: "Hog Island Oyster Co.",
    address: "1 Ferry Bldg, San Francisco, CA 94111",
    price: "$$",
    lat: 37.795570,
    long: -122.393321,
    phone: "(415) 391-7117",
    mon: "11:00 am - 9:00 pm",
    tue: "11:00 am - 9:00 pm",
    wed: "11:00 am - 9:00 pm",
    thu: "11:00 am - 9:00 pm",
    fri: "11:00 am - 9:00 pm",
    sat: "11:00 am - 9:00 pm",
    sun: "11:00 am - 9:00 pm",
    categories: "Seafood, Seafood Markets, Live/Raw Food"
  },
  {
    name: "Nopa",
    address: "560 Divisadero St, San Francisco, CA 94117",
    price: "$$$",
    lat: 37.774901,
    long: -122.437509,
    phone: "(415) 864-8643",
    mon: "5:00 pm - 12:00 am",
    tue: "5:00 pm - 12:00 am",
    wed: "5:00 pm - 12:00 am",
    thu: "5:00 pm - 12:00 am",
    fri: "5:00 pm - 1:00 am",
    sat: "11:00 am - 1:00 am",
    sun: "11:00 am - 12:00 am",
    categories: "American (New), Modern European"
  },
  {
    name: "Bi-Rite Creamery",
    address: "3692 18th St, San Francisco, CA 94110",
    price: "$",
    lat: 37.761623,
    long: -122.425742,
    phone: "(415) 626-5600",
    mon: "11:00am - 10:00pm",
    tue: "11:00am - 10:00pm",
    wed: "11:00am - 10:00pm",
    thu: "11:00am - 10:00pm",
    fri: "11:00am - 10:00pm",
    sat: "11:00am - 10:00pm",
    sun: "11:00am - 10:00pm",
    categories: "Ice Cream & Frozen Yogurt, Bakeries"
  },
])
