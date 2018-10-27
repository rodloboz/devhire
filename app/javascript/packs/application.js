import 'bootstrap';
import './application.css';
import { toggleIcons } from '../components/bookmarking';
import { toggleDateInputs } from '../components/booking';
import { loadDynamicBannerText } from '../components/banner';
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { initSlider } from '../components/portfolio';

const homePage = document.querySelector('.pages.home');
if (homePage) {
  loadDynamicBannerText();
  initUpdateNavbarOnScroll();
  toggleIcons();
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
