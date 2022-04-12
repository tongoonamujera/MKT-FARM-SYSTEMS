/* eslint-disable */
export class TaskStorage {
  constructor(){};
  getTask = () => {
    const task = JSON.parse(localStorage.getItem('alltasks'));

    const tasksi = [];
    for (const i in task) {
      task[i].index = i;
      tasksi.push(task[i]);
    }
    let allTasks;
    if (localStorage.getItem('alltasks') !== null) {
      allTasks = tasksi;
    } else {
      allTasks = [...tasksi];
      localStorage.setItem('alltasks', JSON.stringify(allTasks));
    }
    return allTasks;
  }

  addTask = (task) => {
    let allTasks = this.getTask();
    allTasks.push(task);

    const tasks = [];

      for (let i in allTasks ) {
        allTasks[i].index = i;
        tasks.push(allTasks[i])
      }
    localStorage.setItem('alltasks', JSON.stringify(tasks));
  }

  changeStatus = (e) => {
    const allTasks = this.getTask();
    const form = e.target.checked;
    const value = e.target.value;

    form ? allTasks[value].completed = true : allTasks[value].completed = false;
    localStorage.setItem('alltasks', JSON.stringify(allTasks));
  }

  removeTasks = () => {
    const allTasks = this.getTask();
    const tasks = allTasks.filter((task) => {
      return task.completed != true;
    });

    localStorage.setItem('alltasks',JSON.stringify(tasks));
  }

  deleteTask = (e) => {
    const p = e.target.tagName;
    if (p === "I") {
      const ind = +e.target.dataset.id;
      const allTasks = this.getTask();
      const temp = allTasks.filter((task) => {
        return task.index != ind;
      });

      const tasksi = [];
      for (let i in temp ) {
        temp[i].index = i;
        tasksi.push(temp[i])
      }

      localStorage.setItem('alltasks', JSON.stringify(tasksi));
      location.reload();
    }
  }

  editTask = (e) => {
    const p = e.target.tagName;
    if (p === "P") {
      const text = e.target.innerText;
      const index = +e.target.dataset.id;
      const allTasks = this.getTask();
      const temp = [];

      for (let i in allTasks) {
        if (i == index) {
          allTasks[index].description = text;
        }
        temp.push(allTasks[i]);
      }
      localStorage.setItem('alltasks',JSON.stringify(temp));
    }
  }
}