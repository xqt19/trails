import { quantities } from '../packs/application';

const submitData = (data) => {
  // fetch('/lists/:list_id/list_items/:id', {
  //   // how to get :list_id and :id?
  //   method: 'POST',
  //   body: JSON.stringify(data);
  // });
};

const submitQuantity = (quantity) => {
  quantity.addEventListener('change', (e) => {
    console.log(e);
    console.log(e.currentTarget.value);

    // submitData(e.currentTarget.value);
  });
};

const changeQuantity = () => {
  quantities.forEach(submitQuantity);
};

// const quantities = document.querySelectorAll('.quantity');

export { changeQuantity };
