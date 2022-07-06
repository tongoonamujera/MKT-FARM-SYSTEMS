import constants from "../../constants/Auth/AuthConst";

export const loginUser = (data) => {
  return {
    type: constants.Login,
    payload: data,
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