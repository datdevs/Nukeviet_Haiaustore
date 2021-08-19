<!-- BEGIN: main -->
<!-- BEGIN: warning -->
<div class="alert alert-danger">{LANG.warning}</div>
<!-- END: warning -->
<div class="row justify-content-center pt-5 mt-md-2" itemtype="http://schema.org/Article" itemscope>
  <div class="col-lg-9">
    <h1 class="d-none" itemprop="headline">{CONTENT.title}</h1>
    <div class="hidden hide d-none" itemprop="author" itemtype="http://schema.org/Organization" itemscope>
        <span itemprop="name">{SCHEMA_ORGNAME}</span>
    </div>
    <span class="hidden hide d-none" itemprop="datePublished">{SCHEMA_DATEPUBLISHED}</span>
    <span class="hidden hide d-none" itemprop="dateModified">{SCHEMA_DATEPUBLISHED}</span>
    <span class="hidden hide d-none" itemprop="mainEntityOfPage">{SCHEMA_URL}</span>
    <span class="hidden hide d-none" itemprop="image">{SCHEMA_IMAGE}</span>
    <div class="hidden hide d-none" itemprop="publisher" itemtype="http://schema.org/Organization" itemscope>
        <span itemprop="name">{SCHEMA_ORGNAME}</span>
        <span itemprop="logo" itemtype="http://schema.org/ImageObject" itemscope>
            <span itemprop="url">{SCHEMA_ORGLOGO}</span>
        </span>
    </div>
    <div class="card border-0 shadow">
      <!-- BEGIN: imagecenter -->
      <img class="card-img-top lazyload" loading="lazy" data-sizes="auto" data-src="{CONTENT.image}" alt="{CONTENT.title}">
      <!-- END: imagecenter -->
      <!-- BEGIN: imageleft -->
      <img class="card-img-top lazyload" loading="lazy" data-sizes="auto" data-src="{CONTENT.image}" alt="{CONTENT.title}">
      <!-- END: imageleft -->
      <div class="card-body">
        <!-- BEGIN: description -->
        <p class="blog-entry-description">{CONTENT.description}</p>
        <!-- END: description -->
        <div>{CONTENT.bodytext}</div>
      </div>
    </div>
  </div>
</div>
<!-- END: main -->