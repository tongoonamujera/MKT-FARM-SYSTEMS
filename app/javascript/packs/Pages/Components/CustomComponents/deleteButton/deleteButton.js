import React from "react"
import { useDispatch } from "react-redux"
import { useNavigate } from "react-router"
import proccesData from "../../../../CustomHooks/QuerryData"
import styles from "./deleteButton.module.css"

const DeleteButton = (props) => {
  const navigate = useNavigate()
  const dispatch = useDispatch()

  const handleDelete = () => {
    proccesData.deleteResource(`${ props.url }/ ${props.id}`, { id: props.id })
      .then(res => {
        dispatch(props.action(res))
        navigate(props.link)
      })
    .catch(err => console.log(err.message))
  }

  return (
      <button classnName={styles.delete} onClick={handleDelete}>Delete { props.delete }</button>
  )
}

export default DeleteButton;