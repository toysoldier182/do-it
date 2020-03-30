require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";

import { newTodo } from '../components/new_todo';

document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  newTodo();
});
