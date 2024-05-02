import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {

  static targets = ["detail", "form", "tabInfo", "tabBooking", "tabMap", "tabMyBooking"]

  fire() {
    this.formTarget.classList.remove("d-none")
    this.detailTarget.classList.add("d-none")
  }
  tab(event) {
    event.preventDefault();
    // console.log(event.currentTarget)
    // console.log(event.currentTarget.parentElement.nextElementSibling)
    // console.log(event.currentTarget.parentElement.previousElementSibling)
    this.tabInfoTarget.classList.toggle("d-none")
    this.tabBookingTarget.classList.toggle("d-none")
    this.tabMapTarget.classList.toggle("d-none")
    this.tabMyBookingTarget.classList.toggle("d-none")

  }
}
