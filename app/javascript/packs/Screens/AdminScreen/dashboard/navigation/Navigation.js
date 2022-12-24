import React from "react";
import styles from "./Navigation.module.css";
import LogOut from "../../../../Pages/UserAuth/Logout";
import { useSelector } from "react-redux";
import WordAnimation from "../../../../Pages/Components/Animation/Animation";
import { Link } from "react-router-dom";
const Navigation = () => {
  return (
    <div className={styles.header}>
      <div className={styles.welcome}>
        <div className={styles.start}>
          <span >M</span>
          <span >K</span>
          <span >T</span>
          <span >-</span>
          <span >S</span>
          <span >Y</span>
          <span >S</span>
          <span >T</span>
          <span >E</span>
          <span >M</span>
          <span >S</span>
        </div>
        <div className={styles.Wend}>
        </div>
      </div>
      <div className={styles.end}>
        <LogOut/>
      </div>
    </div>
  )
}

export default Navigation;