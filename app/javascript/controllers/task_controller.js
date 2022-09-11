import { Controller } from "@hotwired/stimulus"
import StimulusReflex from "stimulus_reflex"

export default class extends Controller {
  connect() {
    StimulusReflex.register(this);
  }

  destroy(event) {
    const confirmation = confirm("are you sure")
    if (confirmation) {
      this.stimulate("TaskReflex#destroy", event.currentTarget)
    }
  }
  beforeCreate() {

  }
}
