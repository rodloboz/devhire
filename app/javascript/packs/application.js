import 'bootstrap';
import './application.css';
import { toggleIcons } from '../components/bookmarking';
import { toggleDateInputs } from '../components/booking';
import { loadDynamicBannerText } from '../components/banner';

const homePage = document.querySelector('.pages.home');
if (homePage) {
  loadDynamicBannerText();
  toggleIcons();
}

const devIndexPage = document.querySelector('.developers.index');
if (devIndexPage) {
  toggleIcons();
}

toggleDateInputs();
