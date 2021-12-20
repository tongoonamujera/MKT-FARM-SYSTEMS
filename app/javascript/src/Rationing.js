const Rationing = () => {
  const firstBtn = document.querySelector('.rationing-first-label');
  const secondBtn = document.querySelector('.rationing-second-label');

  const firstDiv = document.querySelector('.rationing-first-div');
  const secondDiv = document.querySelector('.rationing-second-div');

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

export default Rationing;