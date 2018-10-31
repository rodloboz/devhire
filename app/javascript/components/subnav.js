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
  const sliderContainer = document.getElementById('slider-container');
  const slider = document.getElementById('slider-range');
  const minInput = document.querySelector('#min-price input');
  const maxInput = document.querySelector('#max-price input');

  if (sliderContainer && slider) {
    sliderContainer.addEventListener('click', e => e.stopPropagation());

    const max = JSON.parse(slider.dataset.max);
    const min = JSON.parse(slider.dataset.min);
console.log(min, max)
    noUiSlider.create(slider, {
        start: [min, max],
        connect: true,
        step: 10,
        range: {
            'min': 0,
            'max': 600
        }
    });

    slider.noUiSlider.on('update', (values, handle) => {
      let value = values[handle];
      if (handle) {
          maxInput.value = '€' + value;
      } else {
          minInput.value = '€' + value;
      }
    });

    const submitBtn = document.getElementById('subnav-form__submit');
    const apply = document.querySelector('.submit_link');
    apply.addEventListener('click', () => submitBtn.click());
  }
};

export {
  animateSubnavInput,
  initRangeSlider,
};
