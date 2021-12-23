const Animate = () => {
  const text = document.querySelector('.animation');
  let i = 0;
  let timer;
  const words = [text.dataset.id];

  const typeEffect = () => {
    let word = words[i].split("");
    const typingLoop = () => {
      if (word.length > 0 ) {
        text.innerHTML += word.shift();
      } else {
        deleteEffect();
        return false;
      }
      timer = setTimeout(typingLoop, 270);
    }
    typingLoop();
  }

  const deleteEffect = () => {
    let word = words[i].split("");
    const deleteLoop = () => {
      if (word.length > 0) {
        word.pop();
        text.innerHTML = word.join("");
      } else {
        typeEffect();
        return false;
      }
      timer = setTimeout(deleteLoop, 200);
    }
    deleteLoop();
  }

  typeEffect();
}

export default Animate;