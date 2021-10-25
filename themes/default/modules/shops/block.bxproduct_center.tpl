<!-- BEGIN: main -->
<div id="block-products-{BLOCKID}" class="my-5">
  <div class="d-flex flex-wrap justify-content-between align-items-center pt-1 border-bottom pb-4 mb-4">
    <h2 class="h3 mb-0 pt-3 me-2">{BLOCK_TITLE}</h2>
    <div class="pt-3"><a class="btn btn-outline-accent btn-sm" href="{SHOP_LINK}">Xem thêm<i class="ci-arrow-right ms-1 me-n1"></i></a></div>
  </div>
  <div class="row pt-2 mx-n2">
    <!-- BEGIN: items -->
    <div class="col-md-3 col-sm-6 px-2 mb-4">
      <div class="card product-card">
        <!-- BEGIN: discounts -->
        <span class="badge bg-danger badge-shadow">-{PRICE.discount_percent}{PRICE.discount_unit}</span>
        <!-- END: discounts -->
        <a class="card-img-top d-block overflow-hidden p-2" href="{LINK}">
          <img class="lazyload" loading="lazy" data-sizes="auto" data-src="{SRC_IMG}" alt="{TITLE}" width="300" height="300">
        </a>
        <div class="card-body py-2">
          <a class="product-meta d-block fs-xs pb-1" href="{ROW.cat_link}">{ROW.cat_title}</a>
          <h3 class="product-title fs-sm"><a href="{LINK}">{TITLE}</a></h3>
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
          <button class="btn btn-primary btn-sm d-block w-100 mb-2" type="button" id="{ROW.id}" onclick="cartorder(this, {GROUP_REQUIE}, '{LINK}', '{MODULE_DATA}'); return !1;"><i class="ci-cart fs-sm me-2"></i>{LANG.add_product}</button>
        </div>
        <!-- END: order -->
      </div>
      <hr class="d-sm-none">
    </div>
    <!-- END: items -->
  </div>
</div>
<script async defer src="{JS_LINK}"></script>
<!-- END: main -->
