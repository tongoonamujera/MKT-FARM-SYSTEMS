import userConstants from "../../constants/Auth/userConstants";

export const getAllUsers = (data) => {
  return {
    type: userConstants.GetAllUsers,
    payload: data,
  }
}

export const editUser = (data) => {
  return {
    type: userConstants.EditUser,
    payload: data,
  }
}

export const deleteUser = (data) => {
  return {
    type: userConstants.DeleteUser,
    payload: data,
  }
}