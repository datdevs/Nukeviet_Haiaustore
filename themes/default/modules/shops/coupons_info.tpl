<!-- BEGIN: main -->
<!-- BEGIN: error -->
<div class="alert alert-danger d-flex coupon-info" role="alert">
  <div class="alert-icon">
    <i class="ci-close-circle"></i>
  </div>
  <div class="alert-content"><span>{ERROR}</span></div>
</div>
<!-- END: error -->

<!-- BEGIN: content -->
<div class="alert alert-info d-flex coupon-info" role="alert">
  <div class="alert-icon">
    <i class="ci-announcement"></i>
  </div>
  <div class="alert-content">
		<div>
			<span><strong>{LANG.coupons_discount}</strong>: {DATA.discount}{DATA.discount_text}</span>
		</div>
		<!-- BEGIN: total_amount -->
		<div>
			<span><strong>{LANG.coupons_total_amount}</strong>: {DATA.total_amount} {MONEY_UNIT}</span>
		</div>
		<!-- END: total_amount -->
	</div>
</div>
<script async defer>
	$(document).ready(function() {
		var coupons_code = $('#coupons_code').val();
		$('#coupons_check').addClass('d-none').removeClass('d-block')
		$('#coupons_remove').addClass('d-block').removeClass('d-none')
		$("#cart_block" + nv_module_name).load(urload + '&get_list_product=1' + '&coupons_check=1&coupons_code=' + coupons_code);
		$("#total").load(urload + '&coupons_check=1&coupons_load=1&coupons_code=' + coupons_code + '&t=2');
		$('#coupons_remove').click(function() {
			$.post(script_name + '?' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=cart&nocache=' + new Date().getTime(), 'coupons_clear=1', function(res) {
				$('#coupons_info').html(res);
				$("#cart_block" + nv_module_name).load(urload + '&get_list_product=1');
				$("#total").load(urload + '&t=2');
				$('#coupons_remove').addClass('d-none').removeClass('d-block')
				$('#coupons_check').addClass('d-block').removeClass('d-none')
				$('#coupons_code').val('')
			});
		})
	});
</script>
<!-- END: content -->

<!-- END: main -->