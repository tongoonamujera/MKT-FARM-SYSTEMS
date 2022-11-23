import React, { useState } from "react";
import styles from './DeductionTable.module.css'
import { useSelector } from "react-redux";


const DeductionTable = () => {
  const deductions = useSelector(state => state.deduction.deduction);
  console.log('deductions :', deductions);

  return (
    <div className={styles.container}>
        <table className={styles.table}>
          <thead>
            <tr>
              <th>Employee Name</th>
              <th>Employee Number</th>
              <th>Cash Request</th>
              <th>N.S.S.A</th>
              <th>N.E.C</th>
              <th>P.A.Y.E</th>
              <th>ALLOWANCE</th>
              <th colspan="3">Other</th>
            </tr>
          </thead>

        {deductions && deductions.tables.map(row => {
          const {nec, nssa, payee, cash_requests, allowance, employee_name, employee_number } = row;
          return (
            <tbody>
                <tr>
                <td>{employee_name}</td>
                <td>{employee_number}</td>
                <td>{cash_requests}</td>
                <td>{nssa}</td>
                <td>{nec}</td>
                <td>{ payee}</td>
                <td>{allowance}</td>
                <td>{ employee_name}</td>
                </tr>
            </tbody>
          )
          })}
      </table>
    </div>
  )
}

export default DeductionTable;