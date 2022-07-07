import { Controller } from '@hotwired/stimulus'
export default class extends Controller {

  static targets = ['map']

  connect() {
    console.log(this.mapTarget)
    console.log('hello')
  }

  toggleMap() {
    // this.mapTargets.forEach((map) => {
    //   map.classList.toggle('d-none')
    // })
    console.log(mapTarget)
  }
}
