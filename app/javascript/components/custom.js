import { customItems, customBtn } from '../packs/application';
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
  customItems.insertAdjacentHTML('beforeend', ` <div class="custom-item-container">
                                                  <label class="custom-item active" for="${custom}">${custom}</label>
                                                  <input value="${custom}" id="${custom}" name="items[]" type="checkbox" style="display:none" checked="checked">
                                                  <div class="deletable">+</div>
                                                </div>`);
}

const deleteCustom = (item) => {
  item.addEventListener('click', (e) => {
    const item = e.currentTarget.parentNode.firstElementChild.innerText;
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
    } else {
      alert("This item already exists in this category!")
    }
    document.getElementById('list_others_custom_item').value = '';
  });
};

// const customItems = document.querySelector('.category-items');
// const customBtn = document.querySelector('.custom-btn');

export { createCustom };
