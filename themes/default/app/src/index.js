/** Styles */
import './scss/app.scss'

/** JS */
import 'lazysizes'
import 'lazysizes/plugins/bgset/ls.bgset'
import 'lazysizes/plugins/native-loading/ls.native-loading'

import 'bootstrap/js/src/dropdown'
import 'bootstrap/js/src/collapse'
import Toast from 'bootstrap/js/src/toast'
import Tooltip from 'bootstrap/js/src/tooltip'

import { tns } from 'tiny-slider/src/tiny-slider'

function _typeof(obj) {
  '@babel/helpers - typeof'
  if (typeof Symbol === 'function' && typeof Symbol.iterator === 'symbol') {
    _typeof = function _typeof(obj) {
      return typeof obj
    }
  } else {
    _typeof = function _typeof(obj) {
      return obj && typeof Symbol === 'function' && obj.constructor === Symbol && obj !== Symbol.prototype
        ? 'symbol'
        : typeof obj
    }
  }
  return _typeof(obj)
}

const ready = (fn) => {
  if (document.readyState != 'loading') {
    fn()
  } else {
    document.addEventListener('DOMContentLoaded', fn)
  }
}

const tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
tooltipTriggerList.map(function (tooltipTriggerEl) {
  return new Tooltip(tooltipTriggerEl)
})

let carousel = (function () {
  // forEach function
  let forEach = function forEach(array, callback, scope) {
    for (let i = 0; i < array.length; i++) {
      callback.call(scope, i, array[i]) // passes back stuff we need
    }
  } // Carousel initialisation

  let carousels = document.querySelectorAll('.tns-carousel .tns-carousel-inner')
  forEach(carousels, function (index, value) {
    let defaults = {
      container: value,
      controlsText: ['<i class="ci-arrow-left"></i>', '<i class="ci-arrow-right"></i>'],
      lazyload: true,
      navPosition: 'bottom',
      mouseDrag: true,
      speed: 500,
      autoplayHoverPause: true,
      autoplayButtonOutput: false,
    }
    let userOptions
    if (value.dataset.carouselOptions != undefined) userOptions = JSON.parse(value.dataset.carouselOptions)
    let options = Object.assign({}, defaults, userOptions)
    let carousel = tns(options)
  })
})()

const toasting = (title, content, type = 'success') => {
  const getWrapper = document.querySelector('.toast-wrapper')
  const toastElement = new DOMParser().parseFromString(
    `<div class="toast" role="status" aria-live="polite" data-bs-autohide="true">
      <div class="toast-header bg-${type} text-white">
        ${
          type == 'success'
            ? '<i class="ci-check-circle me-2"></i>'
            : type == 'danger'
            ? '<i class="ci-close-circle me-2"></i>'
            : '<i class="ci-announcement me-2"></i>'
        }
        <span class="fw-medium me-auto">${title}</span>
        <button type="button" class="btn-close btn-close-white ms-2" data-bs-dismiss="toast" aria-label="Close"></button>
      </div>
      <div class="toast-body"><span>${content}</span></div>
    </div>`,
    'text/html'
  ).body.firstChild
  getWrapper.appendChild(toastElement)
  const initToast = new Toast(toastElement)
  initToast.show()
}

window._typeof = _typeof
window.ready = ready
window.toasting = toasting
