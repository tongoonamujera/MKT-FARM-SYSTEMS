const Workshops = () => {
  const firstBtn = document.querySelector('.workshops-first-label');
  const secondBtn = document.querySelector('.workshops-second-label');

  const firstDiv = document.querySelector('.workshops-first-div');
  const secondDiv = document.querySelector('.workshops-second-div');

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

export default Workshops;