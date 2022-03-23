import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "savelink" ]

  next() {
    console.log(this.savelinkTarget)
    this.savelinkTarget.click();
  }

}
