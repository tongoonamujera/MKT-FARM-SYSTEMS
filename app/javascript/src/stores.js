const Stores = () => {
  const firstBtn = document.querySelector('.stores-first-label');
  const secondBtn = document.querySelector('.stores-second-label');

  const firstDiv = document.querySelector('.stores-first-div');
  const secondDiv = document.querySelector('.stores-second-div');

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

export default Stores;