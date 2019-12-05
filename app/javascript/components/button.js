import { insertedItems } from './custom.js';

const bindItemToClick = (e) => {
  e.currentTarget.classList.toggle('active');
};

const toggleActiveClass = (item) => {
  item.addEventListener('click', bindItemToClick);
};

const toggleButtons = () => {
  const btns = document.querySelectorAll('.category-item');
  btns.forEach(toggleActiveClass);
}

const appendButton = (category) => {
  categoryItems.insertAdjacentHTML('afterbegin', `<div class="category-item"><small>${category.name}</small></div>`);
}

const appendElements = async (data) => {
  for (const category of data) {
    await appendButton(category);
  }
  toggleButtons();
}

const changeCategory = () => {
  const category = document.querySelector('.select-category');

  category.addEventListener('change', (e) => {
    fetch(`/categories/${category.value}/items`)
      .then(response => response.json())
      .then((data) => {
        categoryItems.innerHTML = '';
        appendElements(data);
      });
      insertedItems.splice(0, insertedItems.length);
  });
};

const categoryItems = document.querySelector('.category-items');

export { changeCategory, categoryItems };
