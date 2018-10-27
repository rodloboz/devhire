import 'bootstrap';
import './application.css';
import '../components/select';
import { toggleIcons } from '../components/bookmarking';
import { toggleDateInputs } from '../components/booking';
import { loadDynamicBannerText } from '../components/banner';
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { initSlider } from '../components/portfolio';
import { autocompleteSearch } from '../components/autocomplete';

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
}

const devShowPage = document.querySelector('.developers.show');
if (devShowPage) {
  initSlider();
}

toggleDateInputs();
