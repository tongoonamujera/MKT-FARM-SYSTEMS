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

const appData = combineReducers({
  logged: loggedReducer,
  loggedOut: loggedOutReducer,
});

export default appData;