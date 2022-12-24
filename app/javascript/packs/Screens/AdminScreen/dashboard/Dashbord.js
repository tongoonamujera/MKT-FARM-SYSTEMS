import React from "react"
import Navigation from "./navigation/Navigation"
import styles from "./Dashbord.module.css";
import Loading from "../../../Pages/Components/Loading/Loading";
import { Link } from "react-router-dom";
import WordAnimation from "../../../Pages/Components/Animation/Animation";
import { useSelector } from "react-redux";

const Dashboard = () => {
  const user = useSelector(state => state.logged.user.username);
  return (
    <div className={styles.dashboard}>
      <div className={styles.navigation}>
        <Navigation/>
      </div>
      <div className={styles.main}>
        <div className={styles.start}>
          <h1>
            <WordAnimation text={[`Hello ${user.toUpperCase()}`, "This is Your Personal Dashboard"]} dspeed={100} tspeed={100} />
            <span>|</span>
          </h1>
        </div>
        <div className={styles.end}>
          <div className={styles.card} >
            <div className={styles.sidebar} >
              <section className={styles.links}>
                <Link to={'/deductions'}>Deductions</Link>
                <Link to={'/users'}>Users</Link>
              </section>
            </div>
            <div className={styles.cardmain} >
              <div className={styles.topbar}>
                <h3>Admin Dashboard</h3>
                <p>
                  <span>T</span>
                </p>
              </div>
              <div className={styles.mainsection}>
                <div className={styles.left}>
                  <div className={styles.top}>
                    <div></div>
                    <div></div>
                    <div></div>
                  </div>
                  <div className={styles.center}>
                    <div className={styles.start}>
                      <Loading/>
                    </div>
                    <div className={styles.end}></div>
                  </div>
                  <div className={styles.bottom}>
                    <div className={styles.left} ></div>
                    <div className={styles.right} ></div>
                  </div>
                </div>
                <div className={styles.right}>
                  <div className={styles.fartop}></div>
                  <div className={styles.farcenter}></div>
                  <div className={styles.farbottom}></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <footer className={styles.footer}></footer>
    </div>
  )
}

export default Dashboard;