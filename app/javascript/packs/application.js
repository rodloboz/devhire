import 'bootstrap';
import { toggleIcons } from '../components/bookmarking';

const homePage = document.querySelector('.pages.home');
if (homePage) {
  toggleIcons();
}

const devIndex = document.querySelector('.developers.index');
if (devIndex) {
  toggleIcons();
}
