const CerealSales = () => {
  const firstBtn = document.querySelector('.csales-first-label');
  const secondBtn = document.querySelector('.csales-second-label');

  const firstDiv = document.querySelector('.csales-first-div');
  const secondDiv = document.querySelector('.csales-second-div');

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

export default CerealSales;