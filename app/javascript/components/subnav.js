import noUiSlider from 'nouislider/distribute/nouislider';

const animateSubnavInput = function() {
  const searchInput = document.querySelector('.search-input');
  const searchIcon = document.querySelector('.search-icon');
  if (searchInput && searchIcon) {
    searchInput.addEventListener('focus', () => {
      searchIcon.classList.remove('is-visible');
      searchInput.classList.add('is-visible');
    })
     searchInput.addEventListener('focusout', () => {
      searchInput.classList.remove('is-visible');
      searchIcon.classList.add('is-visible');
    })
  }
};

const initRangeSlider = function() {
  const slider = document.getElementById('slider-range');

  if (slider) {
    noUiSlider.create(slider, {
        start: [100, 400],
        connect: true,
        step: 10,
        range: {
            'min': 0,
            'max': 600
        }
    });
  }
};

export { animateSubnavInput, initRangeSlider };
