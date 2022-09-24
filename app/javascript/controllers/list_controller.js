import { Controller } from "@hotwired/stimulus"
import StimulusReflex from "stimulus_reflex"
import Sortable from "sortablejs"

export default class extends Controller {
  static targets = ["form", "tasks"];
  connect() {
    StimulusReflex.register(this);
    Sortable.create(this.tasksTarget, {
      handle: ".incomplete",
      onEnd: (event) => this.reorder(event)
    });
  }

  reorder(event) {
    this.stimulate("TaskReflex#reorder", event.item, event.newIndex)
  }

  createTaskSuccess() {
    this.formTarget.reset()
  }

  createTaskError() {
    alert("error to save task")
  }
}
