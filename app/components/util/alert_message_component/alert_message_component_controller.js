import { Controller } from '@hotwired/stimulus'
import { leave } from 'el-transition'

export default class extends Controller {
  static targets = ['container']

  closeModal () {
    leave(this.containerTarget)
  }
}
