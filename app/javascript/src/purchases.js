const Purchases = () => {
  const firstBtn = document.querySelector('.purchases-first-label');
  const secondBtn = document.querySelector('.purchases-second-label');

  const firstDiv = document.querySelector('.purchases-first-div');
  const secondDiv = document.querySelector('.purchases-second-div');

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

export default Purchases;