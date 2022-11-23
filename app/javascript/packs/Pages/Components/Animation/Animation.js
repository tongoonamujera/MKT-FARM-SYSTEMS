import React from 'react';
import useAnimation from '../../../CustomHooks/useAnimation';

const WordAnimation = ({ text, tspeed, dspeed }) => {
  const [type] = useAnimation(text, tspeed, dspeed);

  return (
    <>
      {type}
    </>
  )
}

export default WordAnimation;