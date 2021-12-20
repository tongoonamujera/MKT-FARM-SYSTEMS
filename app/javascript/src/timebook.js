const Timebooks = () => {
  const firstBtn = document.querySelector('.timebooks-first-label');
  const secondBtn = document.querySelector('.timebooks-second-label');

  const firstDiv = document.querySelector('.timebooks-first-div');
  const secondDiv = document.querySelector('.timebooks-second-div');

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

export default Timebooks;