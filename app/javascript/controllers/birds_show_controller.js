import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="birds-show"
export default class extends Controller {
  static targets = ["icon", "startDate", "endDate", "totalPrice", "errorMessage"];

  connect() {
    console.log("Stimulus connected!");
    this.startDateTarget.addEventListener("change", this.calculateTotal.bind(this));
    this.endDateTarget.addEventListener("change", this.calculateTotal.bind(this));
  }

  toggle() {
    this.iconTarget.classList.toggle('empty-heart');
    this.iconTarget.classList.toggle('full-heart');
  }

  calculateTotal() {
    const pricePerDay = parseFloat(this.data.get("pricePerDay"));
    const startDate = new Date(this.startDateTarget.value);
    const endDate = new Date(this.endDateTarget.value);

    if (startDate && endDate && startDate <= endDate) {
      const days = (endDate - startDate) / (1000 * 60 * 60 * 24) + 1;
      const total = pricePerDay * days;
      console.log(total)
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
