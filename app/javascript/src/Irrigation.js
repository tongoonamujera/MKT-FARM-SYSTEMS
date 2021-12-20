const Irrigations = () => {
  const firstBtn = document.querySelector('.irrigations-first-label');
  const secondBtn = document.querySelector('.irrigations-second-label');

  const firstDiv = document.querySelector('.irrigations-first-div');
  const secondDiv = document.querySelector('.irrigations-second-div');

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

export default Irrigations;