// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'
import Login from './Pages/UserAuth/Login'
import Registration from './Pages/UserAuth/Registration'
import { createRoot } from 'react-dom/cjs/react-dom.production.min'
import styles from './homePage.module.css'


const Home = () => {
  return (
    <div className={styles.container}>
      <Login /> <br/>
      <Registration />
    </div>
  )
}

document.addEventListener('DOMContentLoaded', () => {
  const container = document.body.appendChild(document.createElement('div'));
  const root = createRoot(container)
  root.render(
    <Home />
  )
})
