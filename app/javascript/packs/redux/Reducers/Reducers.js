import { combineReducers } from "redux";
import constants from "../constants/Auth/AuthConst";

const loggedReducer = (state = {user: [], loggedIn: false}, { type, payload }) => {
  switch (type) {
    case constants.Login:
      return {
        ...state,
        user: payload.user,
        loggedIn: payload.logged_in
      }

    default:
      return state;
  }
}

const loggedOutReducer = (state = { user: [], loggedIn: false }, {type}) => {
  switch (type) {
    case constants.Logout:
      return {
        ...state,
        user: [],
        loggedIn: false,
      }

    default:
      return state;
  }
}

const loadingReducer = (state = { loading: true }, { type , payload}) => {
  switch (type) {
    case constants.Loading:
      return {
        ...state,
        loading: payload.loading
      }
  
    default:
    return state;
  }
}

// Deductions table reducer
const deductionReducer = (state = { }, { type, payload }) => {
  switch (type) {
    case constants.CreateDeductions:
      return {
        ...state,
        deduction: payloadS,
      }

    case constants.DeleteDeductions:
      return {
        ...state,
        deduction: payload,
      }

    case constants.GetDeductions:
      return {
        ...state,
        deduction: payload,
      }

    case constants.EditDeductions:
      return {
        ...state,
        deduction: payload,
      }
    default:
      return state;
  }
}

const appData = combineReducers({
  logged: loggedReducer,
  loggedOut: loggedOutReducer,
  loading: loadingReducer,
  deduction: deductionReducer,
});

export default appData;