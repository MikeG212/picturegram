import { connect } from 'react-redux';
import React from 'react';
import { logout, LOGOUT_CURRENT_USER } from '../../actions/session_actions';
import UserShow from './user_show';

const mapStateToProps = (state, ownProps) => ({
    user: state.entities.users,
    currentId: ownProps.match.params.userId
});

const mapDispatchToProps = dispatch => {
    return {
        logout: () => dispatch(logout())

    };
};

export default connect(mapStateToProps, mapDispatchToProps)(UserShow);