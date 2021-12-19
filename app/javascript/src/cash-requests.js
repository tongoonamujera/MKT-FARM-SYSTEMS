const cashRequsets = () => {
  console.log('loaded');

  const firstBtn = document.querySelector('.cash-req-first-label');
  const secondBtn = document.querySelector('.cash-req-second-label');

  const firstDiv = document.querySelector('.cash-req-first-div');
  const secondDiv = document.querySelector('.cash-req-second-div');

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

export default cashRequsets;