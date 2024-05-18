import { Controller } from "@hotwired/stimulus"
import SlimSelect from 'slim-select'
// import 'slim-select/dist/slimselect.css'

// Connects to data-controller="dog"
export default class extends Controller {

  connect() {
    new SlimSelect({
      select: this.element,
    })
  }
}
