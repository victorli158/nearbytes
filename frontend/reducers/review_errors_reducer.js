import { RECEIVE_REVIEW_ERRORS, REMOVE_REVIEW_ERRORS } from '../actions/review_actions';
import merge from 'lodash/merge';

const reviewErrorsReducer = (oldState = [], action) => {
  Object.freeze(oldState);
switch(action.type) {
  case RECEIVE_REVIEW_ERRORS:
    return merge([], action.reviewErrors);
  case REMOVE_REVIEW_ERRORS:
    return [];
  default:
    return oldState;
  }
};

export default reviewErrorsReducer;
