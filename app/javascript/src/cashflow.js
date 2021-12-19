const cashFlows = () => {
  const firstBtn = document.querySelector('.cashflow-first-label');
  const secondBtn = document.querySelector('.cashflow-second-label');

  const firstDiv = document.querySelector('.cashflow-first-div');
  const secondDiv = document.querySelector('.cashflow-second-div');

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

export default cashFlows;