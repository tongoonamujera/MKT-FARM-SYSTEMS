const deduction = () => {
  const firstBtn = document.querySelector('.deduction-first-label');
  const secondBtn = document.querySelector('.deduction-second-label');

  const firstDiv = document.querySelector('.deduction-first-div');
  const secondDiv = document.querySelector('.deduction-second-div');

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

  const additionBtn = document.querySelector('.button');
  const activation = document.querySelector('.activate');
  const hiddenDiv = document.querySelector('.hidden');

  if (additionBtn) {
    if (activation) {
      additionBtn.addEventListener('click', () => {
        hiddenDiv.classList.remove('activate');
      });
    } else {
      additionBtn.addEventListener('click', () => {
        hiddenDiv.classList.add('activate');
      });
    }
  }
}

export default deduction;