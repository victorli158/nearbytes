# API Endpoints

## HTML API

### Root

- `GET /` - loads React web app

## JSON API

### Users

- `POST /api/users`

### Session

- `POST /api/session`
- `DELETE /api/session`

### Restaurants

- `GET /api/restaurants`
- `POST /api/restaurants`
- `GET /api/restaurants/:id`

### Reviews

 - `GET /api/restaurants/:restaurant_id/reviews`
 - `POST /api/restaurants/:restaurant_id/reviews`
 - `GET /api/reviews/:id`
 - `DELETE /api/reviews/:id`

### Search

 - `GET /api/restaurants/search`
