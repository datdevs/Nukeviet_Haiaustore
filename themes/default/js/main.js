/**
 * NukeViet Content Management System
 * @version 4.x
 * @author VINADES.,JSC <contact@vinades.vn>
 * @copyright (C) 2009-2021 VINADES.,JSC. All rights reserved
 * @license GNU/GPL version 2 or any later version
 * @see https://github.com/nukeviet The NukeViet CMS GitHub project
 */

var myTimerPage = '',
  myTimersecField = '',
  gEInterval,
  tip_active = !1,
  ftip_active = !1,
  tip_autoclose = !0,
  ftip_autoclose = !0,
  winX = 0,
  winY = 0,
  oldWinX = 0,
  oldWinY = 0,
  cRangeX = 0,
  cRangeY = 0,
  docX = 0,
  docY = 0,
  NVIsMobileMenu = false,
  reCapIDs = []

function timeoutsessrun() {
  clearInterval(myTimerPage)
  $('#secField').text('60')
  $('#timeoutsess').show()
  var b = new Date().getTime()
  myTimersecField = setInterval(function () {
    var a = new Date().getTime()
    a = 60 - Math.round((a - b) / 1e3)
    0 <= a
      ? $('#secField').text(a)
      : -3 > a &&
        (clearInterval(myTimersecField),
        $(window).unbind(),
        $.ajax({
          type: 'POST',
          cache: !1,
          url: nv_base_siteurl + 'index.php?' + nv_lang_variable + '=' + nv_lang_data + '&' + nv_name_variable + '=users&' + nv_fc_variable + '=logout',
          data: 'nv_ajax_login=1&system=1',
        }).done(function () {
          location.reload()
        }))
  }, 1e3)
}

function locationReplace(url) {
  if (history.pushState) {
    history.pushState(null, null, url)
  }
}

function openID_load(a) {
  tip_active && tipHide()
  ftip_active && ftipHide()
  nv_open_browse($(a).attr('href'), 'NVOPID', 550, 500, 'resizable=no,scrollbars=1,toolbar=no,location=no,titlebar=no,menubar=0,location=no,status=no')
  return !1
}

function openID_result() {
  var resElement = $('#openidResult')
  resElement.fadeIn()
  setTimeout(function () {
    if (resElement.data('redirect') != '') {
      window.location.href = resElement.data('redirect')
    } else if (resElement.data('result') == 'success') {
      location.reload()
    } else {
      resElement.hide(0).html('').data('result', '').data('redirect', '')
    }
  }, 5000)
}

//Form Ajax-login
function loginForm(redirect) {
  if (nv_is_user == 1) {
    return !1
  }
  if (redirect != '') {
    redirect = '&nv_redirect=' + redirect
  }
  $.ajax({
    type: 'POST',
    url: nv_base_siteurl + 'index.php?' + nv_lang_variable + '=' + nv_lang_data + '&' + nv_name_variable + '=users&' + nv_fc_variable + '=login' + redirect,
    cache: !1,
    data: '&nv_ajax=1',
    dataType: 'html',
  }).done(function (a) {
    modalShow('', a, 'recaptchareset')
  })
  return !1
}

// Hide Cookie Notice Popup
function cookie_notice_hide() {
  nv_setCookie(nv_cookie_prefix + '_cn', '1', 365)
  $('.cookie-notice').hide()
}

// Change Captcha
function change_captcha(a) {
  if ($('[data-toggle=recaptcha]').length) {
    'undefined' != typeof grecaptcha ? reCaptcha2OnLoad() : reCaptcha2ApiLoad()
  } else if ($('[data-recaptcha3]').length) {
    'undefined' != typeof grecaptcha ? reCaptcha3OnLoad() : reCaptcha3ApiLoad()
  }

  if ($('img.captchaImg').length) {
    $('img.captchaImg').attr('src', nv_base_siteurl + 'index.php?scaptcha=captcha&nocache=' + nv_randomPassword(10))
    'undefined' != typeof a && '' != a && $(a).val('')
  }
  return !1
}

function isRecaptchaCheck() {
  if (nv_recaptcha_sitekey == '') return 0
  return nv_recaptcha_ver == 2 || nv_recaptcha_ver == 3 ? nv_recaptcha_ver : 0
}

function reCaptcha2Recreate(obj) {
  $('[data-toggle=recaptcha]', $(obj)).each(function () {
    var callFunc = $(this).data('callback'),
      pnum = $(this).data('pnum'),
      btnselector = $(this).data('btnselector'),
      size = $(this).data('size') && $(this).data('size') == 'compact' ? 'compact' : ''
    var id = 'recaptcha' + new Date().getTime() + nv_randomPassword(8)
    if (callFunc) {
      $(this).replaceWith('<div id="' + id + '" data-toggle="recaptcha" data-callback="' + callFunc + '" data-size="' + size + '"></div>')
    } else {
      $(this).replaceWith('<div id="' + id + '" data-toggle="recaptcha" data-pnum="' + pnum + '" data-btnselector="' + btnselector + '" data-size="' + size + '"></div>')
    }
  })
}

var reCaptcha2OnLoad = function () {
  $('[data-toggle=recaptcha]').each(function () {
    var id = $(this).attr('id'),
      callFunc = $(this).data('callback'),
      size = $(this).data('size') && $(this).data('size') == 'compact' ? 'compact' : ''

    if (typeof window[callFunc] === 'function') {
      if (typeof reCapIDs[id] === 'undefined') {
        reCapIDs[id] = grecaptcha.render(id, {
          sitekey: nv_recaptcha_sitekey,
          type: nv_recaptcha_type,
          size: size,
          callback: callFunc,
        })
      } else {
        grecaptcha.reset(reCapIDs[id])
      }
    } else {
      var pnum = parseInt($(this).data('pnum')),
        btnselector = $(this).data('btnselector'),
        btn = $('#' + id),
        k = 1

      for (k; k <= pnum; k++) {
        btn = btn.parent()
      }
      btn = $(btnselector, btn)
      if (btn.length) {
        btn.prop('disabled', true)
      }

      if (typeof reCapIDs[id] === 'undefined') {
        reCapIDs[id] = grecaptcha.render(id, {
          sitekey: nv_recaptcha_sitekey,
          type: nv_recaptcha_type,
          size: size,
          callback: function () {
            reCaptcha2Callback(id, false)
          },
          'expired-callback': function () {
            reCaptcha2Callback(id, true)
          },
          'error-callback': function () {
            reCaptcha2Callback(id, true)
          },
        })
      } else {
        grecaptcha.reset(reCapIDs[id])
      }
    }
  })
}

var reCaptcha2Callback = function (id, val) {
  var btn = $('#' + id),
    pnum = parseInt(btn.data('pnum')),
    btnselector = btn.data('btnselector'),
    k = 1
  for (k; k <= pnum; k++) {
    btn = btn.parent()
  }
  btn = $(btnselector, btn)
  if (btn.length) {
    btn.prop('disabled', val)
  }
}

// reCaptcha v2 load
var reCaptcha2ApiLoad = function () {
  if (isRecaptchaCheck() == 2) {
    var a = document.createElement('script')
    a.type = 'text/javascript'
    a.src = '//www.google.com/recaptcha/api.js?hl=' + nv_lang_interface + '&onload=reCaptcha2OnLoad&render=explicit'
    document.getElementsByTagName('head')[0].appendChild(a)
  }
}

// reCaptcha v3: reCaptcha3OnLoad
var reCaptcha3OnLoad = function () {
  grecaptcha.ready(function () {
    $('[data-recaptcha3]').length &&
      (clearInterval(gEInterval),
      grecaptcha
        .execute(nv_recaptcha_sitekey, {
          action: 'formSubmit',
        })
        .then(function (a) {
          $('[data-recaptcha3]').each(function () {
            if ($('[name=g-recaptcha-response]', this).length) $('[name=g-recaptcha-response]', this).val(a)
            else {
              var b = $('<input type="hidden" name="g-recaptcha-response" value="' + a + '"/>')
              $(this).append(b)
            }
          })
        }),
      (gEInterval = setTimeout(function () {
        reCaptcha3OnLoad()
      }, 12e4)))
  })
}

// reCaptcha v3 API load
var reCaptcha3ApiLoad = function () {
  if (isRecaptchaCheck() == 3) {
    var a = document.createElement('script')
    a.type = 'text/javascript'
    a.src = '//www.google.com/recaptcha/api.js?render=' + nv_recaptcha_sitekey + '&onload=reCaptcha3OnLoad'
    document.getElementsByTagName('head')[0].appendChild(a)
  }
}

$(function () {
  // Modify all empty link
  $('a[href="#"], a[href=""]').on('click', function (e) {
    e.preventDefault()
  })

  // Add rel="noopener noreferrer nofollow" to all external links
  $('a[href^="http"]')
    .not('a[href*="' + location.hostname + '"]')
    .not('[rel*=dofollow]')
    .attr({
      target: '_blank',
      rel: 'noopener noreferrer nofollow',
    })

  //Search form
  $('.header-search button').on('click', function () {
    if ('n' == $(this).attr('data-click')) {
      return !1
    }
    $(this).attr('data-click', 'n')
    var a = $(this).prev(),
      c = a.attr('maxlength'),
      b = strip_tags(a.val()),
      d = $(this).attr('data-minlength')
    a.parent().removeClass('has-error')
    '' == b || b.length < d || b.length > c ? (a.parent().addClass('has-error'), a.val(b).focus(), $(this).attr('data-click', 'y')) : (window.location.href = $(this).attr('data-url') + rawurlencode(b))
    return !1
  })
  $('.header-search input').on('keypress', function (a) {
    13 != a.which || a.shiftKey || (a.preventDefault(), $(this).next().trigger('click'))
  })

  // Show messger timeout login users
  nv_is_user &&
    (myTimerPage = setTimeout(function () {
      timeoutsessrun()
    }, nv_check_pass_mstime))

  // Show confirm message on leave, reload page
  $('form.confirm-reload').change(function () {
    $(window).bind('beforeunload', function () {
      return nv_msgbeforeunload
    })
  })

  // Change site lang
  $('.nv_change_site_lang').change(function () {
    document.location = $(this).val()
  })

  // maxLength for textarea
  $('textarea').on('input propertychange', function () {
    var a = $(this).prop('maxLength')
    if (!a || 'number' != typeof a) {
      var a = $(this).attr('maxlength'),
        b = $(this).val()
      b.length > a && $(this).val(b.substr(0, a))
    }
  })

  //OpenID
  $('#openidBt').on('click', function () {
    openID_result()
    return !1
  })
})

// Load Social script - lasest
$(window).on('load', function () {
  0 < $('.fb-like').length &&
    (1 > $('#fb-root').length && $('body').append('<div id="fb-root"></div>'),
    (function (a, b, c) {
      var d = a.getElementsByTagName(b)[0]
      var fb_app_id = $('[property="fb:app_id"]').length > 0 ? '&appId=' + $('[property="fb:app_id"]').attr('content') : ''
      var fb_locale = $('[property="og:locale"]').length > 0 ? $('[property="og:locale"]').attr('content') : nv_lang_data == 'vi' ? 'vi_VN' : 'en_US'
      a.getElementById(c) || ((a = a.createElement(b)), (a.id = c), (a.src = '//connect.facebook.net/' + fb_locale + '/all.js#xfbml=1' + fb_app_id), d.parentNode.insertBefore(a, d))
    })(document, 'script', 'facebook-jssdk'))
  0 < $('.twitter-share-button').length &&
    (function () {
      var a = document.createElement('script')
      a.type = 'text/javascript'
      a.src = '//platform.twitter.com/widgets.js'
      var b = document.getElementsByTagName('script')[0]
      b.parentNode.insertBefore(a, b)
    })()
  0 < $('.zalo-share-button, .zalo-follow-only-button, .zalo-follow-button, .zalo-chat-widget').length &&
    (function () {
      var a = document.createElement('script')
      a.type = 'text/javascript'
      a.src = '//sp.zalo.me/plugins/sdk.js'
      var b = document.getElementsByTagName('script')[0]
      b.parentNode.insertBefore(a, b)
    })()
  if ($('[data-toggle=recaptcha]').length) {
    reCaptcha2ApiLoad()
  } else if ($('[data-recaptcha3]').length) {
    reCaptcha3ApiLoad()
  }
})
