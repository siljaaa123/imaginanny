import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["detail", "form", "tabInfo", "tabBooking"]

  fire() {
    this.formTarget.classList.remove("d-none")
    this.detailTarget.classList.add("d-none")
  }
  tab(event) {
    event.preventDefault();
    this.tabInfoTarget.classList.toggle("d-none")
    this.tabBookingTarget.classList.toggle("d-none")

  }
}
