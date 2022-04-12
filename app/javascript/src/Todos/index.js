import { creatTask } from './htmlDisplay.js';
import { TaskStorage } from './localStorage.js';

/* eslint-disable */
export const TodoTasks = () => {
  document.querySelector('.form-btn').addEventListener('click', (e) => {
    const textField = document.querySelector('input[type="text"]');
    const tasks = {
    description: textField.value,
    completed: false,
    index: 0,
    }

    const task = new TaskStorage();
    if (tasks.description) {
    task.addTask(tasks)
    textField.value = '';
    }
    console.log(textField.value)
    e.preventDefault();
    location.reload();
  });

  const todo = document.querySelector('.tasks-div');
  creatTask(todo);
  document.querySelector('.todo').addEventListener('change', (e) => {
    const task = new TaskStorage();
    task.changeStatus(e);
    location.reload();
  });

  document.querySelector('.todo').addEventListener('keyup', (e) => {
    const task = new TaskStorage();
    if (e.keyCode == 13){
      task.editTask(e);
      location.reload();
    }
  });

  // const todo = document.querySelector('.tasks-div');

  todo.addEventListener('click', (e) => {
    const task = new TaskStorage();
    task.deleteTask(e);
  });

  document.querySelector('.delete-btn').addEventListener('click', () => {
    const task = new TaskStorage();
    task.removeTasks();
    location.reload();
  });
}
