<!-- BEGIN: main -->
<div class="row justify-content-center pt-5 mt-md-2">
  <div class="col-lg-9">
    <!-- BEGIN: no_public -->
    <div class="alert alert-warning">{LANG.no_public}</div>
    <!-- END: no_public -->
    <div class="d-flex flex-wrap justify-content-between align-items-center pb-4 mt-n1">
      <div class="d-flex align-items-center fs-sm mb-2">
        <!-- BEGIN: author -->
        <!-- BEGIN: name -->
        {DETAIL.author}
        <!-- END: name -->
        <!-- BEGIN: source -->
        {DETAIL.source}
        <!-- END: source -->
        <!-- END: author -->
        <span class="blog-entry-meta-divider"></span><span class="blog-entry-meta-link">{DETAIL.publtime}</span>
      </div>
      <div class="fs-sm mb-2"><span class="blog-entry-meta-link text-nowrap"><i class="ci-eye"></i>{DETAIL.hitstotal}</span></div>
    </div>
    <div class="card border-0 shadow">
      <img class="card-img-top lazyload" loading="lazy" data-sizes="auto" data-src="{DETAIL.image.src}" data-srcset="{DETAIL.srcset}" alt="{DETAIL.image.alt}">
      <div class="card-body">
        <!-- BEGIN: showhometext -->
        <p class="blog-entry-description">{DETAIL.hometext}</p>
        <!-- END: showhometext -->
        <div>{DETAIL.bodyhtml}</div>
      </div>
    </div>
    <div class="d-flex flex-wrap justify-content-between pt-2 pb-4 mb-1">
      <!-- BEGIN: keywords -->
      <div class="mt-3 me-3"><!-- BEGIN: loop --><a class="btn-tag {SLASH} mb-2" href="{LINK_KEYWORDS}">#{KEYWORD}</a><!-- END: loop --></div>
      <!-- END: keywords -->
      <!-- BEGIN: socialbutton -->                  
      <div class="mt-3"><span class="d-inline-block align-middle text-muted fs-sm me-3 mt-1 mb-2">Chia sẻ:</span><a class="btn-social bs-facebook me-2 mb-2" href="#"><i class="ci-facebook"></i></a><a class="btn-social bs-twitter me-2 mb-2" href="#"><i class="ci-twitter"></i></a><a class="btn-social bs-pinterest me-2 mb-2" href="#"><i class="ci-pinterest"></i></a><!-- BEGIN: zalo --><div><div class="zalo-share-button" data-href="" data-oaid="{ZALO_OAID}" data-layout="1" data-color="blue" data-customize=false></div></div><!-- END: zalo --></div>
      <!-- END: socialbutton -->
    </div>
  </div>
</div>
<!-- END: main -->
<!-- BEGIN: no_permission -->
<div class="alert alert-danger">{NO_PERMISSION}</div>
<!-- END: no_permission -->