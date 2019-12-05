const listCreate = () => {
  listSubmit.addEventListener('click', (e) => {
    const categoryActives = document.querySelectorAll('.category-item.active');
    const customActives = document.querySelectorAll('.custom-item.active');
    categoryActives.forEach((categoryActive) => {
      categoryActivesArr.push(categoryActive.firstElementChild.innerText);
    });
    customActives.forEach((customActive) => {
      customActivesArr.push(customActive.firstElementChild.innerText)
    });
    console.log(categoryActivesArr);
    console.log(customActivesArr);
    const selections = categoryActivesArr.concat(customActivesArr);
    console.log(selections);

  //   fetch('/trails//lists', {
  //     method: 'post',
  //     body: JSON.stringify(selections)
  //   }).then(response => response.json()).then(data => console.log(data));
  // });
};

const listSubmit = document.getElementById('list-submit');
let categoryActivesArr = [];
let customActivesArr = [];

export { listCreate };
