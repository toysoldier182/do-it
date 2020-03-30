const addtodo = (event) => {
  const todoList = document.getElementById('todos-list');
  console.log(todoList);
}


const newTodo = () => {
  const form = document.getElementById("new-todo-form");
  form.addEventListener("submit", addTodo())
}






// const initUpdateNavbarOnScroll = () => {
//   const navbar = document.querySelector('.navbar-lewagon');
//   if (navbar) {
//     window.addEventListener('scroll', () => {
//       if (window.scrollY >= window.innerHeight) {
//         navbar.classList.add('navbar-lewagon-white');
//       } else {
//         navbar.classList.remove('navbar-lewagon-white');
//       }
//     });
//   }
// }

// export { newTodo };
