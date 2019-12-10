const friendsearchbar= () =>{
  const button = document.querySelector("#friendsearchbar");
  button.addEventListener("click", (e) =>{
    button.classList.toggle("animated");
    button.classList.toggle("bounce");
  });
}


export { friendsearchbar }
