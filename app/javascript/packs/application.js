import "bootstrap";
import "../plugins/flatpickr"

import { initSelect2 } from '../plugins/init_select2';
import { toggleModalForm } from '../components/toggle-modal-form'
import { submitButtonForm } from '../components/submit-button-form';
import { changeCategory } from '../components/button';
import { createCustom } from '../components/custom';
import { initSweetalert } from '../plugins/init_sweetalert';
//toggleModalForm();

initSelect2();
changeCategory();
createCustom();
submitButtonForm();


