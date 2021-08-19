<!-- BEGIN: main -->
<!-- BEGIN: displays -->
<div class="d-flex justify-content-end align-items-center pt-2 pb-4 pb-sm-5">
  <div class="d-flex align-items-center flex-nowrap pb-3">
    <label class="text-light opacity-75 text-nowrap fs-sm me-2 d-none d-sm-block" for="sorting">{LANG.displays_product}:</label>
    <select name="sort" id="sort" class="form-select" onchange="nv_chang_price();">
      <!-- BEGIN: sorts -->
      <option value="{key}" {se}>{value}</option>
      <!-- END: sorts -->
    </select>
  </div>
</div>
<!-- END: displays -->
<div class="row viewgrid shops-viewgrid shops-viewgrid-{MODULE_NAME} mx-n2">
  <!-- BEGIN: loop -->
  <div class="col-md-{NUM} col-sm-6 px-2 mb-4">
    <div class="card product-card">
      <!-- BEGIN: discounts -->
      <span class="badge bg-danger badge-shadow">-{PRICE.discount_percent}{PRICE.discount_unit}</span>
      <!-- END: discounts -->
      <a class="card-img-top d-block overflow-hidden p-2" href="{ROW.link_pro}">
        <img class="lazyload" loading="lazy" data-sizes="auto" data-src="{ROW.homeimgthumb}" alt="{ROW.title}" width="300" height="300">
      </a>
      <div class="card-body py-2">
        <a class="product-meta d-block fs-xs pb-1" href="{ROW.cat_link}">{ROW.cat_title}</a>
        <h3 class="product-title fs-sm"><a href="{ROW.link_pro}">{ROW.title}</a></h3>
        <div class="d-flex justify-content-between">
          <!-- BEGIN: price -->
          <div class="product-price">
            <!-- BEGIN: discounts -->
            <span class="text-accent"><strong>{PRICE.sale_format} {PRICE.unit}</strong></span>
            <del class="fs-sm text-muted">{PRICE.price_format} {PRICE.unit}</del>
            <!-- END: discounts -->
            <!-- BEGIN: no_discounts -->
            <span class="text-accent"><strong>{PRICE.price_format} {PRICE.unit}</strong></span>
            <!-- END: no_discounts -->
          </div>
          <!-- END: price -->
          <!-- BEGIN: contact -->
          <div class="product-price"><span class="text-accent"><strong>{LANG.price_contact}</strong></span></div>
          <!-- END: contact -->
          <!-- BEGIN: product_empty -->
          <div class="text-nowrap"><span class="text-muted fs-sm">{LANG.product_empty}</span></div>
          <!-- END: product_empty -->
        </div>
      </div>
      <!-- BEGIN: order -->
      <div class="card-body card-body-hidden">
        <button class="btn btn-primary btn-sm d-block w-100 mb-2" type="button" id="{ROW.id}" onclick="cartorder(this, {GROUP_REQUIE}, '{ROW.link_pro}'); return !1;"><i class="ci-cart fs-sm me-2"></i>{LANG.add_product}</button>
      </div>
      <!-- END: order -->
    </div>
    <hr class="d-sm-none">
  </div>
  <!-- END: loop -->
</div>
<!-- BEGIN: page -->
<hr class="my-3">
<nav class="d-flex justify-content-end pt-2">{PAGE}</nav>
<!-- END: page -->
<!-- END: main -->