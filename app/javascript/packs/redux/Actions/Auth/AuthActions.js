import constants from "../../constants/Auth/AuthConst";

export const loginUser = (data) => {
  return {
    type: constants.Login,
    payload: data,
  }
}

export const Loading = (data) => {
  return {
    type: constants.Loading,
    payload: data
  }
}

export const logOutUser = (data) => {
  return {
    type: constants.Logout,
    payload: data,
  }
}

export const signUpUser = (data) => {
  return {
    type: constants.SignUp,
    payload: data,
  }
}

// deduction tables
export const getDeduction = (data) => {
  return {
    type: constants.GetDeductions,
    payload: data
  }
}

export const createDeduction = (data) => {
  return {
    type: constants.CreateDeductions,
    payload: data
  }
}

export const editDeduction = (data) => {
  return {
    type: constants.EditDeductions,
    payload: data
  }
}

export const deleteDeduction = (data) => {
  return {
    type: constants.DeleteDeductions,
    payload: data
  }
}
