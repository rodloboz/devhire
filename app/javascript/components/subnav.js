const animateSubnavInput = function() {
  const searchInput = document.querySelector('.search-input');
  const searchIcon = document.querySelector('.search-icon');
  if (searchInput && searchIcon) {
    searchInput.addEventListener('focus', () => {
      console.log('xupa')
      searchIcon.classList.remove('is-visible');
    })
     searchInput.addEventListener('focusout', () => {
      console.log('xupa')
      searchIcon.classList.add('is-visible');
    })
  }
}

export { animateSubnavInput };
