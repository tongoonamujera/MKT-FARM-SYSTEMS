import React from "react";
import { useDispatch, useSelector } from "react-redux";
import proccesData from "../../CustomHooks/QuerryData";
import { loginUser } from "../../redux/Actions/Auth/AuthActions";
import styles from "./Logout.module.css"
const LogOut = () => {
  const userId = useSelector(state => state.logged.user.id);
  const dispatch = useDispatch();
  const handleLogOut = (e) => {
    e.preventDefault()
    if (userId) {
      proccesData.deleteResource(`my/users/sign_out`, { id: userId })
        .then(res => {
          console.log(res)
          dispatch(loginUser(res))
        })
        .catch(err => console.log(err))
    }
  }  
  return (
    <button className={styles.btn} onClick={handleLogOut}>LOG OUT</button>
  )
}

export default LogOut;