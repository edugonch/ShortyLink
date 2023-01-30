// Import and register all your controllers from the importmap under controllers/*

import { application } from 'controllers/application'

// Eager load all controllers defined in the import map under controllers/**/*_controller
import { eagerLoadControllersFrom } from '@hotwired/stimulus-loading'
eagerLoadControllersFrom('controllers', application)

const CONTROLLERS = [
  'util--alert-message-component--alert-message-component',
  'shorty--url-box-component--url-box-component',
  'shorty--url-button-component--url-button-component',
  'shorty--url-input-component--url-input-component',
  'shorty--url-result-box-component--url-result-box-component',
  'shorty--url-result-item-component--url-result-item-component'

]

for (const controller of CONTROLLERS) {
  const controllerPath = controller
    .replaceAll('--', '/')
    .replaceAll('-', '_')
  import(controllerPath + '_controller')
    .then(module => {
      application.register(controller, module.default)
    })
}
