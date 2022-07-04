import { useState, useEffect, useRef } from "react";
import React from "react";
import proccesData from "../../CustomHooks/QuerryData";
import styles from "./Login.module.css"

const Login = () => {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [open, isOpen] = useState(false);
  const [inputType, setInputType] = useState("password");
  const [text, setButtonText] = useState("Show Password");
  const handleLogin = (e) => {
    e.preventDefault();
    const url = "/my/users/sign_in"
    if (email && password && email.includes('@'))
      proccesData(url, "POST", { email, password })
        .then(res => console.log(res))
        .catch(err => console.log('err', err.message));
  }

  const togglePassword = () => {
    if (open) {
      setInputType("text")
      setButtonText("Hide Password");
      isOpen(!open);
    } else {
      setInputType("password")
      setButtonText("Show Password")
      isOpen(!open);
    }
  }
  return (
    <div className={styles.container}>
      <div className={styles.formContainer}>
        <div className={styles.heading}>
          <h1>WELCOME USER</h1>
          <p>PLEASE LOGIN TO CONTINUE</p>
        </div>

        <hr />

        <form onSubmit={handleLogin} >
          <div className={styles.control}>
            <input
            type={"email"}
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            placeholder="Enter Email"
            />
          </div>
          <div className={styles.control}>
            <input
              type={inputType}
              value={password}
              onChange={(e) => setPassword(e.target.value)}
            />

            <span onClick={togglePassword}>
              {text}
            </span>
          </div>
          <div className={styles.actions}>
            <button type="submit">Login</button>
          </div>
        </form>
      </div>
      <div className={styles.aside}>
        <div className={styles.info} >
          <h3>
            NEW HERE?
          </h3>
          <p>
            Please Create an Account and discover A lot of Opportunities. <br/>
            We are waiting for You!!!!
          </p>
        </div>

        <div className={styles.btn} >
          <button>Create Account</button>
        </div>
      </div>
    </div>
  )
}

export default Login;