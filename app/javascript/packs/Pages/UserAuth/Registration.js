import { useState } from "react"
import proccesData from "../../CustomHooks/QuerryData";
import React from "react";

const Registration = () => {
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
    ) ? proccesData(url,
      "POST",
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
      .then(res => console.log("res: ", res))
      .catch(err => console.log("Log In err: ", err))
      :"You're missing something"
  }
  return (
    <form onSubmit={submitHandler}>
      <input
        type={"email"}
        value={email}
        onChange={(e) => setEmail(e.target.value)}
      />
      <br />
      <input
        type={"text"}
        value={cellphone}
        onChange={(e) => setCellphone(e.target.value)}
      />
      <br />
      <input
        type={"text"}
        value={company_name}
        onChange={(e) => setCompanyName(e.target.value)}
      />
      <br />
      <input
        type={"text"}
        value={address}
        onChange={(e) => setAddress(e.target.value)}
      />
      <br />
      <input
        type={"text"}
        value={username}
        onChange={(e) => setUserName(e.target.value)}
      />
      <br />
      <input
        type={"text"}
        value={category}
        onChange={(e) => setCategory(e.target.value)}
      />
      <br />
      <input
        type={"password"}
        value={password}
        onChange={(e) => setPassword(e.target.value)}
      />
      <br />
      <input
        type={"password"}
        value={passwordConfirmation}
        onChange={(e) => setPasswordConfirmation(e.target.value)}
      />
      <br />
      <button type="submit">Register</button>
    </form>
  )
}

export default Registration;