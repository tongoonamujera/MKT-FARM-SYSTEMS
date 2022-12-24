import { useEffect, useState } from "react";

export const useAnimation = (text, typingSpeed, deletingSpeed) => {
  const word = text;
  const [typed, setTyped] = useState('');
  const [typing, setTyping] = useState(true);
  const [currentIndex, setCurrentIndex] = useState(0)

  const indexControl = (arr) => {
    if (arr.length === 0) return currentIndex;
    (currentIndex === 0 ? setCurrentIndex(currentIndex + 1)
      : (currentIndex > 0
        && (currentIndex < arr.length - 1)) ? setCurrentIndex(currentIndex + 1)
    : setCurrentIndex(0))
    return currentIndex;
  }

  useEffect(() => {
    if (typing) {
      setTimeout(() => {
        setTyped(word[currentIndex].slice(0, typed.length + 1))
        if (typed.length === word[currentIndex].length)
          setTyping(!typing)
      }, typingSpeed)
    } else {
      setTimeout(() => {
        setTyped(typed.slice(0, typed.length - 1))
        if (typed.length === 0) {
          setTyping(!typing)
          indexControl(word);
        }
      }, deletingSpeed)
    }
  }, [typed, typing, currentIndex])

  return [typed];
}

export default useAnimation;