const Deliveries = () => {
  const firstBtn = document.querySelector('.deliveries-first-label');
  const secondBtn = document.querySelector('.deliveries-second-label');

  const firstDiv = document.querySelector('.deliveries-first-div');
  const secondDiv = document.querySelector('.deliveries-second-div');

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

export default Deliveries;