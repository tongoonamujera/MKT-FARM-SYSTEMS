import React from "react";
import styles from "./Navigation.module.css";
import LogOut from "../../../../Pages/UserAuth/Logout";
import { useSelector } from "react-redux";
import WordAnimation from "../../../../Pages/Components/Animation/Animation";
const Navigation = () => {

  const user = useSelector(state => state.logged.user.username);
  return (
    <div className={styles.header}>
      <div className={styles.welcome}>
        <
          WordAnimation
          text={[`Welcome ${user.toUpperCase()}`, "How Are you?"]}
          tspeed={60}
          dspeed={90}
        />
      </div>
      <div className={styles.end}>
        <LogOut/>
      </div>
    </div>
  )
}

export default Navigation;