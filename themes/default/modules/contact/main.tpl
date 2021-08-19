<!-- BEGIN: main -->
<!-- BEGIN: dep -->
<section class="container mt-4">
  <div class="row gy-4">
    <div class="col-md-4">
      <div class="card h-100">
        <div class="card-body text-center"><i class="ci-location h3 mt-2 mb-4 text-primary"></i>
          <h3 class="h6 mb-3">{LANG.address}</h3>
          <!-- BEGIN: address --><div class="fs-sm text-muted"><span>{DEP.address}</span></div><!-- END: address -->
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card h-100">
        <div class="card-body text-center"><i class="ci-phone h3 mt-2 mb-4 text-primary"></i>
          <h3 class="h6 mb-3">{LANG.phone}</h3>
          <!-- BEGIN: phone -->
          <ul class="list-has-last-child list-unstyled fs-sm mb-0">
            <!-- BEGIN: item --><li><!-- BEGIN: href --><a class="nav-link-style" href="tel:{PHONE.href}"><!-- END: href -->{PHONE.number}<!-- BEGIN: href2 --></a><!-- END: href2 --></li><!-- END: item -->
          </ul>
          <!-- END: phone -->
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card h-100">
        <div class="card-body text-center"><i class="ci-mail h3 mt-2 mb-4 text-primary"></i>
          <h3 class="h6 mb-3">{LANG.email}</h3>
          <!-- BEGIN: email -->
          <ul class="list-has-last-child list-unstyled fs-sm mb-0">
            <!-- BEGIN: item --><li><a class="nav-link-style" href="mailto:{EMAIL}">{EMAIL}</a></li><!-- END: item -->
          </ul>
          <!-- END: email -->
        </div>
      </div>
    </div>
  </div>
</section>
<!-- END: dep -->
<div class="container-fluid mt-5 px-0">
  <div class="row g-0">
    <div class="col-lg-6 iframe-full-height-wrap">
      <!-- BEGIN: google_maps --><iframe class="iframe-full-height lazyload" width="600" height="250" data-src="{MAPSLINK}"></iframe><!-- END: google_maps -->
    </div>
    <div class="col-lg-6 px-4 px-xl-5 py-5 border-top">
      <h2 class="h4 mb-4">{GLANG.feedback}</h2>
      {FORM}
    </div>
  </div>
</div>
<!-- END: main -->