# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all
User.destroy_all
Review.destroy_all
Picture.destroy_all

guest = User.create({ username: 'Guest', password: 'password', avatar_url: 'http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495575175/user_60_square_hsdh3s.png' })

sam = User.create({ username: 'Sam W.', password: 'password', avatar_url: 'http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495557793/326801_10150325362227593_1346911523_o_doyjqa.jpg' })
victor = User.create({ username: 'Victor L.', password: 'password', avatar_url: 'http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495557961/AAEAAQAAAAAAAAoHAAAAJGNkZDYzMDQ1LWJiYzItNDkyYy04ZjcyLWFmZDA1OTNjZjNlYQ_vrqpn8.jpg' })
sean = User.create({ username: 'Sean P.', password: 'password', avatar_url: 'http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495558030/AAEAAQAAAAAAAAngAAAAJDEyNzFlYmMwLTAwODgtNGQyYS04MjFmLTA1ZmEzYjM1MjcxYg_wgcdmf.jpg' })
allen = User.create({ username: 'Allen C.', password: 'password', avatar_url: 'http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495558175/2cd2a14_jlhixa.jpg' })
yong = User.create({ username: 'Yong L.', password: 'password', avatar_url: 'http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495558243/17971963_3385871523003_3202628454023634621_o_rlcmsp.jpg' })
vu = User.create({ username: 'Vu P.', password: 'password', avatar_url: 'http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495558356/T03GU501J-U4PQT3RL5-5fdae110eb6b-512_mbyojx.jpg' })
miles = User.create({ username: 'Miles H.', password: 'password', avatar_url: 'http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495558451/AAEAAQAAAAAAAAmSAAAAJGUwOThlMmJhLTM3Y2QtNDk5MS1iNWUzLTE1NzY3Mjc4M2ZmZQ_irdiyj.jpg' })
jean = User.create({ username: 'Jean C.', password: 'password', avatar_url: 'http://res.cloudinary.com/nearbytes/image/upload/v1495558484/Ml1vrkhwh.jpg' })
gary = User.create({ username: 'Gary Y.', password: 'password', avatar_url: 'http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495558562/AAEAAQAAAAAAAAlGAAAAJGNhOWVkN2E0LTE2OTQtNDIwMC1iMjIzLWE1Njk0MzEyYmNlZA_gh0inz.jpg' })
jill = User.create({ username: 'Jill D.', password: 'password', avatar_url: 'http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495558600/AAEAAQAAAAAAAApaAAAAJDNkM2E1MDBlLTFkNTAtNDc5NS1hMDkyLTg2ZjI1ZGQ4Yjk1Mw_emafrz.jpg' })

restaurants = Restaurant.create([
  {
    name: "Sushirrito",
    address: "59 New Montgomery St",
    city_params: "San Francisco, CA 94105",
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
    address: "1031 Irving St",
    city_params: "San Francisco, CA 94122",
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
    address: "1581 Webster St",
    city_params: "San Francisco, CA 94115",
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
    address: "672 Geary St",
    city_params: "San Francisco, CA 94102",
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
    address: "1335 Fulton St",
    city_params: "San Francisco, CA 94117",
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
    address: "5700 Geary Blvd",
    city_params: "San Francisco, CA 94121",
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
    address: "815 Clement St",
    city_params: "San Francisco, CA 94118",
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
    address: "670 Larkin St",
    city_params: "San Francisco, CA 94109",
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
    address: "2779 Mission St",
    city_params: "San Francisco, CA 94110",
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
    address: "75 Yerba Buena Ln",
    city_params: "San Francisco, CA 94103",
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
    address: "510 Union St",
    city_params: "San Francisco, CA 94133",
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
    address: "809 Bush St",
    city_params: "San Francisco, CA 94108",
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
    address: "325 Columbus Ave",
    city_params: "San Francisco, CA 94133",
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
    address: "552 Green St",
    city_params: "San Francisco, CA 94133",
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
    address: "3854 Geary Blvd",
    city_params: "San Francisco, CA 94118",
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
    address: "1199 Valencia St",
    city_params: "San Francisco, CA 94110",
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
    address: "846 Divisadero St",
    city_params: "San Francisco, CA 94117",
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
    address: "542 Green St",
    city_params: "San Francisco, CA 94133",
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
    address: "721 Market St",
    city_params: "San Francisco, CA 94103",
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
    address: "333 Jefferson St",
    city_params: "San Francisco, CA 94133",
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
    address: "309 Clement St",
    city_params: "San Francisco, CA 94118",
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
    address: "1906 Van Ness Ave",
    city_params: "San Francisco, CA 94109",
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
    address: "448 Brannan St",
    city_params: "San Francisco, CA 94107",
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
    address: "340 O'Farrell St",
    city_params: "San Francisco, CA 94102",
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
    address: "800 N Point St",
    city_params: "San Francisco, CA 94109",
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
    address: "1230 Grant Ave",
    city_params: "San Francisco, CA 94133",
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
    address: "200 Jackson St",
    city_params: "San Francisco, CA 94111",
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
    address: "1 Ferry Bldg",
    city_params: "San Francisco, CA 94111",
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
    address: "560 Divisadero St",
    city_params: "San Francisco, CA 94117",
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
    address: "3692 18th St",
    city_params: "San Francisco, CA 94110",
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
  }
])

reviews = Review.create([
  {
    body: "My kids love this place! We'll be stopping by regularly from now on.",
    user_id: 3,
    rating: 4,
    restaurant_id: 30
  },
  {
    body: "Perfect on a hot summer day!",
    user_id: 10,
    rating: 5,
    restaurant_id: 30
  },
  {
    body: "I mean, it's just ice cream. I didn't notice anything special.",
    user_id: 6,
    rating: 3,
    restaurant_id: 30
  },
  {
    body: "Believe the hype! This ice cream was the best I've had in years.",
    user_id: 9,
    rating: 5,
    restaurant_id: 30
  },
  {
    body: "My husband took me here for my birthday and it was pretty decent!",
    user_id: 9,
    rating: 4,
    restaurant_id: 29
  },
  {
    body: "When I feel like splurging, I come here. Amazing selection!",
    user_id: 10,
    rating: 4,
    restaurant_id: 29
  },
  {
    body: "Literally the best place named Nopa I've ever been to!",
    user_id: 3,
    rating: 5,
    restaurant_id: 29
  },
  {
    body: "Oysters, a great view, what more could you ask for?",
    user_id: 6,
    rating: 4,
    restaurant_id: 28
  },
  {
    body: "Is it just me or are oysters overrated? Paid a pretty penny and wasn't full.",
    user_id: 11,
    rating: 2,
    restaurant_id: 28
  },
  {
    body: "Such fresh oysters at such a beautiful location!",
    user_id: 6,
    rating: 4,
    restaurant_id: 28
  },
  {
    body: "Even their salad is great here! Great menu that does everything right.",
    user_id: 10,
    rating: 5,
    restaurant_id: 27
  },
  {
    body: "This place is quite busy so I won't fault the waiters for being slow. But the food is to die for.",
    user_id: 5,
    rating: 4,
    restaurant_id: 27
  },
  {
    body: "I actually came here with a company I was interviewing with. Didn't get the job, but got the grilled octopus!",
    user_id: 8,
    rating: 5,
    restaurant_id: 27,
  },
  {
    body: "Delicious, and waiters were very attentive!",
    user_id: 4,
    rating: 5,
    restaurant_id: 26
  },
  {
    body: "This place is ok, but I feel it doesn't do Asian food justice.",
    user_id: 6,
    rating: 3,
    restaurant_id: 26
  },
  {
    body: "I'm a pretty big fan of Asian fusion places, and this place does it right.",
    user_id: 11,
    rating: 4,
    restaurant_id: 26
  },
  {
    body: "I proposed to my girlfriend here, but she said no. But the food was amazing!",
    user_id: 5,
    rating: 5,
    restaurant_id: 25
  },
  {
    body: "Imagine the best food you could ever eat. Now imagine this place is twice as good.",
    user_id: 8,
    rating: 5,
    restaurant_id: 25
  },
  {
    body: "My boyfriend and I loved this place! What an experience, Michelin star well-deserved.",
    user_id: 11,
    rating: 5,
    restaurant_id: 25
  },
  {
    body: "Ok, this place is kind of good.",
    user_id: 2,
    rating: 5,
    restaurant_id: 25
  },
  {
    body: "The red sauce is no joke. Still chugging milk. But tasty!",
    user_id: 10,
    rating: 4,
    restaurant_id: 24
  },
  {
    body: "I was excited for this place to open, but it's soo overrated!",
    user_id: 9,
    rating: 3,
    restaurant_id: 24
  },
  {
    body: "Literally the best food in San Francisco! Wow!",
    user_id: 3,
    rating: 5,
    restaurant_id: 24
  },
  {
    body: "teh wine is soo god. lik realy good, had 7 glases",
    user_id: 6,
    rating: 5,
    restaurant_id: 23
  },
  {
    body: "It's pretty good! But I don't know that I'd pay so much for this again.",
    user_id: 8,
    rating: 4,
    restaurant_id: 23
  },
  {
    body: "The most decadent meal I've had in ages. My life is changed.",
    user_id: 5,
    rating: 5,
    restaurant_id: 23
  },
  {
    body: "Too expensive. I can't even get in.",
    user_id: 2,
    rating: 1,
    restaurant_id: 23
  },
  {
    body: "Took my co-workers here and we loved it. Great food!",
    user_id: 6,
    rating: 4,
    restaurant_id: 22
  },
  {
    body: "Best prime rib you can find anywhere. Even got in without a reservation!",
    user_id: 4,
    rating: 5,
    restaurant_id: 22
  },
  {
    body: "I adore this place. Yes the meat is great, but you'll enjoy yourself more with a variety of items.",
    user_id: 9,
    rating: 4,
    restaurant_id: 22
  },
  {
    body: "All you can eat prime rib?! You have to be kidding me!",
    rating: 4,
    user_id: 10,
    restaurant_id: 22
  },
  {
    body: "Wow what an interesting cuisine I'd never experienced! Will come here again.",
    rating: 5,
    user_id: 4,
    restaurant_id: 21
  },
  {
    body: "I tried to look for Burma on a map and couldn't find it. Fake.",
    rating: 1,
    user_id: 2,
    restaurant_id: 21
  },
  {
    body: "I'd never had Burmese food before and I think I'm in love!",
    user_id: 7,
    rating: 5,
    restaurant_id: 21
  },
  {
    body: "I believed in the hype but my stomach was a bit upset after.",
    user_id: 8,
    rating: 3,
    restaurant_id: 21
  },
  {
    body: "Every time I visit home, I just have to stop by here!",
    user_id: 11,
    rating: 4,
    restaurant_id: 20
  },
  {
    body: "They sure make a mean burger, but clean the bathroom more, please!",
    user_id: 8,
    rating: 4,
    restaurant_id: 20
  },
  {
    body: "Always good any time, anywhere. Pretty much the only fast food I eat!",
    user_id: 6,
    rating: 5,
    restaurant_id: 20
  },
  {
    body: "How can you not like In-N-Out? Best fast food burgers ever.",
    rating: 4,
    user_id: 9,
    restaurant_id: 20
  },
  {
    body: "There was nothing 'In-N-Out' about this place. Such a long line!",
    rating: 1,
    user_id: 2,
    restaurant_id: 20
  },
  {
    body: "Great place! Add bacon to your burger - you won't regret it.",
    rating: 4,
    user_id: 11,
    restaurant_id: 19
  },
  {
    body: "Literally the best burger spot of all time!",
    rating: 5,
    user_id: 3,
    restaurant_id: 19
  },
  {
    body: "I've had better, but it's definitely a solid burger spot.",
    rating: 4,
    user_id: 10,
    restaurant_id: 19
  },
  {
    body: "They messed up my order, so they gave me one more free burger. AWESOME.",
    rating: 5,
    user_id: 6,
    restaurant_id: 19
  },
  {
    body: "Was delicious until I found a fly in our salad.",
    rating: 3,
    user_id: 4,
    restaurant_id: 18
  },
  {
    body: "Not quite as good as Little Star Pizza, but still good.",
    rating: 4,
    user_id: 9,
    restaurant_id: 18
  },
  {
    body: "I don't like pizza. I don't know why I came here.",
    rating: 1,
    user_id: 2,
    restaurant_id: 18
  },
  {
    body: "Pretty good pizza! I come here when I get a pizza craving.",
    rating: 4,
    user_id: 5,
    restaurant_id: 17
  },
  {
    body: "Even the pepperoni pizza is great. One of my go-to spots!",
    rating: 4,
    user_id: 10,
    restaurant_id: 17
  },
  {
    body: "This is literally the best pizza in the world!",
    user_id: 3,
    rating: 5,
    restaurant_id: 17
  },
  {
    body: "This might be my favorite Italian place in the city!",
    user_id: 10,
    rating: 4,
    restaurant_id: 16
  },
  {
    body: "Literally can't find any better than this!",
    user_id: 3,
    rating: 5,
    restaurant_id: 16
  },
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
    body: "Bella Trattoria? Mama mia! The spaghetti, simple as it is, is delicious!",
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
  },
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
  },
  {
    body: "I heard this place is good, but the line was too long to get in.",
    rating: 1,
    user_id: 9,
    restaurant_id: 8
  },
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
    body: "Why do people eat chicken wings? The chickens need those!",
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

pictures = Picture.create([
  {
    restaurant_id: 1,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495492636/o_g28ahv.jpg"
  },
  {
    restaurant_id: 1,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495492728/o_jlkxzg.jpg"
  },
  {
    restaurant_id: 1,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495492840/o_r5nyro.jpg"
  },
  {
    restaurant_id: 2,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495492923/o_rzt0tf.jpg"
  },
  {
    restaurant_id: 2,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495492987/o_bjc1sf.jpg"
  },
  {
    restaurant_id: 2,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495493025/o_e2aqpv.jpg"
  },
  {
    restaurant_id: 3,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495493094/o_krdkls.jpg"
  },
  {
    restaurant_id: 3,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495493150/o_wh5hws.jpg"
  },
  {
    restaurant_id: 3,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495493192/o_yp5fyg.jpg"
  },
  {
    restaurant_id: 4,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495493617/o_ld2a6n.jpg"
  },
  {
    restaurant_id: 4,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495493739/o_otly8h.jpg"
  },
  {
    restaurant_id: 4,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495493791/o_pl2djh.jpg"
  },
  {
    restaurant_id: 5,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495493860/o_bolqep.jpg"
  },
  {
    restaurant_id: 5,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495493924/o_ox3p5f.jpg"
  },
  {
    restaurant_id: 5,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495493966/o_xfbu2o.jpg"
  },
  {
    restaurant_id: 6,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495494375/o_moyyff.jpg"
  },
  {
    restaurant_id: 6,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495494431/o_qfw4mh.jpg"
  },
  {
    restaurant_id: 6,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495494505/o_rgqtnq.jpg"
  },
  {
    restaurant_id: 7,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495495636/o_cn40sn.jpg"
  },
  {
    restaurant_id: 7,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495495715/o_zals8s.jpg"
  },
  {
    restaurant_id: 7,
    url: "http://res.cloudinary.com/nearbytes/image/upload/v1495495746/o_mvhpvg.jpg"
  },
  {
    restaurant_id: 8,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495495929/o_f1mwnx.jpg"
  },
  {
    restaurant_id: 8,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495495973/o_gwnsxm.jpg"
  },
  {
    restaurant_id: 8,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495496139/o_r8wcol.jpg"
  },
  {
    restaurant_id: 9,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495496203/o_qwlvld.jpg"
  },
  {
    restaurant_id: 9,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495496230/o_ojrt6w.jpg"
  },
  {
    restaurant_id: 9,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495496322/o_z7ntkl.jpg"
  },
  {
    restaurant_id: 10,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495496406/o_bkxodx.jpg"
  },
  {
    restaurant_id: 10,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495496443/o_laoxni.jpg"
  },
  {
    restaurant_id: 10,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495496496/o_nbuqew.jpg"
  },
  {
    restaurant_id: 11,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495496545/o_twqruc.jpg"
  },
  {
    restaurant_id: 11,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495496569/o_qbnuyg.jpg"
  },
  {
    restaurant_id: 11,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495496600/o_qayfdq.jpg"
  },
  {
    restaurant_id: 12,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495496646/o_erfyqe.jpg"
  },
  {
    restaurant_id: 12,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495496685/o_wqlkpq.jpg"
  },
  {
    restaurant_id: 12,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495496717/o_acdnhq.jpg"
  },
  {
    restaurant_id: 13,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495496771/o_cd1mko.jpg"
  },
  {
    restaurant_id: 13,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495496813/o_puuv76.jpg"
  },
  {
    restaurant_id: 13,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495496835/o_vefrof.jpg"
  },
  {
    restaurant_id: 14,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495496885/o_f5fgny.jpg"
  },
  {
    restaurant_id: 14,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495496908/o_p2niop.jpg"
  },
  {
    restaurant_id: 14,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495496955/o_tjso2v.jpg"
  },
  {
    restaurant_id: 15,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495497000/o_v8sim7.jpg"
  },
  {
    restaurant_id: 15,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495497054/o_o6vgli.jpg"
  },
  {
    restaurant_id: 15,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495497097/o_vmig4o.jpg"
  },
  {
    restaurant_id: 16,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495497312/o_w1mgnk.jpg"
  },
  {
    restaurant_id: 16,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495497360/o_ane1ir.jpg"
  },
  {
    restaurant_id: 16,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495497531/o_vn50mu.jpg"
  },
  {
    restaurant_id: 17,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495497576/o_x9wvv7.jpg"
  },
  {
    restaurant_id: 17,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495497603/o_y2bwsx.jpg"
  },
  {
    restaurant_id: 17,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495497634/o_lwb2ao.jpg"
  },
  {
    restaurant_id: 18,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495497700/o_vqpnbq.jpg"
  },
  {
    restaurant_id: 18,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495497736/o_s7o6e1.jpg"
  },
  {
    restaurant_id: 18,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495497783/o_zksmwc.jpg"
  },
  {
    restaurant_id: 19,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495497847/o_q4lofb.jpg"
  },
  {
    restaurant_id: 19,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495497886/o_fsxylb.jpg"
  },
  {
    restaurant_id: 19,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495497937/o_dw3ern.jpg"
  },
  {
    restaurant_id: 20,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495497999/o_nrvnlk.jpg"
  },
  {
    restaurant_id: 20,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495498022/o_g5vemf.jpg"
  },
  {
    restaurant_id: 20,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495498049/o_lkpikb.jpg"
  },
  {
    restaurant_id: 21,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495498362/o_ako7oy.jpg"
  },
  {
    restaurant_id: 21,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495498398/o_sobud7.jpg"
  },
  {
    restaurant_id: 21,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495498491/o_e0dffn.jpg"
  },
  {
    restaurant_id: 22,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495498573/o_bdfgam.jpg"
  },
  {
    restaurant_id: 22,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495498905/o_aitlqs.jpg"
  },
  {
    restaurant_id: 22,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495498957/o_mhcxvm.jpg"
  },
  {
    restaurant_id: 23,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495499105/o_oxfkyy.jpg"
  },
  {
    restaurant_id: 23,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495499157/o_xxhpun.jpg"
  },
  {
    restaurant_id: 23,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495499181/o_hwys0q.jpg"
  },
  {
    restaurant_id: 24,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495499238/o_vfxnlh.jpg"
  },
  {
    restaurant_id: 24,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495499266/o_muxigx.jpg"
  },
  {
    restaurant_id: 24,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495499344/o_enxiul.jpg"
  },
  {
    restaurant_id: 25,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495499387/o_eijomw.jpg"
  },
  {
    restaurant_id: 25,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495499410/o_idvzxf.jpg"
  },
  {
    restaurant_id: 25,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495499436/o_iyw3gj.jpg"
  },
  {
    restaurant_id: 26,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495499486/o_eyjzzu.jpg"
  },
  {
    restaurant_id: 26,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495499512/o_k5p5rp.jpg"
  },
  {
    restaurant_id: 26,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495499534/o_sxlen6.jpg"
  },
  {
    restaurant_id: 27,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495499599/o_egaues.jpg"
  },
  {
    restaurant_id: 27,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495499627/o_n7iqxa.jpg"
  },
  {
    restaurant_id: 27,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495499655/o_ihlfzf.jpg"
  },
  {
    restaurant_id: 28,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495499709/o_hw7r8n.jpg"
  },
  {
    restaurant_id: 28,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495499740/o_q6gysq.jpg"
  },
  {
    restaurant_id: 28,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495499770/o_vc85ns.jpg"
  },
  {
    restaurant_id: 29,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495499828/o_mo982l.jpg"
  },
  {
    restaurant_id: 29,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495499860/o_wqdtjy.jpg"
  },
  {
    restaurant_id: 29,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495499927/o_k8fr4g.jpg"
  },
  {
    restaurant_id: 30,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495500097/o_gjxjpr.jpg"
  },
  {
    restaurant_id: 30,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495500130/o_lzitxa.jpg"
  },
  {
    restaurant_id: 30,
    url: "http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495500156/o_fuxcuj.jpg"
  }
])
