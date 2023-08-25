// Import and register all your controllers from the importmap under controllers/*

import { application } from "controllers/application"

// Eager load all controllers defined in the import map under controllers/**/*_controller
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)

// Lazy load controllers as they appear in the DOM (remember not to preload controllers in import map!)
// import { lazyLoadControllersFrom } from "@hotwired/stimulus-loading"
// lazyLoadControllersFrom("controllers", application)


// COEUR DE LA WISHLIST
document.addEventListener('DOMContentLoaded', function() {
  const likeIcons = document.querySelectorAll('.like-icon');

  likeIcons.forEach(function(icon) {
    icon.addEventListener('click', function(event) {
      event.stopPropagation(); // Empêcher le clic de propager
      const birdId = event.currentTarget.dataset.birdId;

      if (icon.classList.contains('far')) {
        icon.classList.remove('far');
        icon.classList.add('fas');
        // Create a new wish (Add to wishlist)
        fetchAction(birdId, 'POST');

      } else {
        icon.classList.remove('fas');
        icon.classList.add('far');
        // Remove the bird from the wishlist
        fetchAction(birdId, 'DELETE');
      }
    });
  });
});

function fetchAction(birdId, method) {
  fetch(`/birds/${birdId}/wishes`, {
    method: method,
    headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').content
    },
    body: JSON.stringify({ bird_id: birdId })
  })
  .then(response => response.json())
  .then(data => {
    if (data.status === 'success') {
      console.log(data.message);
    } else {
      console.error('There was an error:', data.message);
    }
  })
  .catch(error => {
    console.error('Error fetching:', error.message, 'Full error:', error);
  });
}
