import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {

  static targets = ["detail", "form", "btnReview", "formReview"]

  fire() {
    this.formTarget.classList.remove("d-none")
    this.detailTarget.classList.add("d-none")
  }

  review(event) {
    event.preventDefault();
    this.btnReviewTarget.classList.toggle("d-none");
    this.formReviewTarget.classList.toggle("d-none")
  }
}
