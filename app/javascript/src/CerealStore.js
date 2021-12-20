const CerealStores = () => {
  const firstBtn = document.querySelector('.cerealstores-first-label');
  const secondBtn = document.querySelector('.cerealstores-second-label');

  const firstDiv = document.querySelector('.cerealstores-first-div');
  const secondDiv = document.querySelector('.cerealstores-second-div');

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

export default CerealStores;