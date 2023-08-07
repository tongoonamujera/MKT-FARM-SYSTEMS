import { useEffect, useState } from "react";

export const useAnimation = (text, typingSpeed, deletingSpeed) => {
  const word = text;
  const [typed, setTyped] = useState('');
  const [typing, setTyping] = useState(true);
  const [currentIndex, setCurrentIndex] = useState(0)

  const animationControl = (arr) => {
    if (typing) {
      setTimeout(() => {
        setTyped(arr[currentIndex].slice(0, typed.length + 1))
        if (typed.length === arr[currentIndex].length)
          setTyping(!typing)
      }, typingSpeed)
    } else {
      setTimeout(() => {
        setTyped(typed.slice(0, typed.length - 1))
        if (typed.length === 0) {
          setTyping(!typing)
          setCurrentIndex(currentIndex + 1)

          if (currentIndex === arr.length - 1) {
            setTyping(!typing)
            setCurrentIndex(0)
          }
        }

      }, deletingSpeed)
    }
  }

  useEffect(() => {
    animationControl(word)
  }, [typed, typing, currentIndex])

  return [typed];
}

export default useAnimation;