const backArrowFadeOut= () =>{
  const body = document.querySelector("body");
  const button = document.querySelector(".fa-arrow-circle-left");
  button.addEventListener("click", (e) =>{
    body.classList.toggle("fadeOut");
  });
}


export { backArrowFadeOut }
