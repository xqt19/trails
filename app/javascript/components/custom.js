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

const appendButton = (custom) => {
  customItems.insertAdjacentHTML('beforeend', ` <div class="category-item">
                                                  <small>${custom}</small>
                                                  <div class="deletable">+</div>
                                                </div>`);
}

const deleteCustom = (item) => {
  item.addEventListener('click', (e) => {
    const item = e.currentTarget.previousElementSibling.innerText;
    const index = insertedItems.indexOf(item);
    if (index > -1) {
      insertedItems.splice(index, 1);
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
    if (!insertedItems.includes(customField.value) && customField.value !== '') {
      appendElements(customField.value);
      insertedItems.push(customField.value);
    }
  });
};

const customItems = document.querySelector('.category-items');
const customBtn = document.querySelector('.custom-btn');
let insertedItems = [];

export { createCustom, insertedItems };
