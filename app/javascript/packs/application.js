import 'bootstrap';
import './application.css';
import { toggleIcons } from '../components/bookmarking';
import { toggleDateInputs } from '../components/booking';

const homePage = document.querySelector('.pages.home');
if (homePage) {
  toggleIcons();
}

const devIndexPage = document.querySelector('.developers.index');
if (devIndexPage) {
  toggleIcons();
}

toggleDateInputs();
