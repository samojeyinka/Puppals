import { Controller } from "@hotwired/stimulus"
import SlimSelect from 'slim-select'
import 'slim-select/dist/slimselect.css'

// Connects to data-controller="dog"
export default class extends Controller {
  static targets = ["selectGender", "gender", "size", "selectSize", "age", "selectAge", "hobby", "selectHobby"]

  connect() {
    new SlimSelect({
      select: this.element
    })
  }

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

  // selectHobby() {
  //   const selectedHobby = this.selectHobbyTarget.value
  //   this.hobbyTarget.value = selectedHobby
  //   this.selectHobbyTarget.value = ""

  //   // const selectedHobbies = Array.from(this.selectHobbyTarget.selectedOptions).map(option => option.value);

  //   // console.log(selectedHobbies)
  // }

}
