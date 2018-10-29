import 'bootstrap';
import './application.css';
import '../components/select';
import { toggleIcons } from '../components/bookmarking';
import { toggleDateInputs } from '../components/booking';
import { loadDynamicBannerText } from '../components/banner';
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { initHTMLSlider } from '../components/portfolio';
import { autocompleteSearch } from '../components/autocomplete';
import { animateSubnavInput, initRangeSlider } from '../components/subnav';

const homePage = document.querySelector('.pages.home');
if (homePage) {
  loadDynamicBannerText();
  initUpdateNavbarOnScroll();
  toggleIcons();
  autocompleteSearch();
}

const devIndexPage = document.querySelector('.developers.index');
if (devIndexPage) {
  toggleIcons();
  animateSubnavInput();
  autocompleteSearch();
}

initHTMLSlider();
initRangeSlider();
toggleDateInputs();
