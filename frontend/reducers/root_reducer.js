import { combineReducers } from 'redux';

import posts from './posts_reducer';
import entities from './entities_reducer';
import session from './session_reducer';
import errors from './errors_reducer';
import users from './users_reducer';

const rootReducer = combineReducers({
    posts,
    entities,
    session,
    errors,
    users
});

export default rootReducer;