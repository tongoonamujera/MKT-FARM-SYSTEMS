import cashRequsets from './cash-requests';
import cashFlows from './cashflow';
import deduction from './deduction';
import Purchases from './purchases';
import Rentals from './rentals';
import Wages from './wages';
import CerealStores from './CerealStore';
import Deliveries from './delivery';
import Harvesting from './Harvesting';
import Rationing from './Rationing';
import Stores from './stores';
import Workshops from './Workshop';
import Calibrations from './Calibrations';
import Irrigations from './Irrigation';
import Lands from './lands';
import Rainfalls from './Rainfall';
import Activities from './Activities';
import Requests from './requests';
import Timebooks from './timebook';
import CerealSales from './cereal_sales';
import Animate from './textAnimation';
import Users from './Users';
import { TodoTasks } from './Todos/index';
window.onload = function(){
  cashRequsets();
  cashFlows();
  deduction();
  Purchases();
  Rentals();
  Wages();
  CerealStores();
  Deliveries();
  Harvesting();
  Rationing();
  Stores();
  Workshops();
  Calibrations();
  Irrigations();
  Lands();
  Rainfalls();
  Activities();
  Requests();
  Timebooks();
  CerealSales();
  Animate();
  Users();
  TodoTasks();
  var acc = document.getElementsByClassName("clickbutton");
  var i;

  const radioBtn = document.querySelectorAll('input[type="radio"]');
  document.querySelectorAll('label').forEach(label => {
    label.addEventListener('click', () => {
      radioBtn.forEach(btn => {
        if(btn.checked) {
          btn.checked = false;
          console.log(btn);
        }else {
          btn.checked = true;
          console.log(btn);
        }
      });
    });
  });

// preventing default
  const list = document.querySelectorAll('li');
  const xtraLinks = document.querySelectorAll('.xtra-links');
  [...list].forEach(list => {
    list.addEventListener('click', () => {
      setTimeout(() => {
        location.reload();
      }, 1000);
    });
  });

  [...xtraLinks].forEach(link => {
    link.addEventListener('click', () => {
      setTimeout(() => {
        location.reload();
      }, 1000);
    });
  });


  // switching between links
  const firstBtn = document.querySelector('.first-label');
  const secondBtn = document.querySelector('.second-label');
  const thirdBtn = document.querySelector('.third-label');

  const firstDiv = document.querySelector('.first-div');
  const secondDiv = document.querySelector('.second-div');
  const thirdDiv = document.querySelector('.third-div');

  if (firstDiv && firstBtn && secondDiv && secondBtn && thirdBtn && thirdDiv) {
    secondDiv.classList.add('active');
    firstBtn.addEventListener('click', () => {
      secondDiv.classList.remove('active');
      thirdDiv.classList.remove('active');
      firstDiv.classList.add('active');
    });

    secondBtn.addEventListener('click', () => {
      firstDiv.classList.remove('active');
      thirdDiv.classList.remove('active');
      secondDiv.classList.add('active');
    });

    thirdBtn.addEventListener('click', () => {
      firstDiv.classList.remove('active');
      thirdDiv.classList.add('active');
      secondDiv.classList.remove('active');
    });
  }

  //checking if an input has value 
  const textInput = document.querySelectorAll('input[type="text"]');
  if (textInput){
    textInput.forEach(input => {
      input.addEventListener('change', () => {
        if (input && input.value) {
          input.style.height = '100%';
          input.style.padding = '0.8rem';
          input.style.fontFamily = `Times New Roman', Times, serif`;
          input.style.fontStyle = 'oblique';
          input.style.fontSize = '16px';
          input.style.fontWeight = '600';
          input.style.textAlign = 'center';
        }
      });
    });
  }

  for (i = 0; i < acc.length; i++) {
    acc[i].addEventListener("click", function() {
      /* Toggle between adding and removing the "active" class,
      to highlight the button that controls the panel */
      this.classList.toggle("active");

      /* Toggle between hiding and showing the active panel */
      var panel = this.nextElementSibling;
      if (panel.style.display === "block") {
        panel.style.display = "none";
      } else {
        panel.style.display = "block";
      }
    });
  }
}