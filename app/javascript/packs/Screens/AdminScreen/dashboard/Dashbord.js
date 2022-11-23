import React from "react"
import Navigation from "./navigation/Navigation"
import styles from "./Dashbord.module.css";
import Loading from "../../../Pages/Components/Loading/Loading";
import DeductionTable from "../../../Pages/Components/DeductionTables/DeductionTable";

const Dashboard = () => {
  return (
    <div className={styles.dashboard}>
      <div className={styles.navigation}>
        <Navigation/>
      </div>
      <div className={styles.main}>
        <Loading />
        <br/>
        <DeductionTable/>
      </div>
    </div>
  )
}

export default Dashboard;