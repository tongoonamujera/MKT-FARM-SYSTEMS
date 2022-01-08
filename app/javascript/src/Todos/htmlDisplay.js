import { TaskStorage } from './localStorage.js';
/* eslint-disable */
const task = new TaskStorage();
const tasks = task.getTask();
const addEvents = () => {
  const draggable = document.querySelectorAll('.d-todo');
  draggable.forEach(dragging => {
    if (dragging) {
      dragging.addEventListener('dragstart', (e) => {
        dragging.classList.add('is-dragging');
      });

      dragging.addEventListener('dragover', (e) => {
        dragging.classList.add('over');
        e.preventDefault();
      })

      dragging.addEventListener('dragleave', () => {
        dragging.classList.remove('over');
      });

      dragging.addEventListener('drop', (e) => {
        const isDrag = document.querySelector('.is-dragging');
        const start = +isDrag.dataset.id;
        const over = +e.target.dataset.id;

        const task = JSON.parse(localStorage.getItem('alltasks'));
        task[start].index = over;
        task[over].index = start;

        const first = task[start];
        task[start] = task[over];
        task[over] = first;

        localStorage.setItem('alltasks', JSON.stringify(task));
        isDrag.classList.remove('is-dragging');
        location.reload();
      })
    }
  });
}

const changeSelectedInpBg = () => {
  const checked = document.querySelectorAll('input[type="checkbox"]');
  const toDo = document.querySelectorAll('.d-todo');

  [...checked].forEach(input => {
    if (input.checked) {
      [...toDo].forEach(todo => {
        let nev = input.value;
        if (todo.dataset.id === nev) {
          todo.classList.add('checked');
        }
      });
    }
  });
}

const createTodos = (task, index, todo) => {
  let todoDiv = document.createElement('div');
  todoDiv.classList = 'todo-body';
  todoDiv.innerHTML = `
    <div class='d-todo' draggable="true" data-id="${index}">
      ${ task.completed != true ? `<input type="checkbox" value="${index}" />` 
      : `<input type="checkbox" value="${index}" checked />` }
      <p contentEditable="true" data-id="${index}">
        ${task.description}
      </p>
      <section>
        <i class='far fa-trash-alt fa-2x' data-id="${index}"></i>
      </section>
    </div>
  `;

  todo.appendChild(todoDiv);

};

export const creatTask = (todo) => {
  [...tasks].forEach((task, index) => {
    createTodos(task, index, todo);
  });
  changeSelectedInpBg();
  addEvents();
}