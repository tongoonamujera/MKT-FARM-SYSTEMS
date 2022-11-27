import React, { useState } from 'react'
import { useDispatch } from 'react-redux';
import { useNavigate } from 'react-router';
import proccesData from '../../../../CustomHooks/QuerryData';
import { createDeduction } from '../../../../redux/Actions/Auth/AuthActions';
import Form from '../../CustomComponents/Form/Form';
import styles from './newDeduction.module.css'

const DeductionForm = () => {
  const navigate = useNavigate()
  const dispatch = useDispatch()
  const [employeeName, setEmployeeName] = useState('')
  const [employeeNumber, setEmployeeNumber] = useState('')
  const [allowance, setAllowance] = useState('')
  const [nec, setNec] = useState('')
  const [payee, setPayee] = useState('')
  const [nssa, setNssa] = useState('')
  const [cashRequests, setCashRequests] = useState('')

  const finputs = {
      employeeName: { type: "text", value: [employeeName, setEmployeeName], placeholderText: "Employee Name" },
      employeeNumber: {type: "text", value: [employeeNumber, setEmployeeNumber], placeholderText: "Employee Number"},
      nssa: {type: "number", value: [nssa, setNssa], placeholderText: "N.S.S.A"},
      payee: {type: "number", value: [payee, setPayee], placeholderText: "P.A.Y.E.E"},
      allowance: {type: "number", value: [allowance, setAllowance], placeholderText: "Allowance"},
      nec: {type: "number", value: [nec, setNec], placeholderText: "N.E.C"},
      cashRequests: {type: "number", value: [cashRequests, setCashRequests], placeholderText: "Cash Requests"}
    };
  const handleSubmit = (e) => {
    e.preventDefault();
    const params = { employeeName, employeeNumber, allowance, nec, payee, nssa, cashRequests };
    proccesData.post("create_deductions", params)
      .then(res => {
        dispatch(createDeduction(res))
        navigate('/deductions');
      })
      .catch(err => console.log(err.message))
  }
  return (
    <div className={styles.container}>
      <Form
        inputs={finputs}
        submitHandler={handleSubmit}
        heading={"WELCOME TO DEDUCTIONS"}
        para={"Please create a deduction"}
        text={"Create Deduction"}
      />
    </div>
  )
}

export default DeductionForm;