// plugins
import "bootstrap";
import "../plugins/flatpickr"
import { initSelect2 } from '../plugins/init_select2';
import { initSweetalert } from '../plugins/init_sweetalert';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment 	the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

// component functions
import { changeCategory } from '../components/button';
import { createCustom } from '../components/custom';
import { submitButtonForm } from '../components/submit-button-form';
import { checkListItems, checkDelegates } from '../components/checkbox';
import { friendsearchbar } from '../components/friendsearchbar';
import { backArrowFadeOut } from '../components/backArrowFadeOut';
import { previewImageOnFileSelect } from '../components/photo_preview';


// element initializers
const categoryItems = document.querySelector('.category-items');
const customItems = document.querySelector('.category-items');
const customBtn = document.querySelector('.custom-btn');
const form = document.getElementById('new_activity');
const checkboxes = document.querySelectorAll('.checkbox');
const delegates = document.querySelectorAll('.delegate-checkbox');


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

initSelect2();
initMapbox();
previewImageOnFileSelect();
friendsearchbar();
backArrowFadeOut();

export { categoryItems, customItems, customBtn, form, checkboxes, delegates };
