
const submitButtonForm = () =>{
  const form = document.querySelector("#new_activity");
  form.addEventListener("submit", (e) =>{
    const amc = document.querySelector('#activity-modal-content');
    console.log(e);
    amc.insertAdjacentHTML('beforeend', e.target[3].value);
  });
}


export { submitButtonForm }
