const friendsearchbar= () =>{
  const searchbar = document.querySelector("#friendsearchbar");
  const box = document.querySelector('#friendresults');
  searchbar.addEventListener("input", (e) =>{
    // box.classList.toggle("animated");
    // box.classList.toggle("bounce");
    console.log(e.target.value)
    box.insertAdjacentHTML('afterbegin', '<%= render friendcard %>');

  });
}


export { friendsearchbar }

"no longer using this component, now using AJAX instead of js"
