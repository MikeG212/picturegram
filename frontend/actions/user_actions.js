import * as UserAPIUtil from "../util/user_api_util";


export const RECEIVE_USER = "RECEIVE_USER";
export const RECEIVE_USERS = "RECEIVE_ALL_USERS";
export const REMOVE_SEARCHED_USERS = 'REMOVED_SEARCHED_USERS'

export const receiveUser = user => ({
  type: RECEIVE_USER,
  user: user
});

export const receiveUsers = users => ({
  type: RECEIVE_USERS,
  users: users
})


export const fetchUser = userId => {
  return dispatch => {
    return UserAPIUtil.fetchUser(userId).then(user => {
      return dispatch(receiveUser(user));
    });
  };
};

export const fetchUsers = (username) => {
  debugger
  return dispatch => {
    return UserAPIUtil.fetchUsers(username).then(users => {
      return dispatch(receiveUsers(users))
    });
  };
};

export const discardSearchedUsers = () => {
  return dispatch => {
    return dispatch(removeSearchedUsers())
  };
};