import swal from 'sweetalert';
window.swal = swal
const initSweetalert = (selector, options = {}, callback = () => {}) => {
  const swalButtons = document.querySelectorAll(selector);
  if (swalButtons[0]) { // protect other pages
    console.log("klhkjhhkjhkhjk")
    swalButtons.forEach((swalButton) => {
      swalButton.addEventListener('click', () => {
      console.log(swalButton)
      swal(options).then(callback); // <-- add the `.then(callback)`
    });

    })
  }
};

window.initSweetalert = initSweetalert
export { initSweetalert };
