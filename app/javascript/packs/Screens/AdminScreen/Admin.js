import LogOut from "../../Pages/UserAuth/Logout";
import styles from "./Admin.module.css"
import React from "react";
const Admin = () => {
  return (
    <main className={styles.container} >
      <div className={styles.sideBar}><LogOut /></div>
      <div className={styles.dashboard}>
        <div className={styles.top}>lorem</div>
        <div className={styles.middle}></div>
        <div className={styles.footer}></div>
      </div>
    </main>
  )
}

export default Admin;