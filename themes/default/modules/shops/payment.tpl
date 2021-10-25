<!-- BEGIN: main -->
<div class="row">
  <section class="col-lg-8">
    <div class="steps steps-light pt-2 pb-3 mb-5">
      <a class="step-item active" href="{LINK_CART}">
        <div class="step-progress"><span class="step-count">1</span></div>
        <div class="step-label"><i class="ci-cart"></i>Giỏ hàng</div></a
      ><a class="step-item active" href="checkout-details.html">
        <div class="step-progress"><span class="step-count">2</span></div>
        <div class="step-label"><i class="ci-package"></i>Thông tin đơn hàng</div></a
      ><a class="step-item active" href="#">
        <div class="step-progress"><span class="step-count">3</span></div>
        <div class="step-label"><i class="ci-card"></i>Thanh toán</div></a
      ><a class="step-item active current" href="#">
        <div class="step-progress"><span class="step-count">4</span></div>
        <div class="step-label"><i class="ci-check-circle"></i>Hoàn thành</div></a
      >
    </div>
    <div class="bg-secondary rounded-3 px-4 pt-4 pb-2">
      <div class="row">
        <div class="col-sm-6">
          <h6>Thông tin khách hàng:</h6>
          <ul class="list-unstyled fs-sm">
            <li><span class="text-muted">{LANG.order_name}:</span> {DATA.order_name}</li>
            <li><span class="text-muted">Email:</span> {DATA.order_email}</li>
            <li><span class="text-muted">{LANG.order_phone}:</span> {DATA.order_phone}</li>
            <!-- BEGIN: order_address --><li><span class="text-muted">{LANG.order_address}:</span> {DATA.order_address}</li><!-- END: order_address -->
          </ul>
        </div>
        <div class="col-sm-6">
          <h6>Hóa đơn:</h6>
          <ul class="list-unstyled fs-sm">
            <li><span class="text-muted">{LANG.order_code}:</span> {DATA.order_code}</li>
            <li><span class="text-muted">{LANG.order_date}:</span> {dateup} {moment}</li>
            <li><span class="text-muted">Trạng thái:</span> {DATA.transaction_name}</li>
          </ul>
        </div>
        <!-- BEGIN: order_note -->
        <div class="col-sm-12">
          <div class="alert alert-secondary mb-3 fs-sm" role="alert">
            <strong>{LANG.cart_note}:</strong> {DATA.order_note}
          </div>
        </div>
        <!-- END: order_note -->
      </div>
    </div>
    <div class="d-none d-lg-flex justify-content-center pt-4">
      <div class="w-50 pe-3">
        <a class="btn btn-secondary d-block w-100" href="{url_print}" id="click_print" rel="nofollow"><i class="ci-printer me-2"></i>{LANG.order_print}</a>
      </div>
      <!-- BEGIN: order_action -->
      <div class="w-50 ps-2">
        <a class="btn btn-primary d-block w-100" href="{url_action}" rel="nofollow"><i class="ci-edit me-2"></i>{LANG.order_edit}</a>
      </div>
      <!-- END: order_action -->
    </div>
  </section>
  <aside class="col-lg-4 pt-4 pt-lg-0 ps-xl-5">
    <div class="bg-white rounded-3 shadow-lg p-4 ms-lg-auto">
      <div class="py-2 px-xl-2">
        <div class="widget mb-3">
          <h2 class="widget-title text-center">Đơn hàng</h2>
          <!-- BEGIN: loop -->
          <div class="d-flex align-items-center pb-2 border-bottom">
            <a class="d-block flex-shrink-0" href="{link_pro}"><img class="lazyload" loading="lazy" data-sizes="auto" data-src="{img_pro}" width="64" alt="{title_pro}"></a>
            <div class="ps-2">
              <h6 class="widget-product-title"><a href="{link_pro}">{product_name}</a></h6>
              <div class="widget-product-meta">
                <!-- BEGIN: display_group -->
                <!-- BEGIN: group -->
                <div>
                  <span class="text-muted">{group.parent_title}: </span>{group.title}
                </div>
                <!-- END: group -->
                <!-- END: display_group -->
                <!-- BEGIN: price2 -->
                <span class="text-muted">{product_price} {money_unit}</span>
                <!-- END: price2 -->
                <span class="text-muted">x {product_number}</span>
                <!-- BEGIN: price5 -->
                <div><span class="fs-lg text-accent">{product_price_total} {money_unit}</span></div>
                <!-- END: price5 -->
              </div>
            </div>
          </div>
          <!-- END: loop -->
        </div>
        <!-- BEGIN: price3 -->
        <ul class="list-unstyled fs-sm pb-2 border-bottom">
          <li class="d-flex justify-content-between align-items-center"><span class="me-2">Tổng cộng:</span><span class="text-end">{price_total_products} {unit}</span></li>
          <!-- BEGIN: data_shipping -->
          <li class="d-flex justify-content-between align-items-center"><span class="me-2">Phí vận chuyển:</span><span class="text-end">{DATA_SHIPPING.ship_price} {DATA_SHIPPING.ship_price_unit}</span></li>
          <!-- END: data_shipping -->
          <!-- BEGIN: total_coupons -->
          <li class="d-flex justify-content-between align-items-center"><span class="me-2">Giảm giá:</span><span class="text-end">- {order_coupons} {unit}</span></li>
          <!-- END: total_coupons -->
        </ul>
        <h3 class="text-center mt-4 text-primary"><span id="total">{order_total}</span> {unit}</h3>
        <!-- END: price3 -->
      </div>
    </div>
  </aside>
</div>
<form action="" method="post"><input type="hidden" value="{order_id}" name="order_id"><input type="hidden" value="1" name="save"></form>
<script async defer>
$(function () {
  $('#click_print').click(function (event) {
    var href = $(this).attr("href");
    event.preventDefault();
    nv_open_browse(href, '', 640, 500, 'resizable=no,scrollbars=yes,toolbar=no,location=no,status=no');
    return false;
  });
});
</script>
<!-- END: main -->
