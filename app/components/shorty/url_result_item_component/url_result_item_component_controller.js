import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = ['shorturl']

  connect () {
    this.copyToClipBoard = this.copyToClipBoard.bind(this)
    this.shorturlTarget.addEventListener('click', this.copyToClipBoard)
  }

  copyToClipBoard (event) {
    event.preventDefault()
    navigator.clipboard.writeText(this.shorturlTarget.innerText)
    return false
  }
}
