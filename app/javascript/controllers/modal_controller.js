import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modal"
export default class extends Controller {
  static targets = ["modal"];

  open() {
    event.preventDefault();
    this.modalTarget.showModal();
    this.modalTarget.addEventListener('click', (e) =>  this.outsideClick(e));
  }

  // close when the <dialog> is clicked
  outsideClick(event) {
    event.target === this.modalTarget && this.close(event)
  }

  close() {
    event.preventDefault();
    this.modalTarget.close();
  }
}
