import { connect } from "react-redux";
import PostIndex from "./post_index";
import { fetchPosts, deletePost } from "../../actions/post_actions";
import { removeComment, fetchComments } from "../../actions/post_actions";
import { createLike, deleteLike } from "../../actions/like_actions";

const mapStateToProps = state => {
  let posts = [];
  let comments = [];
  if (state.entities.posts) {
    posts = Object.values(state.entities.posts);
    // comments = posts.map(post => {
    //   debugger
    //   return post.comments;
  }

  return {
    currentUser: state.entities.users[state.session.id],
    users: state.entities.users,
    posts: posts,
  };
}

const mapDispatchToProps = dispatch => {
  return {
    fetchPosts: () => dispatch(fetchPosts()),
    deletePost: id => dispatch(deletePost(id)),
    removeComment: commentId => dispatch(removeComment(commentId)),
    fetchComments: postId => dispatch(fetchComments(postId)),
    createLike: like => dispatch(createLike(like)),
    deleteLike: postId => dispatch(deleteLike(postId))
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(PostIndex);
