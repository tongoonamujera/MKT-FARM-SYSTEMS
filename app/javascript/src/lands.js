const Lands = () => {
  const firstBtn = document.querySelector('.lands-first-label');
  const secondBtn = document.querySelector('.lands-second-label');

  const firstDiv = document.querySelector('.lands-first-div');
  const secondDiv = document.querySelector('.lands-second-div');

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

export default Lands;