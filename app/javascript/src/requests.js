const Requests = () => {
  const firstBtn = document.querySelector('.requests-first-label');
  const secondBtn = document.querySelector('.requests-second-label');

  const firstDiv = document.querySelector('.requests-first-div');
  const secondDiv = document.querySelector('.requests-second-div');

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

export default Requests;