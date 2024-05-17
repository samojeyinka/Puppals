import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dog"
export default class extends Controller {
  static targets = ["selectGender", "gender", "size", "selectSize", "age", "selectAge"]

  selectGender() {
    const selectedGender = this.selectGenderTarget.value
    this.genderTarget.value = selectedGender
    this.selectGenderTarget.value = ""
  }

  selectSize() {
    const selectedSize = this.selectSizeTarget.value
    this.sizeTarget.value = selectedSize
    this.selectSizeTarget.value = ""
  }

  selectAge() {
    const selectedAge = this.selectAgeTarget.value
    this.ageTarget.value = selectedAge
    this.selectAgeTarget.value = ""
  }
}
