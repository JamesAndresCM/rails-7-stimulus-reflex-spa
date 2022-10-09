import { Controller } from "@hotwired/stimulus"
import StimulusReflex from "stimulus_reflex"

export default class extends Controller {
  static targets = ["collapse"]
  connect() {
    StimulusReflex.register(this);

    document.querySelector(`#btn-${this.collapseTarget.id}`).addEventListener('click', (e) => {
      let getId = e.currentTarget.id.replace("btn-collapse-", "")
      let hiddenText = document.querySelector(`#data-collapse-${getId}`)
      let completeClassSelector = document.querySelector(`#task_${getId}`)

      if (hiddenText.getAttribute("style") === null) {
         hiddenText.setAttribute("style", "display: none");
        completeClassSelector.classList.remove("incomplete");
      } else {
        hiddenText.removeAttribute("style");
        completeClassSelector.classList.add("incomplete");
      }
    })
  }

  destroy(event) {
    event.preventDefault();
    const confirmation = confirm("are you sure")
    if (confirmation) {
      this.stimulate("TaskReflex#destroy", event.currentTarget)
    }
  }
  beforeCreate() {

  }
}
