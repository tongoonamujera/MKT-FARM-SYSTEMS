import React from "react";
import { useLocation } from "react-router";
import { deleteDeduction } from "../../../../redux/Actions/Auth/AuthActions";
import DeleteButton from "../../CustomComponents/deleteButton/deleteButton";
import styles from './Showdeduction.module.css'
const Showdeduction = () => {
  const location = useLocation();
  const { nec, nssa, payee, cash_requests, allowance, employee_name, employee_number, id } = location.state;

  return (
    <div className={styles.container}>
      <div className={styles.card} >
        <h1 className={styles.heading}>Showing Deductions For: {employee_name} </h1>
        <main className={styles.main}>
          <div className={styles.innercards}>
            <div className={styles.names}>N.E.C</div>
            <div>{ nec}</div>
          </div>
          <div className={styles.innercards}>
            <div className={styles.names}>N.S.S.A</div>
            <div>{ nssa }</div>
          </div>
          <div className={styles.innercards}>
            <div className={styles.names}>
              PAYEE
            </div>
            <div>{ payee}</div>
          </div>
          <div className={styles.innercards}>
            <div className={styles.names}>CashRequests</div>
            <div>{cash_requests }</div>
          </div>
          <div className={styles.innercards}>
            <div className={styles.names}>ALLOWANCE</div>
            <div>{allowance }</div>
          </div>
          <div className={styles.innercards}>
            <div className={styles.names}>NUMBER </div>
          <div>{employee_number }</div>
          </div>
        </main>
        <div className={styles.footer}>
          <div className={styles.actions}>
            <button>Edit Deduction</button>
            <DeleteButton url={"/deduction_tables"} id={id} link={ "/deductions"} delete={"Deduction"} action={  deleteDeduction} />
          </div>
        </div>
      </div>
    </div>
  )
}

export default Showdeduction;