const Users = () => {
  const canvasdrawing = () => {
    const canvas = document.querySelector('#canvas');
    const ctx = canvas.getContext("2d");
    ctx.beginPath();
    ctx.lineWidth = 20;
    ctx.arc(95, 50, 40, 0, 2 * Math.PI);
    ctx.strokeStyle = 'blue';
    ctx.stroke();
    ctx.font = "16px Arial";
    ctx.fillText('100%', 70, 55)
  }
}

export default Users();