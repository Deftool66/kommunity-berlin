import { Controller } from "@hotwired/stimulus";

export default class extends Controller {

  static targets = ["bookmark"]

  connect() {
    console.log(this.contentTarget);
  }

  changeColor() {
    this.bookmarkTarget.classList.toggle("bookmark-icon-click")
  }
}
