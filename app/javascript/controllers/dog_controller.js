import { Controller } from "@hotwired/stimulus"
import SlimSelect from 'slim-select'

export default class extends Controller {
  static targets = ["firstIcon", "secondIcon", "thirdIcon", "firstInput", "secondInput", "thirdInput"]

  connect() {
    new SlimSelect({
      select: this.element,
    })
  }

  triggerFirstUpload() {
    this.firstInputTarget.click();
  }

  triggerSecondUpload() {
    this.secondInputTarget.click();
  }

  triggerThirdUpload() {
    this.thirdInputTarget.click();
  }

  previewFirstImage(event) {
   const files = event.target.files;

    if (files && files[0]) {
      console.log(files)
      const reader = new FileReader();
      reader.onload = (e) => {
        // Hide the FontAwesome icon
        this.firstIconTarget.style.display = 'none';

        // Create an img element to show the preview
        const img = document.createElement('img');
        img.src = e.target.result;
        img.className = ' absolute inset-0 w-full h-full object-cover rounded-md';

        // Append the img element to the parent container
        this.firstIconTarget.parentElement.appendChild(img);
      };
      reader.readAsDataURL(files[0]);
    }
  }

  previewSecondImage(event) {
    const files = event.target.files;

     if (files && files[0]) {
       console.log(files)
       const reader = new FileReader();
       reader.onload = (e) => {
        this.secondIconTarget.style.display = 'none';

        const img = document.createElement('img');
        img.src = e.target.result;
        img.className = ' absolute inset-0 w-full h-full object-cover rounded-md';

        this.secondIconTarget.parentElement.appendChild(img);
       };
       reader.readAsDataURL(files[0]);
     }
   }

   previewThirdImage(event) {
    const files = event.target.files;

     if (files && files[0]) {
       console.log(files)
       const reader = new FileReader();
       reader.onload = (e) => {
        this.thirdIconTarget.style.display = 'none';

        const img = document.createElement('img');
        img.src = e.target.result;
        img.className = ' absolute inset-0 w-full h-full object-cover rounded-md';

        this.thirdIconTarget.parentElement.appendChild(img);
       };
       reader.readAsDataURL(files[0]);
     }
   }
}
