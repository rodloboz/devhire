import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#js-typed-text', {
    strings: ["skilled", "amazing", "unique"],
    typeSpeed: 70,
    loop: true
  });
}

export { loadDynamicBannerText };
