const Activities = () => {
  const firstBtn = document.querySelector('.activities-first-label');
  const secondBtn = document.querySelector('.activities-second-label');

  const firstDiv = document.querySelector('.activities-first-div');
  const secondDiv = document.querySelector('.activities-second-div');

  if (firstDiv && firstBtn && secondDiv && secondBtn) {
    secondDiv.classList.add('active');
    firstBtn.addEventListener('click', () => {
      secondDiv.classList.remove('active');
      firstDiv.classList.add('active');
    });

    secondBtn.addEventListener('click', () => {
      firstDiv.classList.remove('active');
      secondDiv.classList.add('active');
    });
  }
}

export default Activities;