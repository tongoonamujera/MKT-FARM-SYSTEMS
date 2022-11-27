import React from "react"
import styles from './Form.module.css';
const Form = (props) => {
  return (
    <div className={styles.formContainer} >
      <form onSubmit={props.submitHandler}>
        <div className={styles.heading} >
          <h1>{props.heading}</h1>
          <p>{ props.para}</p>
        </div>
        <hr/>
        {
          Object.keys(props.inputs).map((key, index) => {
            return (
              <div className={styles.control} key={index} >
                <
                  input
                  type={props.inputs[key].type}
                  value={ props.inputs[key].value[0]}
                  onChange={e => props.inputs[key].value[1](e.target.value)}
                  placeholder={props.inputs[key].placeholderText}
                />
            </div>
          )
        })
        }
        <div className={styles.actions}>
          <button type={"submit"}>{ props.text }</button>
        </div>
      </form>
    </div >
  )
}

export default Form;