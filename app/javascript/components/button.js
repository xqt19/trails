import { categoryItems } from '../packs/application'

const bindItemToClick = (e) => {
  e.currentTarget.classList.toggle('active');
};

const toggleActiveClass = (item) => {
  item.addEventListener('click', bindItemToClick);
};

const deleteCustom = (item) => {
  item.addEventListener('click', (e) => {
    const item = e.currentTarget.parentNode.firstElementChild.innerText;
    categoryItems.insertAdjacentHTML('beforeend', `<input type="hidden" value="${item}" name="deletes[]">`);
    const index = categoryItemsArr.indexOf(item);
    if (index > -1) {
      categoryItemsArr.splice(index, 1);
    }
    e.currentTarget.parentNode.remove();
  });
}

const toggleButtons = () => {
  const btns = document.querySelectorAll('.category-item');
  const deleteItems = document.querySelectorAll('.deletable');
  btns.forEach(toggleActiveClass);
  deleteItems.forEach(deleteCustom);
}

const appendButton = (category) => {
  if (category.custom){
    categoryItems.insertAdjacentHTML('beforeend', ` <div class="custom-item-container">
                                                      <label class="category-item" for="${category.name}">${category.name}</label>
                                                      <input value="${category.id}" id="${category.name}" name="items[]" type="checkbox" style="display:none"/>
                                                      <div class="deletable">+</div>
                                                    </div>`);
  } else {
    categoryItems.insertAdjacentHTML('beforeend', `<label class="category-item" for="${category.name}">${category.name}</label>
                                                    <input value="${category.id}" id="${category.name}" name="items[]" type="checkbox" style="display:none"/>`);
  }
}

const appendElements = async (data) => {
  for (const category of data) {
    await appendButton(category);
  }
  toggleButtons();
}

const fetchData = (category) => {
  fetch(`/categories/${category.value}/items`)
    .then(response => response.json())
    .then((data) => {
      categoryItems.innerHTML = '';
      categoryItemsArr.splice(0, categoryItemsArr.length);

      data.forEach(item => categoryItemsArr.push(item.name));
      appendElements(data);
    });
};

const changeCategory = () => {
  const category = document.querySelector('.select-category');

  fetchData(category);

  category.addEventListener('change', (e) => {
    fetchData(category);
  });
};

// const categoryItems = document.querySelector('.category-items');
let categoryItemsArr = [];

export { changeCategory, categoryItems, categoryItemsArr };
