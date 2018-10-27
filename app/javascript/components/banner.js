import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#js-typed-text', {
    strings: ["ruby", "react", "elixir", "python", "swift"],
    typeSpeed: 70,
    loop: true
  });
}

export { loadDynamicBannerText };
