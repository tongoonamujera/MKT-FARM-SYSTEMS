import React from "react";
import { useLocation } from "react-router";
import { deleteDeduction } from "../../../../redux/Actions/Auth/AuthActions";
import DeleteButton from "../../deleteButton/deleteButton";
import styles from './Showdeduction.module.css'
const Showdeduction = () => {
  const location = useLocation();
  const { nec, nssa, payee, cash_requests, allowance, employee_name, employee_number, id } = location.state;

  return (
    <div className={styles.container}>
      <div className={styles.card} >
        <main className={styles.main}>
          <div>N.E.C: { nec}</div>
          <div>N.S.S.A: { nssa }</div>
          <div>PAYEE: { payee}</div>
          <div>CashRequests: {cash_requests }</div>
          <div>ALLOWANCE: {allowance }</div>
          <div>NAME: {employee_name }</div>
          <div>NUMBER: {employee_number }</div>
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