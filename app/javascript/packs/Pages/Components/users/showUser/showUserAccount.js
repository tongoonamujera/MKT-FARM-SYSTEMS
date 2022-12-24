
import React from "react";
import { useLocation, useNavigate } from "react-router";
import proccesData from "../../../../CustomHooks/QuerryData";
import styles from "./ShowUserAccount.module.css";

const ShowUserAccount = ({props}) => {
  const location = useLocation();
  const { email, id, username, status, address, company_name, cellphone, category, is_manager, is_farm_owner, farm_name, is_admin } = location.state;
  const admin = { email, id, username, status, address, company_name, cellphone, category, is_manager, is_farm_owner, farm_name, is_admin: is_admin ? false : true }
  const farmOwner = { email, id, username, status, address, company_name, cellphone, category, is_manager, is_farm_owner: is_farm_owner? false: true, farm_name, is_admin}
  const navigate = useNavigate();
  const updateUser = (action) => {
    const params = action === "farm_owner" ? farmOwner : admin;

    proccesData.patch(`/update_user_account`, params)
      .then(res => {
        console.log("this user: ", res)
        navigate("/users")
      })
    .catch(err => console.error(err.message))
  }
  return (
    <div className={styles.container} >
      <div className={styles.userCard} >
        <div className={styles.heading}>
          <h2>Hello { username }</h2>
        </div>
        <div className={styles.cardMain}>
          <div className={styles.top}>Address: {address }</div>
          <div className={styles.center} >
            <div className={styles.content}>
              Email: {email}
            </div>
            <div className={styles.content}>
              Company Name: {company_name}
            </div>
            <div className={styles.content}>
              Cellphone: {cellphone}
            </div>
            <div className={styles.content}>
              Category: {category}
            </div>
            <div className={styles.content}>
              Admin: {is_admin ? "Yes" : "No"}
              <button onClick={() => updateUser("admin")}>Update</button>
            </div>
            <div className={styles.content}>
              Farm Owner: {is_farm_owner ? "Yes" : "No"}
              <button onClick={() => updateUser("farm_owner")}>Update</button>
            </div>
          </div>
        </div>
        <div className={styles.cardFooter}>
          <div className={styles.actions}>
            <button onClick={() => {updateUser()}}>Edit Account</button>
            <button onClick={() => navigate("/users")}>Go Back</button>
          </div>
        </div>
      </div>
    </div>
  )
}

export default ShowUserAccount;