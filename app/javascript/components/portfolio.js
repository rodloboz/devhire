import { tns } from 'tiny-slider/src/tiny-slider';

const initHTMLSlider = function() {
  const projects = document.getElementById('js-projects');
  const prevBtn = document.querySelector('.chevron-left');
  const nextBtn = document.querySelector('.chevron-right');

  if (projects) {
   const slider = tns({
      container: projects,
      items: 2.1,
      slideBy: 'page',
      fixedWidth: 500,
      gutter: 20,
      mouseDrag: true,
      arrowKeys: true,
      controls: false,
      nav: false,
    });

   nextBtn.onclick = function () { slider.goTo('next'); };
   prevBtn.onclick = function () { slider.goTo('prev'); };
  }
};

export { initHTMLSlider };
