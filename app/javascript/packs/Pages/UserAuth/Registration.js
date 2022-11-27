import { useState } from "react"
import proccesData from "../../CustomHooks/QuerryData";
import React from "react";
import styles from "./Registration.module.css"
import { Link, useNavigate } from "react-router-dom";
import { useDispatch } from "react-redux";
import { loginUser } from "../../redux/Actions/Auth/AuthActions";

const Registration = () => {
  const navigate = useNavigate();
  const dispatch = useDispatch();
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [passwordConfirmation,
    setPasswordConfirmation] = useState('');
  const [username, setUserName] = useState('');
  const [category, setCategory] = useState('');
  const [company_name, setCompanyName] = useState('');
  const [address, setAddress] = useState('');
  const [cellphone, setCellphone] = useState('');
  const url = "my/users"
  const submitHandler = (e) => {
    e.preventDefault();
    (
      email
      && password
      && passwordConfirmation
      && username
      && company_name
      && address
      && cellphone
      && category
      && email.includes('@')
    ) ? proccesData.post(url,
      {
        email,
        password,
        passwordConfirmation,
        username,
        company_name,
        address,
        cellphone,
        category,
      }
    )
        .then(res => {
          dispatch(loginUser(res))
          navigate('/')
        })
      .catch(err => console.log("Log In err: ", err))
      : console.error("You're missing something");
  }
  return (
    <div className={styles.container} >
      <div className={styles.formContainer}>
        <form onSubmit={submitHandler}>
          <div className={styles.heading}>
            <h1>WELCOME USER</h1>
            <p>PLEASE CREATE ACCOUNT TO CONTINUE</p>
          </div>

          <hr />
          <div className={styles.control}>
            <input
              type={"email"}
              value={email}
              onChange={(e) => setEmail(e.target.value)}
              placeholder={"Please Enter Your Email"}
            />
          </div>
          <div className={styles.control}>
            <input
              type={"text"}
              value={cellphone}
              onChange={(e) => setCellphone(e.target.value)}
              placeholder={"Please Enter Your Cellphone Number"}
            />
          </div>
          <div className={styles.control}>
            <input
              type={"text"}
              value={company_name}
              onChange={(e) => setCompanyName(e.target.value)}
              placeholder={"Please Enter Your Company Name"}
            />
          </div>
          <div className={styles.control}>
            <input
              type={"text"}
              value={address}
              onChange={(e) => setAddress(e.target.value)}
              placeholder={"Please Enter Your Physical Address"}
            />
          </div>
          <div className={styles.control}>
            <input
              type={"text"}
              value={username}
              onChange={(e) => setUserName(e.target.value)}
              placeholder={"Enter Preffered UserName"}
            />
          </div>
          <div className={styles.control}>
            <input
              type={"text"}
              value={category}
              onChange={(e) => setCategory(e.target.value)}
              placeholder={"**Enter your Category"}
            />
          </div>
          <div className={styles.control}>
            <input
              type={"password"}
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              placeholder={"Enter Your Password"}
            />
          </div>
          <div className={styles.control}>
            <input
              type={"password"}
              value={passwordConfirmation}
              onChange={(e) => setPasswordConfirmation(e.target.value)}
              placeholder={"Please Confirm Your Password"}
            />
          </div>
          <div className={styles.actions}>
            <button type="submit">Register</button>
          </div>
        </form>
      </div>
      <div className={styles.aside}>
        <div className={styles.info} >
          <h3>
            ALREADY HAVE AN ACCOUNT?
          </h3>
          <p>
            Please Sign Into Your Account and discover A lot of Opportunities. <br/>
            We are waiting for You!!!!
          </p>
        </div>

        <div className={styles.btn} >
          <button><Link to={'/'}>Login</Link></button>
        </div>
      </div>
    </div>
  )
}

export default Registration;