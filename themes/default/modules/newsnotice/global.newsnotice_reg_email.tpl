<!-- BEGIN: main -->
<div class="widget pb-2 mb-4">
	<h3 class="widget-title text-light pb-1">Đăng ký nhận tin</h3>
	<form class="subscription-form validate" action="{ACTION}" method="post" novalidate>
		<div class="input-group flex-nowrap">
      <i class="ci-mail position-absolute top-50 translate-middle-y text-muted fs-base ms-3"></i>
	    <input class="form-control rounded-start" type="email" name="email" id="{MODULE_NAME}_email" placeholder="Địa chỉ Email" required>
      <input class="btn btn-primary" type="submit" value="Đăng ký*" name="do" />
		</div>
		<!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
		<div style="position: absolute; left: -5000px;" aria-hidden="true">
			<input class="subscription-form-antispam" type="text" name="b_c7103e2c981361a6639545bd5_29ca296126" tabindex="-1">
		</div>
		<div class="form-text text-light opacity-50">*{BLOCK_DATA.text}</div>
		<div class="subscription-status"></div>
	</form>
</div>
<script type="text/javascript">
	$(document).ready(function() {
		$('input[name=do]').click(function() {
			var email = $('input[name=email]').val();

			if (email == '') {
				alert('{LANG.error_email_empty}');
				$('#{MODULE_NAME}_email').focus();
			} else if (!nv_email_check(document.getElementById('{MODULE_NAME}_email'))) {
				alert('{LANG.error_email_type}');
				$('#{MODULE_NAME}_email').focus();
			} else {
				$.ajax({
					type : "get",
					url : '{NV_BASE_SITEURL}' + 'index.php?' + '{NV_NAME_VARIABLE}=newsnotice&{NV_OP_VARIABLE}=checkmail',
					data : "email=" + email,
					success : function(a) {
						if (a > 0) {
							alert('{LANG.error_existed_email}');
							$('#{MODULE_NAME}_email').focus();
						} else {
							window.location.href = '{NV_BASE_SITEURL}' + 'index.php?' + '{NV_NAME_VARIABLE}=newsnotice&status=success&email=' + email;
						}
					}
				});
			}
			return false;
		});
	});
</script>
<!-- END: main -->