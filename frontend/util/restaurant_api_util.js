export const fetchRestaurants = (params) => (
  $.ajax({
    method: 'GET',
    url: '/api/restaurants',
    data: { query: params }
  })
);

export const fetchRestaurant = (id) => (
  $.ajax({
    method: 'GET',
    url: `/api/restaurants/${id}`
  })
);

export const createImage = (picture) => (
  $.ajax({
    method: 'POST',
    url: '/api/pictures',
    data: { picture }
  })
);
