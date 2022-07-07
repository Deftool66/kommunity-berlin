import { Controller } from '@hotwired/stimulus'
import { map } from 'jquery'
export default class extends Controller {

  static targets = ['form', 'button']

  toggleForms(){
    this.formTargets.forEach((form)=> {
      form.classList.toggle('d-none')
    })
  }

  submit(){
    this.buttonTarget.click()
  }
}

//   checkForm() {
//     this.formTargets.forEach((form)=> {
//       if(!this.form.checkbox.checked){alert('You must agree to the terms first.');return false}
//     })
//   }
// }
