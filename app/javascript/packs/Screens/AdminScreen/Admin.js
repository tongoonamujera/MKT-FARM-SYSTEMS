import styles from "./Admin.module.css"
const Admin = () => {
  return (
    <main className={styles.container} >
      <div className={styles.sideBar}></div>
      <div className={styles.dashboard}>
        <div className={styles.top}></div>
        <div className={styles.middle}></div>
        <div className={styles.footer}></div>
      </div>
    </main>
  )
}

export default Admin;