import { quantities } from '../packs/application'

const submitQuantity = (quantity) => {
  quantity.addEventListener('submit', (e) => {
    let change = quantity.querySelector('input');
    change.type = (change.type === 'search') ? 'submit' : 'search';
    e.preventDefault();
  });
};

const changeQuantity = () => {
  quantities.forEach(submitQuantity);
};

// const quantities = document.querySelectorAll('.quantity');

export { changeQuantity };
