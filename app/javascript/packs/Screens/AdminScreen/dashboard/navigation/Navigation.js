import React from "react";
import styles from "./Navigation.module.css";
import LogOut from "../../../../Pages/UserAuth/Logout";
import { useSelector } from "react-redux";
import WordAnimation from "../../../../Pages/Components/Animation/Animation";
import { Link } from "react-router-dom";
const Navigation = () => {

  const user = useSelector(state => state.logged.user.username);
  return (
    <div className={styles.header}>
      <div className={styles.welcome}>
        <div className={styles.start}>
          <
            WordAnimation
            text={[`Welcome ${user}`, "How Are you?"]}
            tspeed={60}
            dspeed={90}
          />
        </div>
        <div className={styles.Wend}>
          <Link to={'/'}>Admin</Link>
          <Link to={'/deductions'}>Deductions</Link>
        </div>
      </div>
      <div className={styles.end}>
        <LogOut/>
      </div>
    </div>
  )
}

export default Navigation;