import { combineReducers } from "redux";
import constants from "../constants/Auth/AuthConst";
import userConstants from "../constants/Auth/userConstants";

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
        deduction: payload,
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

const seasonReducer = (state = { }, { type, payload }) => {
  switch (type) {
    case constants.ActivateSeason:
      return {
        ...state,
        deduction: payload,
      }

    case constants.DeActivateSeason:
      return {
        ...state,
        deduction: payload,
      }

    case constants.CreateSeason:
      return {
        ...state,
        deduction: payload,
      }

    case constants.GetActiveSeason:
      return {
        ...state,
        deduction: payload,
      }
    default:
      return state;
  }
}

const userReducer = (state = { }, { type, payload }) => {
  switch (type) {
    case userConstants.GetAllUsers:
      return {
        ...state,
        payload,
      }

    case userConstants.DeleteUser:
      return {
        ...state,
        payload,
      }

    case userConstants.EditUser:
      return {
        ...state,
        payload,
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
  season: seasonReducer,
  user: userReducer,
});

export default appData;