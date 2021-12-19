const Rentals = () => {
  const firstBtn = document.querySelector('.rentals-first-label');
  const secondBtn = document.querySelector('.rentals-second-label');

  const firstDiv = document.querySelector('.rentals-first-div');
  const secondDiv = document.querySelector('.rentals-second-div');

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

export default Rentals;