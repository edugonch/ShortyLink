import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = ['form', 'url']

  connect () {
    const bindedClear = this.clear.bind(this)
    this.formTarget.addEventListener('turbo:submit-end', bindedClear)
  }

  clear () {
    this.formTarget.reset()
    this.urlTarget.focus()
  }
}
