import { Controller } from '@hotwired/stimulus'
import { enter, leave } from 'el-transition'

export default class extends Controller {
  static targets = ['openMenu', 'closeMenu', 'menuContainer']

  connect () {
    this.showMenu = this.showMenu.bind(this)
    this.closeMenu = this.closeMenu.bind(this)
    this.openMenuTarget.addEventListener('click', this.showMenu)
    this.closeMenuTarget.addEventListener('click', this.closeMenu)
  }

  showMenu () {
    enter(this.menuContainerTarget)
  }

  closeMenu () {
    leave(this.menuContainerTarget)
  }
}
