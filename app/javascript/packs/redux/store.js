import {legacy_createStore as createStore} from "redux"
import appData from "./Reducers/Reducers";
const store = createStore(
  appData,
  {},
  window.__REDUX_DEVTOOLS_EXTENSION__ && window.__REDUX_DEVTOOLS_EXTENSION__()
);
export default store;