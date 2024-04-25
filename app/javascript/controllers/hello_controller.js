import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {clicks:{type: Number, default: 0}}
  static targets = ["bruh"]

  connect() {
    this.bruhTarget.innerHTML = this.clicksValue
  }

  add() {
    this.clicksValue++;
  }

  clicksValueChanged() {
    console.log("A button has been clicked");
    this.bruhTarget.innerHTML = this.clicksValue;
  }
}
