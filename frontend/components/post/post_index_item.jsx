import React from "react";
import { Link } from "react-router-dom"

class PostIndexItem extends React.Component {
    constructor(props) {
        super(props);
    }

    render() {
        let username = this.props.post.user.username;
        let month = this.props.post.created_at.slice(5, 7);
        let date = this.props.post.created_at.slice(8, 10);

        return(
            <div className="post-index-item">
                <div className="post-index-item-header">
                    <h5 className="username-link">
                        @{ username }
                    </h5>
                </div>
                <img className="post-image"
                    src={this.props.post.image_url} />
                <div className="post-index-item-footer">
                    <div className="caption-holder">
                        <div className="caption-username">@{ username } </div>
                        <div className="caption-text">{this.props.post.caption}</div>   
                    </div>
                    <div className="post-index-item-created-at">{month}-{date}</div>
                </div>
            </div>
        )
    }
}

// const PostIndexItem = ({ post, deletePost }) => {

//     return (
//         <li className="post-index-item">
//             <Link to={`/posts/${post.id}`}>
//                 {post.caption}
//             </Link>
//             <br />
//             <img src={post.image_url} className="post-image" alt={post.caption}></img>
//             <br />
//             <Link to={`/posts/${post.id}/edit`}>
//                 Edit
//             </Link>
//             <button onClick={() => deletePost(post.id)}>Delete</button>
//         </li>);
// };



export default PostIndexItem;