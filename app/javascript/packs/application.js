import "bootstrap";
import "../plugins/flatpickr"

import { initSelect2 } from '../plugins/init_select2';
import { toggleModalForm } from '../components/toggle-modal-form'
import { submitButtonForm } from '../components/submit-button-form';
import { changeCategory } from '../components/button';
import { createCustom } from '../components/custom';
import { changeQuantity } from '../components/quantity';

// toggleModalForm();
initSelect2();

const categoryItems = document.querySelector('.category-items');
const customItems = document.querySelector('.category-items');
const customBtn = document.querySelector('.custom-btn');
const quantities = document.querySelectorAll('.quantity');

if (quantities) {
  changeQuantity();
}

if (categoryItems) {
  changeCategory();
}
if (customItems) {
  createCustom();
}

// submitButtonForm();

// console.log(customItems);
// console.log(customBtn);
// console.log(quantities);
// console.log(categoryItems);

export { categoryItems, customItems, customBtn, quantities };
