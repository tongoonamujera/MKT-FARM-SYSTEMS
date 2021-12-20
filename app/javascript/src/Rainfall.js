const Rainfalls = () => {
  const firstBtn = document.querySelector('.rainfalls-first-label');
  const secondBtn = document.querySelector('.rainfalls-second-label');

  const firstDiv = document.querySelector('.rainfalls-first-div');
  const secondDiv = document.querySelector('.rainfalls-second-div');

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

export default Rainfalls;