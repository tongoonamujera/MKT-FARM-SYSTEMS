import React, { useEffect, useState } from "react";
import styles from './DeductionTable.module.css'
import { useDispatch, useSelector } from "react-redux";
import { Link, useNavigate } from "react-router-dom";
import { getDeduction } from "../../../redux/Actions/Auth/AuthActions";
import proccesData from "../../../CustomHooks/QuerryData";


const DeductionTable = () => {
  const dispatch = useDispatch()
  const getAsset = () => {
    proccesData.get("/deduction_tables")
      .then(res => dispatch(getDeduction(res)))
      .catch(err => console.log(err))
  }
  useEffect(() => {
    getAsset()
  },[] )
  const deductions = useSelector(state => state.deduction.deduction);
  console.log('deductions :', deductions);
  const navigate = useNavigate()

  return (
    <div className={styles.container}>
      <br/>
      <div className={styles.navigation}>
        <Link to={"/deductions/new"}>Create A New Deduction</Link>
        <Link to={"/"}>Go To Homepage</Link>
      </div>
      <br/>
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

        
          <tbody>
        {deductions && deductions.tables.map(row => {
          const {nec, nssa, payee, cash_requests, allowance, employee_name, employee_number, id } = row;
          return (
              <tr key={id } onClick={() => navigate("/deductions/show", {state: row})}>
                  <td>{employee_name}</td>
                  <td>{employee_number}</td>
                  <td>{cash_requests}</td>
                  <td>{nssa}</td>
                  <td>{nec}</td>
                  <td>{ payee}</td>
                  <td>{allowance}</td>
                  <td>{ employee_name}</td>
                </tr>
          )
        })}
        </tbody>
      </table>
    </div>
  )
}

export default DeductionTable;