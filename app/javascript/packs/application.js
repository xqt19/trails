import "bootstrap";
import "../plugins/flatpickr"
import { initSelect2 } from '../plugins/init_select2';
import { initSweetalert } from '../plugins/init_sweetalert';

import { changeCategory } from '../components/button';
import { createCustom } from '../components/custom';
import { changeQuantity } from '../components/quantity';
import { addDelegate } from '../components/delegate';
import { submitButtonForm } from '../components/submit-button-form';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment 	the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

const categoryItems = document.querySelector('.category-items');
const customItems = document.querySelector('.category-items');
const customBtn = document.querySelector('.custom-btn');
const quantities = document.querySelectorAll('.quantity');
const form = document.getElementById('new_activity');
const delegates = document.querySelectorAll('.delegate');

initMapbox();
initSelect2();

if (categoryItems) {
  changeCategory();
}

if (customItems) {
  createCustom();
}

if (quantities) {
  changeQuantity();
}

if (delegates) {
  addDelegate();
}

if (form) {
  submitButtonForm();
}

export { categoryItems, customItems, customBtn, quantities, delegates, form };
