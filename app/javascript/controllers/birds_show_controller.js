import { Controller } from “stimulus”;
export default class extends Controller {
  static targets = [“icon”, “startDate”, “endDate”, “totalPrice”];
  connect() {
    console.log(“Stimulus connected!“);
  }
  toggle() {
    this.iconTarget.classList.toggle(‘empty-heart’);
    this.iconTarget.classList.toggle(‘full-heart’);
  }
  calculateTotal() {
    const startDate = new Date(this.startDateTarget.value);
    const endDate = new Date(this.endDateTarget.value);
    const dayDifference = (endDate - startDate) / (1000 * 3600 * 24) + 1;  // +1 to include both start and end dates
    const pricePerDay = parseFloat(this.data.get(“pricePerDay”)); // Assumes you’ve set a data attribute on the bird-price div
    const total = pricePerDay * dayDifference;
    this.totalPriceTarget.innerText = total;
  }
}
