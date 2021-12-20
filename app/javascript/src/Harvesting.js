const Harvesting = () => {
  const firstBtn = document.querySelector('.harvesting-first-label');
  const secondBtn = document.querySelector('.harvesting-second-label');

  const firstDiv = document.querySelector('.harvesting-first-div');
  const secondDiv = document.querySelector('.harvesting-second-div');

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

export default Harvesting;