import LogOut from "../../Pages/UserAuth/Logout";
import styles from "./Admin.module.css"
import React, { useEffect } from "react";
import proccesData from "../../CustomHooks/QuerryData";
import Dashboard from "./dashboard/Dashbord";
import { useDispatch } from "react-redux";
import { getDeduction } from "../../redux/Actions/Auth/AuthActions";
const Admin = () => {
  const dispatch = useDispatch()
  const getAsset = () => {
    proccesData.get("/deduction_tables")
      .then(res => dispatch(getDeduction(res)))
      .catch(err => console.log(err))
  }
  useEffect(() => {
    getAsset()
  },[] )
  return (
    <main className={styles.container} >
      <div className={styles.dashboard}>
        <Dashboard/>
      </div>
    </main>
  )
}

export default Admin;