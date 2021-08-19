<!-- BEGIN: main -->
<div class="row">
  <section class="col-lg-8">
    <div class="steps steps-light pt-2 pb-3 mb-5">
      <a class="step-item active" href="{LINK_CART}">
        <div class="step-progress"><span class="step-count">1</span></div>
        <div class="step-label"><i class="ci-cart"></i>Giỏ hàng</div></a
      ><a class="step-item active current" href="checkout-details.html">
        <div class="step-progress"><span class="step-count">2</span></div>
        <div class="step-label"><i class="ci-package"></i>Thông tin đơn hàng</div></a
      ><a class="step-item" href="#">
        <div class="step-progress"><span class="step-count">3</span></div>
        <div class="step-label"><i class="ci-card"></i>Thanh toán</div></a
      ><a class="step-item" href="#">
        <div class="step-progress"><span class="step-count">4</span></div>
        <div class="step-label"><i class="ci-check-circle"></i>Hoàn thành</div></a
      >
    </div>
    <!-- BEGIN: edit_order -->
    <div class="alert alert-warning d-flex" role="alert">
      <div class="alert-icon">
        <i class="ci-security-announcement"></i>
      </div>
      <div>{EDIT_ORDER}</div>
    </div>
    <!-- END: edit_order -->
    <h5 class="pt-1 pb-3 mb-3 border-bottom">Thông tin khách hàng</h5>
    <form action="" method="post" name="fpost" id="fpost" class="needs-validation" novalidate>
      <input type="hidden" value="1" name="postorder">
      <div class="row gy-3">
        <div class="col-12">
          <label for="order_name" class="form-label">{LANG.order_name}</label>
          <input name="order_name" id="order_name" class="form-control" value="{DATA.order_name}" required>
          <div class="invalid-tooltip">Vui lòng nhập họ và tên.</div>
        </div>
        <div class="col-md-6">
          <label for="order_email" class="form-label">{LANG.order_email}</label>
          <input type="email" name="order_email" id="order_email" value="{DATA.order_email}" class="form-control" required>
          <div class="invalid-tooltip">Vui lòng nhập email.</div>
        </div>
        <div class="col-md-6">
          <label for="order_phone" class="form-label">{LANG.order_phone}</label>
          <input name="order_phone" id="order_phone" class="form-control" value="{DATA.order_phone}" required>
          <div class="invalid-tooltip">Vui lòng nhập số điện thoại.</div>
        </div>
        <!-- BEGIN: order_address -->
        <div class="col-12">
          <label for="order_address" class="form-label">{LANG.order_address}</label>
          <input name="order_address" id="order_address" class="form-control" value="{DATA.order_address}" required>
          <div class="invalid-tooltip">Vui lòng nhập địa chỉ giao hàng.</div>
        </div>
        <!-- END: order_address -->
        <!-- BEGIN: shipping_chose -->
        <div class="col-12">
          <div class="form-check form-switch">
            <input type="checkbox" class="form-check-input" id="order_shipping" name="order_shipping" value="1" {IS_SHIPPING_CHECKED}>
            <label class="form-check-label fw-medium" for="order_shipping">{LANG.shipping}</label>
          </div>
        </div>
        <!-- END: shipping_chose -->
        <!-- BEGIN: shipping -->
        <div class="col-12" id="shipping_form">
          <h5 class="pt-1 pb-3 mb-3 border-bottom">{LANG.order_address}</h5>
          <div class="row gy-3">
            <div class="col-6">
              <label for="ship_name" class="form-label">{LANG.shipping_name}</label>
              <input type="text" name="ship_name" id="ship_name" class="form-control" value="{DATA.shipping.ship_name}" required>
              <div class="invalid-tooltip">Vui lòng nhập họ và tên.</div>
            </div>
            <div class="col-6">
              <label for="ship_phone" class="form-label">{LANG.shipping_phone}</label>
              <input type="text" name="ship_phone" id="ship_phone" class="form-control" value="{DATA.shipping.ship_phone}" required>
              <div class="invalid-tooltip">Vui lòng nhập số điện thoại.</div>
            </div>
            <div class="col-6">
              <label for="ship_location" class="form-label">Tỉnh/Thành phố</label>
              <select id="location" name="ship_location" class="form-select">
                <!-- BEGIN: location_loop -->
                <option value="{LOCATION.id}"{LOCATION.selected}>{LOCATION.title}</option>
                <!-- END: location_loop -->
              </select>
            </div>
            <div class="col-6">
              <label for="ship_address_extend" class="form-label">{LANG.shipping_address_extend}</label>
              <input type="text" name="ship_address_extend" id="ship_address_extend" value="{DATA.shipping.ship_address_extend}" class="form-control" required>
              <div class="invalid-tooltip">Vui lòng nhập địa chỉ.</div>
            </div>
          </div>
          <h5 class="pt-1 pb-3 my-3 border-bottom">{LANG.shipping_services}</h5>
          <div class="row gy-3">
            <div class="col-12">
              <label for="shop_id" class="form-label">{LANG.shipping_shops_chose}</label>
              <select class="form-select" id="shop_id" name="shop_id">
                <!-- BEGIN: shops_loop -->
                <option value="{SHOPS.id}" {SHOPS.selected}>{SHOPS.name} {SHOPS.location_string}</option>
                <!-- END: shops_loop -->
              </select>
            </div>
            <div class="col-12">
              <label class="form-label">{LANG.shipping_carrier_chose}</label>
              <!-- BEGIN: carrier_loop -->
              <div class="form-check">
                <input class="form-check-input" type="radio" id="carrier_{CARRIER.id}" name="carrier" value="{CARRIER.id}" {CARRIER.checked}>
                <label class="form-check-label" for="carrier_{CARRIER.id}">{CARRIER.name}</label>
              </div>
              <!-- END: carrier_loop -->
            </div>
          </div>
        </div>
        <!-- END: shipping -->
        <div class="col-12">
          <label for="order_note" class="form-label">{LANG.order_note}</label>
          <textarea class="form-control" name="order_note">{DATA.order_note}</textarea>
        </div>
        <div class="col-12">
          <div class="border-top pt-3 mt-2">
            <div class="form-check">
              <input class="form-check-input" type="checkbox" id="check_agree" name="check" value="1" required>
              <label class="form-check-label" for="check_agree">Tôi đồng ý với các điều khoản và điều kiện.</label>
              <div class="invalid-tooltip">Bạn cần đồng ý các điều khoản và điều kiện.</div>
            </div>
          </div>
        </div>
        <div class="col-12">
          <div class="d-none d-lg-flex mt-3">
            <div class="w-50 pe-3"><a class="btn btn-secondary d-block w-100" href="{LINK_CART}"><i class="ci-arrow-left me-1"></i><span class="d-none d-sm-inline">Quay lại giỏ hàng</span><span class="d-inline d-sm-none">Quay lại</span></a></div>
            <div class="w-50 ps-2"><button class="btn btn-primary d-block w-100" type="submit"><span class="d-none d-sm-inline">Tiếp theo</span><span class="d-inline d-sm-none">Tiếp theo</span><i class="ci-arrow-right ms-1"></i></button></div>
          </div>
        </div>
      </div>
    </form>
  </section>
  <aside class="col-lg-4 pt-4 pt-lg-0 ps-xl-5">
    <div class="bg-white rounded-3 shadow-lg p-4 ms-lg-auto">
      <div class="py-2 px-xl-2">
        <div class="widget mb-3">
          <h2 class="widget-title text-center">Đơn hàng</h2>
          <!-- BEGIN: rows -->
          <div class="d-flex align-items-center pb-2 border-bottom">
            <a class="d-block flex-shrink-0" href="{link_pro}"><img class="lazyload" loading="lazy" data-sizes="auto" data-src="{img_pro}" width="64" alt="{title_pro}"></a>
            <div class="ps-2">
              <h6 class="widget-product-title"><a href="{link_pro}">{title_pro}</a></h6>
              <div class="widget-product-meta">
                <!-- BEGIN: price2 -->
                <span class="text-muted">{PRICE.sale_format} {PRICE.unit}</span>
                <!-- END: price2 -->
                <span class="text-muted">x {pro_num}</span>
                <!-- BEGIN: price5 -->
                <div><span class="fs-lg text-accent">{PRICE_TOTAL.sale_format} {PRICE.unit}</span></div>
                <!-- END: price5 -->
              </div>
            </div>
          </div>
          <!-- END: rows -->
        </div>
        <!-- BEGIN: price3 -->
        <ul class="list-unstyled fs-sm pb-2 border-bottom">
          <li class="d-flex justify-content-between align-items-center"><span class="me-2">Tổng cộng:</span><span class="text-end">{price_total_products} {unit_config}</span></li>
          <li class="d-flex justify-content-between align-items-center"><span class="me-2">Phí vận chuyển:</span><span class="text-end" id="shipping_price">—</span></li>
          <!-- BEGIN: total_coupons -->
          <li class="d-flex justify-content-between align-items-center"><span class="me-2">Giảm giá:</span><span class="text-end">- {price_coupons} {unit_config}</span></li>
          <!-- END: total_coupons -->
        </ul>
        <h3 class="text-center mt-4 text-primary"><span id="total">{price_total}</span> {unit_config}</h3>
        <!-- END: price3 -->
      </div>
    </div>
  </aside>
</div>
<script type="text/javascript" data-show="after">
    var url_load = nv_base_siteurl + 'index.php?' + nv_lang_variable + '=' + nv_lang_data + '&' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=shippingajax';
    var urloadcart = nv_base_siteurl + 'index.php?' + nv_lang_variable + '=' + nv_lang_data + '&' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=loadcart';
    var order_shipping = '{DATA.order_shipping}';
    
    $(document).ready(function () {
      $("#fpost").submit(function (e) {
        e.preventDefault();
        $.ajax({
          type: 'POST',
          url: nv_base_siteurl + 'index.php?' + nv_lang_variable + '=' + nv_lang_data + '&' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=order&nocache=' + new Date().getTime(),
          data: $(this).serialize(),
          success: function (json) {
            console.log(json)
            // if (json.error) {
            //   alert(json.msg);
            //   $('#' + json.input).focus();
            // } else {
            //   window.location.href = json.redirect;
            // }
          }
        });
      });
    });
</script>
<!-- BEGIN: shipping_javascript -->
<script type="text/javascript" data-show="after">
    $(document).ready(function() {
        var shops_id = $('[name="shop_id"]');
        var carrier_id = $('[name="carrier"]:checked');
        var location_id = $('#location option:selected').val();
        
        $('#carrier').load(url_load + '&get_carrier=1&carrier_id={DATA.shipping.ship_carrier_id}&shops_id=' + shops_id.val());
        $('#shipping_shops').text(shops_id.attr("title"));
        $('#shipping_services').text(carrier_id.attr("title"));
        nv_get_price();
        
        $('[name="shop_id"]').change(function() {
            var shops_id = $('[name="shop_id"]');
            $('#carrier').load(url_load + '&get_carrier=1&shops_id=' + shops_id.val());
            $('#shipping_shops').text(shops_id.attr("title"));
            nv_get_price();
        });
        
        if (order_shipping == '0') {
            $('#shipping_form').hide();
        } else {
            $('#shipping_form').show();
        }
    });
    
    $('input[name="order_shipping"]').change(function() {
        if ($('input[name="order_shipping"]:checked').val() == '1') {
            nv_get_price();
            $('#shipping_form').slideDown();
        } else {
            $('#shipping_form').slideUp();
        }
    });
    
    $("#location").on("change", function(e) {
        var location_id = $('#location option:selected').val();
        $.post(url_load + '&nocache=' + new Date().getTime(), 'get_location=1&location_id=' + location_id, function(res) {
            $('#order_address').text(res);
        });
        nv_get_price();
    });
    
    $('input[name="address_extend"]').on("keyup", function() {
        var text = ', ';
        if ($(this).val().length > 0)
            text = $(this).val() + text;
        else
            text = '';
        $('#order_address_extend').html(text);
    });
    
    $('input[name="ship_name"]').on("keyup", function() {
        $('#order_ship_name').html($(this).val());
    });
    
    $('input[name="ship_phone"]').on("keyup", function() {
        var text = ' - ';
        if ($(this).val().length > 0)
            text = text + $(this).val();
        else
            text = '';
        $('#order_ship_phone').html(text);
    });
    
    function nv_get_price() {
        if ($('input[name="order_shipping"]:checked').val() == '1') {
            var carrier_id = $('input[name="carrier"]:checked');
            var shops_id = $('[name="shop_id"]').val();
            var location_id = $('#location option:selected').val();
            $('#shipping_services').text(carrier_id.attr("title"));
            $('#shipping_price').load(url_load + '&get_shipping_price=1&weight={DATA.weight_total}&weight_unit={weight_unit}&location_id=' + location_id + '&shops_id=' + shops_id + '&carrier_id=' + carrier_id.val());
            $('#order_address').load(url_load + '&get_location=1&location_id=' + location_id);
            $("#cart_" + nv_module_name).load(urloadcart + '&coupons_check=1&coupons_code={COUPONS_CODE}&get_shipping_price=1&weight={DATA.weight_total}&weight_unit={weight_unit}&location_id=' + location_id + '&shops_id=' + shops_id + '&carrier_id=' + carrier_id.val());
            $("#total").load(urloadcart + '&coupons_check=1&coupons_code={COUPONS_CODE}&get_shipping_price=1&weight={DATA.weight_total}&weight_unit={weight_unit}&location_id=' + location_id + '&shops_id=' + shops_id + '&carrier_id=' + carrier_id.val() + '&t=2');
        }
    }

    function nv_carrier_change() {
        var carrier_id = $('input[name="carrier"]:checked');
        $('#shipping_services').text(carrier_id.attr("title"));
        nv_get_price();
    }
</script>
<!-- END: shipping_javascript -->
<!-- END: main -->