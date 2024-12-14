import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["message, attr"];

  connect() {
    console.log("Hello Controller connected!");
  }

  hide(event){
    event.preventDefault()
    const currentVisibility = this.messageTarget.style.visibility;
    this.messageTarget.style.visibility = currentVisibility === "hidden" ? "visible" : "hidden"; 
  }

  toggleComplete() {
    
  }

}