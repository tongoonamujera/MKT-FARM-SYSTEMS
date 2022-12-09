import styles from "./Admin.module.css"
import React from "react";
import Dashboard from "./dashboard/Dashbord";
const Admin = () => {
  return (
    <main className={styles.container} >
      <div className={styles.dashboard}>
        <Dashboard/>
      </div>
    </main>
  )
}

export default Admin;