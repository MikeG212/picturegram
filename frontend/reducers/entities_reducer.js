import { combineReducers } from 'redux';
import users from './users_reducer';
import posts from './posts_reducer';
import comments from './comments_reducer';
import search from './search_reducer';

export default combineReducers({
    users,
    posts,
    comments,
    search
});