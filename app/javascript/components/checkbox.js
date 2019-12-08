import { checkboxes, delegates } from '../packs/application';

const toggleCheckedItems = (listItem) => {
  listItem.addEventListener('click', (e) => {
    e.currentTarget.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode.classList.toggle('checked');
  });
};

const checkListItems = () => {
  checkboxes.forEach(toggleCheckedItems);
};

const toggleCheckedDelegates = (delegate) => {
  delegate.addEventListener('click', (e) => {
    e.currentTarget.parentNode.parentNode.parentNode.parentNode.classList.toggle('checked');
  });
};

const checkDelegates = () => {
  delegates.forEach(toggleCheckedDelegates);
};

export { checkListItems, checkDelegates };
