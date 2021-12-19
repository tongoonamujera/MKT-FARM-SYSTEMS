const Wages = () => {
  const firstBtn = document.querySelector('.wages-first-label');
  const secondBtn = document.querySelector('.wages-second-label');

  const firstDiv = document.querySelector('.wages-first-div');
  const secondDiv = document.querySelector('.wages-second-div');

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

export default Wages;