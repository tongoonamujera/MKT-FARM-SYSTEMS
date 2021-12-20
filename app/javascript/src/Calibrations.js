const Calibrations = () => {
  const firstBtn = document.querySelector('.calibrations-first-label');
  const secondBtn = document.querySelector('.calibrations-second-label');

  const firstDiv = document.querySelector('.calibrations-first-div');
  const secondDiv = document.querySelector('.calibrations-second-div');

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

export default Calibrations;