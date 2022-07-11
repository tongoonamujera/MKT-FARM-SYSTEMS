// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'
import Login from './Pages/UserAuth/Login'
import Registration from './Pages/UserAuth/Registration'
import { createRoot } from 'react-dom/cjs/react-dom.production.min'
import styles from './homePage.module.css'
import { Provider, useDispatch, useSelector } from 'react-redux'
import store from './redux/store'
import Admin from './Screens/AdminScreen/Admin'
import proccesData from './CustomHooks/QuerryData'
import { loginUser } from './redux/Actions/Auth/AuthActions'
import { useEffect } from 'react'

const LogOutBtn = () => {
  const userId = useSelector(state => state.logged.user.id);
  const dispatch = useDispatch();
  const handleLogOut = (e) => {
    e.preventDefault()
    if (userId) {
      proccesData(`my/users/sign_out`, "DELETE", { id: userId })
        .then(res => {
          console.log(res)
          dispatch(loginUser(res))
        })
        .catch(err => console.log(err))
    }
  }  
  return (
    <button onClick={handleLogOut}>LOG OUT</button>
  )
}

const Home = () => {
  const checkLogged = () => {
    const urls = "logged_in"
    proccesData(urls, "GET")
      .then(res => console.log(res))
      .catch(err => console.log(err))
  }
  useEffect(() => {
    checkLogged();
  }, [])
  const logged = useSelector(state => state.logged.loggedIn);
  return (
    <div className={styles.container}>
      {
        logged ? <LogOutBtn /> : <Login />
      }
    </div>
  )
}

document.addEventListener('DOMContentLoaded', () => {
  const container = document.body.appendChild(document.createElement('div'));
  const root = createRoot(container)
  root.render(
    <Provider store={store}>
      <Home />
    </Provider>
  )
})
