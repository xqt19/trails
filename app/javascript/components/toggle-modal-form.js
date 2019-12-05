const toggleModalForm = () =>{
  const button = document.querySelector(".add-activity-btn");
  button.addEventListener("click", (e) =>{
    const form = document.querySelector("#modal-form-box");
    form.classList.toggle("open");
  });
}


export { toggleModalForm }
