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
  categoryItems.insertAdjacentHTML('beforeend', `<label class="category-item" for="${category.name}">${category.name}</label>
                                                    <input value="${category.id}" id="${category.name}" name="items[]" type="checkbox" style="display:none"/>`);
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
        categoryItemsArr.splice(0, categoryItemsArr.length);

        data.forEach(item => categoryItemsArr.push(item.name));
        appendElements(data);
      });
  });
};

const categoryItems = document.querySelector('.category-items');
let categoryItemsArr = [];

export { changeCategory, categoryItems, categoryItemsArr };
