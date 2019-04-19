import React from "react";
import { Link } from "react-router-dom";

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: "",
      password: "",
      email: ""
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.demoLogin = this.demoLogin.bind(this);
    this.submitButton = this.submitButton.bind(this);
    this.renderInputFields = this.renderInputFields.bind(this);
  }

  update(field) {
    return e =>
      this.setState({
        [field]: e.currentTarget.value
      });
  }

  navLink() {
    if (this.props.formType === "login") {
      return <Link to="/signup">sign up</Link>;
    } else {
      return <Link to="/login">log in</Link>;
    }
  }

  renderErrors() {
    return (
      <ul>
        {this.props.errors.map((error, i) => (
          <li className="session-error" key={`error-${i}`}>
            {error}
          </li>
        ))}
      </ul>
    );
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = Object.assign({}, this.state);
    this.props.processForm(user);
  }

  renderInputFields() {
    if (this.props.formType === "login") {
      return (
        <div className="loginFields">
          <br />
          <label htmlFor="email">
            Email:
            <input
              type="text"
              value={this.state.email}
              onChange={this.update("email")}
              placeholder="greenGoblin@mail.com"
              className="form-input"
            />
          </label>
        </div>
      );
    } else {
      return (
        <div className="signupFields">
          <label htmlFor="email">
            Email:
            <input
              type="email"
              value={this.state.email}
              onChange={this.update("email")}
              placeholder="greenGoblin@mail.com"
              className="form-input"
            />
          </label>
          <br />
          <label htmlFor="username">
            Username:
            <input
              type="text"
              value={this.state.username}
              onChange={this.update("username")}
              placeholder="greenGoblin"
              className="form-input"
            />
          </label>
        </div>
      );
    }
  }

  demoLogin() {
    this.setState({
      username: "johnJonah",
      email: "jj@dailybugle.com",
      password: "starwars"
    });
  }

  demoLoginButton() {
    if (this.props.formType === "login") {
      return (
        <div className="session-demo-button">
          <p>OR</p>
          <button className="session-button" onClick={this.demoLogin}>
            Log in with Demo Account
          </button>
        </div>
      );
    }
  }

  submitButton() {
    if (this.props.formType === "login") {
      return (
        <input
          className="session-button submit-button"
          type="submit"
          value="Login"
        />
      );
    } else {
      return (
        <input
          className="session-button submit-button"
          type="submit"
          value="Sign up"
        />
      );
    }
  }

  render() {
    return (
      <div className="container">
        <div className="row">
          <div className="col-lg-6 landing-left">
            <img
              className="loginAsset"
              src={window.images.dummyPhoneNoAnimate}
              alt="dummyPhone"
            />
          </div>
          <div className="col-lg-6 landing-right text-center d-flex align-items-center">
            <div className="session-form-container">
              <form onSubmit={this.handleSubmit} className="session-form-box">
                <h3>Spidergram</h3>
                <div className="session-form text">
                  Please {this.props.formType} or {this.navLink()}
                </div>
                {this.renderInputFields()}
                <label htmlFor="password">
                  Password:
                  <input
                    type="password"
                    value={this.state.password}
                    onChange={this.update("password")}
                    className="form-input"
                  />
                </label>
                <br />
                {this.submitButton()}
                <br />
                {this.demoLoginButton()}
                {this.renderErrors()}
              </form>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default SessionForm;
