import "bootstrap";
import "../plugins/flatpickr"
import { initSelect2 } from '../plugins/init_select2';
import { initSweetalert } from '../plugins/init_sweetalert';

import { changeCategory } from '../components/button';
import { createCustom } from '../components/custom';
import { submitButtonForm } from '../components/submit-button-form';

const categoryItems = document.querySelector('.category-items');
const customItems = document.querySelector('.category-items');
const customBtn = document.querySelector('.custom-btn');
const form = document.getElementById('new_activity');

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

export { categoryItems, customItems, customBtn, form };
