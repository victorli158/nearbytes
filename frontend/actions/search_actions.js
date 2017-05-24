import * as SearchAPIUtil from '../util/search_api_util';
import { receiveAllRestaurants} from "./restaurant_actions";
export const RECEIVE_SEARCH = 'RECEIVE_SEARCH';

export const receiveSearch = (searchResults) => ({
  type: RECEIVE_SEARCH,
  searchResults
});

export const searchRestaurants = (searchTerm) => dispatch => (
  SearchAPIUtil.searchRestaurants(searchTerm).then((restaurants => dispatch(receiveAllRestaurants(restaurants))))
);
