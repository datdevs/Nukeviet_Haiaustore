<!-- BEGIN: main  -->
<!-- BEGIN: loop -->
<div class="bg-faded-info rounded-3 py-4 has-banner">
  <div class="row align-items-center">
    <div class="col-md-5">
      <div class="px-4 pe-sm-0 ps-sm-5">
        <span class="badge bg-danger text-uppercase">{DATA.title}</span>
        <!-- BEGIN: bannerhtml -->
        <div class="my-4">{DATA.bannerhtml}</div>
        <!-- END: bannerhtml -->
        <div class="countdown my-4 h4" data-countdown="12/01/2021 07:00:00 PM">
          <div class="countdown-days"><span class="countdown-value"></span><span class="countdown-label text-muted">ngày</span></div>
          <div class="countdown-hours"><span class="countdown-value"></span><span class="countdown-label text-muted">giờ</span></div>
          <div class="countdown-minutes"><span class="countdown-value"></span><span class="countdown-label text-muted">phút</span></div>
          <div class="countdown-seconds"><span class="countdown-value"></span><span class="countdown-label text-muted">giây</span></div>
        </div>
        <!-- BEGIN: type_image_link -->
        <a class="btn btn-accent" rel="nofollow" href="{DATA.link}" onclick="this.target='{DATA.target}'">Chi tiết<i class="ci-arrow-right fs-ms ms-1"></i></a>
        <!-- END: type_image_link -->
      </div>
    </div>
    <!-- BEGIN: image -->
    <div class="col-md-7"><img src="{DATA.file_image}" alt="{DATA.file_alt}" width="{DATA.file_width}" height="{DATA.file_height}" /></div>
    <!-- END: image -->
  </div>
</div>
<!-- END: loop -->
<script async defer>
  ready(() => {
    var countdown = (function () {
      var coundown = document.querySelectorAll('.countdown')
      if (coundown == null) return

      var _loop4 = function _loop4(i) {
        var endDate = coundown[i].dataset.countdown,
          daysVal = coundown[i].querySelector('.countdown-days .countdown-value'),
          hoursVal = coundown[i].querySelector('.countdown-hours .countdown-value'),
          minutesVal = coundown[i].querySelector('.countdown-minutes .countdown-value'),
          secondsVal = coundown[i].querySelector('.countdown-seconds .countdown-value'),
          days = void 0,
          hours = void 0,
          minutes = void 0,
          seconds = void 0
        endDate = new Date(endDate).getTime()
        if (isNaN(endDate))
          return {
            v: void 0,
          }
        setInterval(calculate, 1000)

        function calculate() {
          var startDate = new Date().getTime()
          var timeRemaining = parseInt((endDate - startDate) / 1000)

          if (timeRemaining >= 0) {
            days = parseInt(timeRemaining / 86400)
            timeRemaining = timeRemaining % 86400
            hours = parseInt(timeRemaining / 3600)
            timeRemaining = timeRemaining % 3600
            minutes = parseInt(timeRemaining / 60)
            timeRemaining = timeRemaining % 60
            seconds = parseInt(timeRemaining)

            if (daysVal != null) {
              daysVal.innerHTML = parseInt(days, 10)
            }

            if (hoursVal != null) {
              hoursVal.innerHTML = hours < 10 ? '0' + hours : hours
            }

            if (minutesVal != null) {
              minutesVal.innerHTML = minutes < 10 ? '0' + minutes : minutes
            }

            if (secondsVal != null) {
              secondsVal.innerHTML = seconds < 10 ? '0' + seconds : seconds
            }
          } else {
            return
          }
        }
      }

      coundown.forEach((c, i) => {
        var _ret = _loop4(i)
        if (_typeof(_ret) === 'object') return _ret.v
      })
    })()
  })
</script>
<!-- END: main -->
