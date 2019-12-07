import { delegates } from '../packs/application';

const showCollab = (delegate) => {
  delegate.addEventListener('click', (e) => {
    console.log(e.currentTarget);
  });
};

const addDelegate = () => {
  delegates.forEach(showCollab);
};

const insertCollab = document.querySelectorAll('.collab');

export { addDelegate };
