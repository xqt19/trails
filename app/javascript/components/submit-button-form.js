import { form } from '../packs/application';

const submitButtonForm = () =>{
  form.addEventListener("submit", (e) =>{
    const amc = document.getElementById('activity-modal-content');
    console.log(e);
    amc.insertAdjacentHTML('beforeend', e.target[3].value);
  });
};

// const form = document.getElementById("new_activity");

export { submitButtonForm };
