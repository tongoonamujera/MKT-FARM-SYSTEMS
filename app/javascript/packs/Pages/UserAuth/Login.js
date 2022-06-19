import { useState, useEffect, useRef } from "react";
import React from "react";
import proccesData from "../../CustomHooks/QuerryData";
import axios from 'axios';

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
      // axios.post(url, {
      //   email: email,
      //   password: password
      // }).then( res => console.log("data: ", res)).catch(err => console.log(err.message))

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
    <form onSubmit={handleLogin}>
      <input
        type={"email"}
        value={email}
        onChange={(e) => setEmail(e.target.value)}
      />
      <input
        type={inputType}
        value={password}
        onChange={(e) => setPassword(e.target.value)}
      />

      <span onClick={togglePassword}>
        {text}
      </span>
      <button type="submit">Login</button>
    </form>
  )
}

export default Login;