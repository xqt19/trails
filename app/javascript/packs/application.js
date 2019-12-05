import "bootstrap";
import "../plugins/flatpickr"
import { initSelect2 } from '../plugins/init_select2';
import { changeCategory } from '../components/button';
import { createCustom } from '../components/custom';

initSelect2();

changeCategory();
createCustom();
