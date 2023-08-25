// import { Controller } from "@hotwired/stimulus"
// import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()

// export default class extends Controller {
//   connect() {
//     flatpickr(this.element)
//   }
// }

import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

export default class extends Controller {
  static targets = ["startDate", "endDate", "totalPrice", "errorMessage"];

  connect() {
    flatpickr(this.startDateTarget);
    flatpickr(this.endDateTarget);

    this.startDateTarget.addEventListener("change", this.calculateTotal.bind(this));
    this.endDateTarget.addEventListener("change", this.calculateTotal.bind(this));
  }

  calculateTotal() {
    const pricePerDay = parseFloat(this.data.get("pricePerDay"));
    const startDate = new Date(this.startDateTarget.value);
    const endDate = new Date(this.endDateTarget.value);

    if (startDate && endDate && startDate <= endDate) {
      const days = (endDate - startDate) / (1000 * 60 * 60 * 24) + 1;
      const total = pricePerDay * days;
      this.totalPriceTarget.textContent = total.toFixed(2);
      if (this.hasErrorMessageTarget) {
        this.errorMessageTarget.style.display = "none";
      }
    } else {
      this.totalPriceTarget.textContent = "0.00";
      if (this.hasErrorMessageTarget) {
        this.errorMessageTarget.style.display = "block";
      }
    }
  }
}
