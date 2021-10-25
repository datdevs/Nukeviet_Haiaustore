<!-- BEGIN: main -->
<form action="{LINK_CART}" method="post" id="fpro">
	<input type="hidden" value="1" name="save"/>
	<div class="row">
		<section class="col-lg-8">
			<div class="d-flex justify-content-between align-items-center pt-3 pb-4 pb-sm-5 mt-1">
				<h2 class="h6 text-light mb-0">Sản phẩm</h2><a class="btn btn-outline-primary btn-sm ps-2" href="{LINK_PRODUCTS}"><i class="ci-arrow-left me-2"></i>{LANG.cart_continue}</a>
			</div>
			<!-- BEGIN: rows -->
			<div class="d-sm-flex justify-content-between align-items-center my-2 pb-3 border-bottom" id="{id}_{list_group_id}">
				<div class="d-block d-sm-flex align-items-center text-center text-sm-start">
					<a class="d-inline-block flex-shrink-0 mx-auto me-sm-4" href="{link_pro}"><img class="lazyload" loading="lazy" data-sizes="auto" data-src="{img_pro}" width="160" alt="{title_pro}"></a>
					<div class="pt-2">
						<h3 class="product-title fs-base mb-2"><a href="{link_pro}">{title_pro}</a></h3>
						<!-- BEGIN: display_group -->
						<!-- BEGIN: group -->
						<div class="fs-sm"><span class="text-muted me-2">{group.parent_title}:</span>{group.title}</div>
						<!-- END: group -->
						<!-- END: display_group -->
						<!-- BEGIN: price2 -->
						<div class="fs-sm"><span class="text-muted me-2">{LANG.cart_price}:</span>{PRICE.sale_format} {PRICE.unit}</div>
						<!-- END: price2 -->
						<!-- BEGIN: price5 -->
						<div class="fs-lg text-accent pt-2">{PRICE_TOTAL.sale_format} {PRICE.unit}</div>
						<!-- END: price5 -->
					</div>
				</div>
				<div class="pt-2 pt-sm-0 ps-sm-3 mx-auto mx-sm-0 text-center text-sm-start" style="max-width: 9rem;">
					<label class="form-label" for="quantity1">{LANG.cart_numbers}</label>
					<input type="number" size="1" value="{pro_num}" name="listproid[{id}_{list_group}]" id="{id}" class="form-control"/>
					<button class="btn btn-link px-0 text-danger remove_cart" type="button" data-href="{link_remove}"><i class="ci-close-circle me-2"></i><span class="fs-sm">{LANG.cart_remove_pro}</span></button>
				</div>
			</div>
			<!-- END: rows -->
			<button class="btn btn-outline-accent d-block w-100 mt-4" type="submit" name="cart_update"><i class="ci-loading fs-base me-2"></i>{LANG.cart_update}</button>
		</section>
		<aside class="col-lg-4 pt-4 pt-lg-0 ps-xl-5">
			<div class="bg-white rounded-3 shadow-lg p-4">
				<div class="py-2 px-xl-2">
					<!-- BEGIN: price3 -->
					<div class="text-center mb-4 pb-3 border-bottom">
						<h2 class="h6 mb-3 pb-1">{LANG.cart_total}</h2>
						<h3 class="fw-normal"><span id="total"></span> {unit_config}</h3>
					</div>
					<!-- END: price3 -->
					<!-- BEGIN: coupons_code -->
					<div class="accordion" id="order-options">
						<div class="accordion-item">
							<h3 class="accordion-header"><a class="accordion-button" href="#promo-code" role="button" data-bs-toggle="collapse" aria-expanded="true" aria-controls="promo-code">{LANG.coupons}</a></h3>
							<div class="accordion-collapse collapse show" id="promo-code" data-bs-parent="#order-options">
								<div class="accordion-body">
									<div class="mb-3">
										<input type="text" name="coupons_code" value="{C_CODE}" id="coupons_code" placeholder="{LANG.coupons_fill}" class="form-control">
									</div>
									<div id="coupons_info"></div>
									<button class="btn btn-outline-primary d-block w-100" id="coupons_check" type="button">Áp dụng</button>
									<button class="btn btn-outline-primary d-none w-100" id="coupons_remove" type="button">Hủy bỏ</button>
								</div>
							</div>
						</div>
					</div>
					<!-- END: coupons_code -->
					<button class="btn btn-primary btn-shadow d-block w-100 mt-4" type="submit" name="cart_order"><i class="ci-card fs-lg me-2"></i>{LANG.cart_order}</button>
				</div>
			</div>
		</aside>
	</div>
</form>

<!-- BEGIN: errortitle -->
<ul class="alert alert-danger text-center">
	<!-- BEGIN: errorloop -->
	<li class="clearfix">
		{ERROR_NUMBER_PRODUCT}
	</li>
	<!-- END: errorloop -->
</ul>
<!-- END: errortitle -->

<!-- BEGIN: point_note -->
<div class="alert alert-info">
	{point_note}
</div>
<!-- END: point_note -->

<!-- BEGIN: edit_order -->
<div class="alert alert-warning">
{EDIT_ORDER}
</div>
<!-- END: edit_order -->

<script async defer>
	var urload = nv_real_domain + 'index.php?' + nv_lang_variable + '=' + nv_lang_data + '&' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=loadcart';
	$("#total").load(urload + '&t=2');

	$(function() {
		$(".remove_cart").click(function() {
			var href = $(this).data("href");
			$.ajax({
				type : "GET",
				url : href,
				data : '',
				success : function(data) {
					if (data != '') {
						$("#" + data).html('');
						$("#cart_block" + nv_module_name).load(urload + '&get_list_product=1');
						$("#total").load(urload + '&t=2');
						$('#product_num_total').load(urload + '&t=1')
					}
				}
			});
			return false;
		});
	});
</script>

<!-- BEGIN: coupons_javascript -->
<script async defer>
	var coupons_code = $('input[name="coupons_code"]').val();
	if (coupons_code != '') {
		$.post(script_name + '?' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=cart&nocache=' + new Date().getTime(), 'coupons_check=1&coupons_code=' + coupons_code, function(res) {
			$('#coupons_info').html(res);
		});
	}

	$(function() {
		$("#coupons_check").click(function() {
			var coupons_code = $('input[name="coupons_code"]').val();
			nv_settimeout_disable('coupons_code', 1000);
			nv_settimeout_disable('coupons_check', 1000);
			$.post(script_name + '?' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=cart&nocache=' + new Date().getTime(), 'coupons_check=1&coupons_code=' + coupons_code, function(res) {
				$('#coupons_info').html(res);
			});
			return false;
		});
	});
</script>
<!-- END: coupons_javascript -->

<!-- END: main -->