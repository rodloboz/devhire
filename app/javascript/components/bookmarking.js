import Rails from 'rails-ujs';

const toggleIcons = function() {
  const icons = document.querySelectorAll('.dev-bookmark i')

  const toggleIcon = function(icon) {
    icon.classList.toggle('far');
    icon.classList.toggle('fas');
  }

  icons.forEach((icon) => {
    const dev = icon.closest('.dev')
    const devId = dev.id.split('-')[1]
    icon.addEventListener('click', () => {
      if (icon.classList.contains('far')) {
        fetch('/bookmarked_developers', {
          method: 'post',
          body: JSON.stringify({developer_id: devId}),
          headers: {
            'Content-Type': 'application/json',
            'X-CSRF-Token': Rails.csrfToken()
          },
          credentials: 'same-origin'
        }).then(() => toggleIcon(icon))

      } else if (icon.classList.contains('fas')) {
        fetch(`/bookmarked_developers/${devId}`, {
          method: 'delete',
          body: JSON.stringify({developer_id: devId}),
          headers: {
            'Content-Type': 'application/json',
            'X-CSRF-Token': Rails.csrfToken()
          },
          credentials: 'same-origin'
        }).then(() => toggleIcon(icon))
      }
    })
  })
};

export { toggleIcons };
