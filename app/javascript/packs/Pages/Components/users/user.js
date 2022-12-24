import React, { useEffect } from "react"
import { useDispatch, useSelector } from "react-redux";
import { Link, useNavigate } from "react-router-dom";
import proccesData from "../../../CustomHooks/QuerryData";
import { getAllUsers } from "../../../redux/Actions/Auth/userActions";
import Loading from "../Loading/Loading";
import styles from "./user.module.css";

const User = () => {
  const dispatch = useDispatch();
  const navigate = useNavigate();
  const getUsers = () => {
    proccesData.get("/all_users")
      .then(res => {
        dispatch(getAllUsers(res.users))
        console.log("respond :", res.users)
      })
    .catch(err => console.error(err.message))
  }

  useEffect(() => { 
    return getUsers()
  }, [])


  const user = useSelector(state => state.user.payload);
  console.log("Users: ", user)
  return (
    <div className={styles.container}>
      <br/>
      <div className={styles.navigation}>
        <Link to={"/"}>Go To Homepage</Link>
      </div>
      <br/>
      <div className={styles.note }>
        ****click on a row to edit user accounts
      </div>
      <br/>
        <table className={styles.table}>
          <thead>
            <tr>
              <th>User Name</th>
              <th>Email</th>
              <th>Address</th>
              <th>Company Name</th>
            </tr>
          </thead>

          <tbody>
        {user && user.map(row => {
          const {username, email, address, company_name, id } = row;
          return (
            <tr key={id} onClick={() => navigate('/users/show_user', { state: row })}>
                  <td>{username}</td>
                  <td>{email}</td>
                  <td>{address}</td>
                  <td>{company_name}</td>
                </tr>
          )
        })}
        </tbody>
      </table>
    </div>
    )
}

export default User;