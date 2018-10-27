import 'bootstrap';
import './application.css';
import { toggleIcons } from '../components/bookmarking';
import { toggleDateInputs } from '../components/booking';
import { loadDynamicBannerText } from '../components/banner';
import { initUpdateNavbarOnScroll } from '../components/navbar';

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

toggleDateInputs();
