import {
  RECEIVE_ALL_POSTS,
  RECEIVE_POST,
  REMOVE_POST,
  RECEIVE_COMMENT,
  REMOVE_COMMENT
} from "../actions/post_actions";
import { CREATE_LIKE, REMOVE_LIKE } from "../actions/like_actions";
import merge from "lodash/merge";

const PostsReducer = (state = {}, action) => {
  Object.freeze(state);
  let newState = merge({}, state);
  switch (action.type) {
    case RECEIVE_ALL_POSTS:
      return merge({}, state, action.posts);
    case RECEIVE_POST:
      const newPost = { [action.post.id]: action.post };
      return merge(newState, newPost);
    case RECEIVE_COMMENT:
      debugger;
      if (!newState[action.comment.post_id].comments) {
        newState[action.comment.post_id].comments = {};
      }
      const { comment } = action;
      newState[action.comment.post_id].comments[comment.id] = comment;
      return newState;
    case REMOVE_COMMENT:
      const commentToDelete = action.comment;
      delete newState[action.comment.post_id].comments[commentToDelete.id];
      return newState;
    case REMOVE_POST:
      delete newState[action.postId];
      return newState;
    default:
      return state;
  }
};

export default PostsReducer;
