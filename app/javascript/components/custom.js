const createCustom = () => {
  const customBtn = document.querySelector('.custom-btn');

  customBtn.addEventListener('click', (e) => {
    const customField = document.querySelector('.custom-field');
    const customItems = document.querySelector('.category-items');
    customItems.insertAdjacentHTML('beforeend', `<div class="category-item deletable"><small>${customField.value}</small></div>`);
  });
};

export { createCustom };
