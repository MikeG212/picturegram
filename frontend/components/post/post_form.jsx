import React from 'react';
import { withRouter } from 'react-router-dom';

class PostForm extends React.component{
   constructor(props) {
       super(props);
       this.handleSubmit = this.handleSubmit.bind(this);
       this.state = this.props.post;
    }

    update(field) {
        return (e) => {
            this.setState({ [field]: e.target.value });
        };
    }

    handleSubmit(e) {
        e.preventDefault();
        this.props.action(this.state);
    }

    render () {
        return (
            <div>
                <h3>{this.props.formType}</h3>
                <form onSubmit={this.handleSubmit}>
                    <label htmlFor="caption">
                     <input
                            type="text"
                            value={this.state.caption}
                            onChange={this.update('caption')} />
                    </label>

                    <input type="submit" value={this.props.formType} />
                </form>
            </div>
        );
    }
}

export default withRouter(PostForm);

