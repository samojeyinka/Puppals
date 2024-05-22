import { Controller } from "@hotwired/stimulus"
import SlimSelect from 'slim-select'

export default class extends Controller {
  static targets = ["photoIcon", "photoInput"]

  connect() {
    new SlimSelect({
      select: this.element,
    })
  }

  triggerPhotoUpload() {
    this.photoInputTarget.click();
  }


  previewPhoto(event) {
   const files = event.target.files;

    if (files && files[0]) {
      console.log(files)
      const reader = new FileReader();
      reader.onload = (e) => {
        // Hide the FontAwesome icon
        this.photoIconTarget.style.display = 'none';

        // Create an img element to show the preview
        const img = document.createElement('img');
        img.src = e.target.result;
        img.className = ' absolute inset-0 w-full h-full object-cover rounded-md';

        // Append the img element to the parent container
        this.photoIconTarget.parentElement.appendChild(img);
      };
      reader.readAsDataURL(files[0]);
    }
  }

 
}
