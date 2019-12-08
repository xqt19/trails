import "bootstrap";
import "../plugins/flatpickr"
import { initSelect2 } from '../plugins/init_select2';
import { initSweetalert } from '../plugins/init_sweetalert';

import { changeCategory } from '../components/button';
import { createCustom } from '../components/custom';
import { submitButtonForm } from '../components/submit-button-form';
import { checkListItems, checkDelegates } from '../components/checkbox';

const categoryItems = document.querySelector('.category-items');
const customItems = document.querySelector('.category-items');
const customBtn = document.querySelector('.custom-btn');
const form = document.getElementById('new_activity');

const checkboxes = document.querySelectorAll('.checkbox');
const delegates = document.querySelectorAll('.delegate-checkbox');

initSelect2();

if (categoryItems) {
  changeCategory();
}

if (customItems) {
  createCustom();
}

if (form) {
  submitButtonForm();
}

if (checkboxes) {
  checkListItems();
}

if (delegates) {
  checkDelegates();
}

export { categoryItems, customItems, customBtn, form, checkboxes, delegates };
