import { useState } from "react"
import proccesData from "../../CustomHooks/QuerryData";

const Registration = () => {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [passwordConfirmation,
    setPasswordConfirmation] = useState('');
  const [userName, setUserName] = useState('');
  const [category, setCategory] = useState('');
  const [companyName, setCompanyName] = useState('');
  const [address, setAddress] = useState('');
  const [cellphone, setCellphone] = useState('');
  const submitHandler = () => {
    (
      email
      && password
      && passwordConfirmation
      && userName
      && companyName
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
        userName,
        companyName,
        address,
        cellphone,
        category,
      }
    ) :
      "You're missing something"
  }
  return (
    <form onSubmit={submitHandler}>
      <input
        type={"email"}
        value={email}
        onChange={(e) => setEmail(e.target.value)}
      />
      <input
        type={"text"}
        value={cellphone}
        onChange={(e) => setCellphone(e.target.value)}
      />
      <input
        type={"text"}
        value={companyName}
        onChange={(e) => setCompanyName(e.target.value)}
      />
      <input
        type={"text"}
        value={address}
        onChange={(e) => setAddress(e.target.value)}
      />
      <input
        type={"text"}
        value={userName}
        onChange={(e) => setUserName(e.target.value)}
      />
      <input
        type={"text"}
        value={category}
        onChange={(e) => setCategory(e.target.value)}
      />
      <input
        type={"password"}
        value={password}
        onChange={(e) => setPassword(e.target.value)}
      />
      <input
        type={"password"}
        value={passwordConfirmation}
        onChange={(e) => setPasswordConfirmation(e.target.value)}
      />
    </form>
  )
}

export default Registration;