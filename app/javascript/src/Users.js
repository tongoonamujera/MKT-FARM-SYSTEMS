const Users = () => {
  const totals = document.querySelector('.users-count');
  if (totals) {
    const total = totals.dataset.id;

    console.log(total);
    const Admin = () => {
      const canvas = document.querySelector('#admin');
      if (canvas) {
        const adminUsers = +canvas.dataset.id;
        const percentage = ((adminUsers / +total));
        const ctx = canvas.getContext("2d");
        ctx.beginPath();
        ctx.lineWidth = 20;
        ctx.arc(70, 40, 40, 0, (percentage) * 2 * Math.PI);
        ctx.strokeStyle = 'blue';
        ctx.stroke();
        ctx.font = "18px Arial";
        ctx.fontStyle = "bold";
        ctx.fillText(`${Math.round(percentage * 100)}%`, 55, 55);
      }
    }

    const farmOwners = () => {
      const canvas = document.querySelector('#farmOwner');
      if (canvas) {
        const adminUsers = +canvas.dataset.id;
        const percentage = ((adminUsers / +total));
        const ctx = canvas.getContext("2d");
        ctx.beginPath();
        ctx.lineWidth = 20;
        ctx.arc(70, 40, 40, 0, (percentage) * 2 * Math.PI);
        ctx.strokeStyle = 'red';
        ctx.stroke();
        ctx.font = "18px Arial";
        ctx.fontStyle = "bold";
        ctx.fillText(`${Math.round(percentage * 100)}%`, 55, 55);
      }
    }

    const farmManager = () => {
      const canvas = document.querySelector('#farmManager');
      if (canvas) {
        const adminUsers = +canvas.dataset.id;
        const percentage = ((adminUsers / +total));
        const ctx = canvas.getContext("2d");
        ctx.beginPath();
        ctx.lineWidth = 20;
        ctx.arc(70, 40, 40, 0, (percentage) * 2 * Math.PI);
        ctx.strokeStyle = '#0ff';
        ctx.stroke();
        ctx.font = "18px Arial";
        ctx.fontStyle = "bold";
        ctx.fillText(`${Math.round(percentage * 100)}%`, 55, 55);
      }
    }

    const Verified = () => {
      const canvas = document.querySelector('#verified');
      if (canvas) {
        const adminUsers = +canvas.dataset.id;
        const percentage = ((adminUsers / +total));
        const ctx = canvas.getContext("2d");
        ctx.beginPath();
        ctx.lineWidth = 20;
        ctx.arc(70, 40, 40, 0, (percentage) * 2 * Math.PI);
        ctx.strokeStyle = 'green';
        ctx.stroke();
        ctx.font = "18px Arial";
        ctx.fontStyle = "bold";
        ctx.fillText(`${Math.round(percentage * 100)}%`, 55, 55);
      }
    }

    const Contractor = () => {
      const canvas = document.querySelector('#contractor');
      if (canvas) {
        const adminUsers = +canvas.dataset.id;
        const percentage = ((adminUsers / +total));
        const ctx = canvas.getContext("2d");
        ctx.beginPath();
        ctx.lineWidth = 20;
        ctx.arc(70, 40, 40, 0, (percentage) * 2 * Math.PI);
        ctx.strokeStyle = '#7e1d2d';
        ctx.stroke();
        ctx.font = "18px Arial";
        ctx.fontStyle = "bold";
        ctx.fillText(`${Math.round(percentage * 100)}%`, 55, 55);
      }
    }

    const AllUsers = () => {
      const canvas = document.querySelector('#allUsers');
      if (canvas) {
        const adminUsers = +canvas.dataset.id;
        const percentage = ((adminUsers / +total));
        const ctx = canvas.getContext("2d");
        ctx.beginPath();
        ctx.lineWidth = 20;
        ctx.arc(70, 50, 38, 0, (percentage) * 2 * Math.PI);
        ctx.strokeStyle = '#7e1d2d';
        ctx.stroke();
        ctx.font = "18px Arial";
        ctx.fontStyle = "bold";
        ctx.fillText(`${Math.round(percentage * 100)}%`, 50, 55);
      }
    }

    AllUsers();
    Contractor();
    Verified();
    farmManager();
    farmOwners();
    Admin();
  }
}

export default Users;