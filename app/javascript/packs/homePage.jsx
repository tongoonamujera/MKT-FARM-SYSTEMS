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
import { HashRouter, Route, Routes } from 'react-router-dom'
import DeductionTable from './Pages/Components/DeductionTables/DeductionTable'
import DeductionForm from './Pages/Components/DeductionTables/newDeductions/newDeduction'
import Showdeduction from './Pages/Components/DeductionTables/showDeduction/Showdeduction'
import User from './Pages/Components/users/user'
import ShowUserAccount from './Pages/Components/users/showUser/showUserAccount'

const Home = () => {
  const dispatch = useDispatch();
  const checkLogged = () => {
    const urls = "logged_in"
    proccesData.get(urls)
      .then(res => dispatch(loginUser(res)))
      .catch(err => console.log(err))
  }

  useEffect(() => {
    checkLogged();
  }, [])
  const logged = useSelector(state => state.logged.loggedIn);
  const isAdmin = useSelector(state => state.logged.user.is_admin);
  console.log('admin: ', isAdmin);
  return (
    <div className={styles.container}>
      <Routes>
        <Route path='/' element={logged ? <Admin /> : <Login />} />
        <Route path='/create_account' element={<Registration />} />
        <Route path='/deductions'>
          <Route index element={<DeductionTable/>} />
          <Route path='new' element={<DeductionForm />} />
          <Route path="show" element={<Showdeduction/>} />
        </Route>
        <Route path='/users'>
          <Route index element={<User />} />
          <Route path='show_user' element={<ShowUserAccount />}/>
        </Route>
      </Routes>
    </div>
  )
}

document.addEventListener('DOMContentLoaded', () => {
  const container = document.body.appendChild(document.createElement('div'));
  const root = createRoot(container)
  root.render(
    <Provider store={store}>
      <HashRouter>
        <Home />
      </HashRouter>
    </Provider>
  )
})
