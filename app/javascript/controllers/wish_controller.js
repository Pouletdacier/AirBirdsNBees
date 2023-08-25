// import { Controller } from "@hotwired/stimulus"

// export default class extends Controller {
//   static targets = ["icon"]

//   connect() {
//     this.iconTargets.forEach(icon => {
//       icon.addEventListener('click', (event) => this.toggleWish(event));
//     });
//   }

//   toggleWish(event) {
//     event.preventDefault();
//     event.stopPropagation();

//     const icon = event.currentTarget;
//     const birdId = icon.dataset.birdId;

//     if (icon.classList.contains('far')) {
//       icon.classList.remove('far');
//       icon.classList.add('fas');
//       this.fetchAction(birdId, 'POST');
//     } else {
//       icon.classList.remove('fas');
//       icon.classList.add('far');
//       this.fetchAction(birdId, 'DELETE');
//     }
//   }

//   fetchAction(birdId, method) {
//     fetch(`/birds/${birdId}/wishes`, {
//       method: method,
//       headers: {
//         'Accept': 'application/json',
//         'Content-Type': 'application/json',
//         'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').content
//       },
//       body: JSON.stringify({ bird_id: birdId })
//     })
//     .then(response => response.json())
//     .then(data => {
//       if (data.status === 'success') {
//         console.log(data.message);
//       } else {
//         console.error('There was an error:', data.message);
//       }
//     })
//     .catch(error => {
//       console.error('Error fetching:', error.message, 'Full error:', error);
//     });
//   }
// }
