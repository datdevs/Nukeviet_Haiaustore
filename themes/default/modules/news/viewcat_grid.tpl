<!-- BEGIN: main -->
<div class="row gy-4 my-sm-5 my-4">
  <!-- BEGIN: featuredloop -->
  <div class="col-12 col-sm-2 col-md-4">
    <article class="blog-grid-item">
      <div class="card">
        <!-- BEGIN: image -->
        <a class="blog-entry-thumb" href="{CONTENT.link}" {CONTENT.target_blank}><img class="card-img-top lazyload" loading="lazy" data-sizes="auto" data-src="{HOMEIMG1}" alt="{HOMEIMGALT1}" width="300" height="200"></a>
        <!-- END: image -->
        <div class="card-body">
          <h2 class="h6 blog-entry-title"><a href="{CONTENT.link}">{CONTENT.title}</a></h2>
          <p class="blog-entry-info fs-sm">{CONTENT.hometext}</p>
        </div>
        <div class="card-footer d-flex align-items-center fs-xs">
          <a class="blog-entry-meta-link" href="#"><div class="blog-entry-author-ava"><img class="lazyload" loading="lazy" data-sizes="auto" data-src="https://cartzilla.createx.studio/img/blog/meta/01.jpg" alt="Cynthia Gomez"></div>Cynthia Gomez</a>
          <div class="ms-auto text-nowrap"><span class="blog-entry-meta-link text-nowrap">{CONTENT.publtime}</span><span class="blog-entry-meta-divider mx-2"></span><span class="blog-entry-meta-link text-nowrap"><i class="ci-eye"></i>{CONTENT.hitstotal}</span></div>
        </div>
      </div>
    </article>
  </div>
  <!-- END: featuredloop -->
  <!-- BEGIN: viewcatloop -->
  <div class="col-12 col-sm-2 col-md-4">
    <article class="blog-grid-item">
      <div class="card">
        <!-- BEGIN: image -->
        <a class="blog-entry-thumb" href="{CONTENT.link}" {CONTENT.target_blank}><img class="card-img-top lazyload" loading="lazy" data-sizes="auto" data-src="{HOMEIMG1}" alt="{HOMEIMGALT1}" width="300" height="200"></a>
        <!-- END: image -->
        <div class="card-body">
          <h2 class="h6 blog-entry-title"><a href="{CONTENT.link}">{CONTENT.title}</a></h2>
          <p class="blog-entry-info fs-sm">{CONTENT.hometext}</p>
        </div>
        <div class="card-footer d-flex align-items-center fs-xs">
          <a class="blog-entry-meta-link" href="#"><div class="blog-entry-author-ava"><img class="lazyload" loading="lazy" data-sizes="auto" data-src="https://cartzilla.createx.studio/img/blog/meta/01.jpg" alt="Cynthia Gomez"></div>Cynthia Gomez</a>
          <div class="ms-auto text-nowrap"><span class="blog-entry-meta-link text-nowrap">{CONTENT.publtime}</span><span class="blog-entry-meta-divider mx-2"></span><span class="blog-entry-meta-link text-nowrap"><i class="ci-eye"></i>{CONTENT.hitstotal}</span></div>
        </div>
      </div>
    </article>
  </div>
  <!-- END: viewcatloop -->
</div>
<!-- BEGIN: generate_page -->
<hr class="my-3">
<nav class="d-flex justify-content-end pt-2">{GENERATE_PAGE}</nav>
<!-- END: generate_page -->
<!-- END: main -->