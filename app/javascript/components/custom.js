import { categoryItemsArr } from './button.js';

const bindItemToClick = (e) => {
  e.currentTarget.classList.toggle('active');
};

const toggleActiveClass = (item) => {
  item.addEventListener('click', bindItemToClick);
};

const toggleButtons = () => {
  const btns = document.querySelectorAll('.custom-item');
  btns.forEach(toggleActiveClass);
}

const appendButton = (custom) => {
  customItems.insertAdjacentHTML('beforeend', ` <div class="custom-item">
                                                  <small>${custom}</small>
                                                  <div class="deletable">+</div>
                                                </div>`);
}

const deleteCustom = (item) => {
  item.addEventListener('click', (e) => {
    const item = e.currentTarget.previousElementSibling.innerText;
    const index = categoryItemsArr.indexOf(item);
    if (index > -1) {
      categoryItemsArr.splice(index, 1);
    }
    e.currentTarget.parentNode.remove();
  });
}

const selectCustom = () => {
  const deleteItems = document.querySelectorAll('.deletable');
  deleteItems.forEach(deleteCustom);
};

const appendElements = async (data) => {
  await appendButton(data);
  toggleButtons();
  selectCustom();
};

const createCustom = () => {
  const customField = document.querySelector('.custom-field');

  customBtn.addEventListener('click', (e) => {
    if (!categoryItemsArr.includes(customField.value) && customField.value !== '') {
      appendElements(customField.value);
      categoryItemsArr.push(customField.value);
    }
  });
};

const customItems = document.querySelector('.category-items');
const customBtn = document.querySelector('.custom-btn');

export { createCustom };
