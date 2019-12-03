import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.select2').select2({
    placeholder: "1@lewagon.com",
    tags: true
  });
};

export { initSelect2 };
