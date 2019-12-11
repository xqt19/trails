import places from 'places.js';

const initAutocomplete = () => {
  const locationInput = document.getElementById('locationInput');
  if (locationInput) {
    places({ container: locationInput });
  }
};

export { initAutocomplete };
