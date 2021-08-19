<!-- BEGIN: main -->
<form class="needs-validation mb-3" method="post" action="{ACTION_FILE}" onsubmit="return nv_validForm(this);" novalidate<!-- BEGIN: recaptcha3 --> data-recaptcha3="1"<!-- END: recaptcha3 -->>
	<div class="row gy-3">
		<div class="col-sm-6">
			<label class="form-label" for="ftitle">{LANG.title}: <span class="text-danger">*</span></label>
			<input type="text" maxlength="255" class="form-control" value="{CONTENT.ftitle}" name="ftitle" data-pattern="/^(.){3,}$/" onkeypress="nv_validErrorHidden(this);" required>
			<div class="invalid-feedback">{LANG.error_title}</div>
		</div>
		<div class="col-sm-6">
			<label class="form-label" for="fname">{LANG.fullname}: <span class="text-danger">*</span></label>
			<input type="text" maxlength="100" value="" name="fname" class="form-control" data-pattern="/^(.){3,}$/" onkeypress="nv_validErrorHidden(this);" required>
			<div class="invalid-feedback">{LANG.error_fullname}</div>
		</div>
		<div class="col-sm-6">
			<label class="form-label" for="femail">{LANG.email}: <span class="text-danger">*</span></label>
			<input type="email" maxlength="60" value="" name="femail" class="form-control" onkeypress="nv_validErrorHidden(this);" required>
			<div class="invalid-feedback">{LANG.error_email}</div>
		</div>
		<div class="col-sm-6">
			<label class="form-label" for="fphone">{LANG.phone}: <span class="text-danger">*</span></label>
      <input type="text" maxlength="60" value="{CONTENT.fphone}" name="fphone" class="form-control" placeholder="{LANG.phone}" required>
			<div class="invalid-feedback">Vui lòng nhập số điện thoại.</div>
		</div>
		<div class="col-12">
			<label class="form-label" for="fcon">{LANG.content}: <span class="text-danger">*</span></label>
    	<textarea rows="3" name="fcon" class="form-control" maxlength="1000" placeholder="{LANG.content}" onkeypress="nv_validErrorHidden(this);" required></textarea>
			<div class="invalid-feedback">{LANG.error_content}</div>
		</div>
		<!-- BEGIN: captcha -->
		<div class="col-12">
			<div class="d-flex align-items-center">
				<img width="{GFX_WIDTH}" height="{GFX_HEIGHT}" title="{GLANG.captcharefresh}" alt="{LANG.captcha}" src="{NV_BASE_SITEURL}index.php?scaptcha=captcha&t={NV_CURRENTTIME}" class="captchaImg" onclick="change_captcha('.fcode');">
				<input type="text" placeholder="{LANG.captcha}" maxlength="{NV_GFX_NUM}" value="" name="fcode" class="fcode form-control" data-pattern="/^(.){{NV_GFX_NUM},{NV_GFX_NUM}}$/" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.error_captcha}">
			</div>
		</div>
		<!-- END: captcha -->
		<!-- BEGIN: recaptcha -->
		<div class="form-group">
				<div class="middle text-center clearfix">
						<div class="nv-recaptcha-default"><div id="{RECAPTCHA_ELEMENT}" data-toggle="recaptcha" data-pnum="4" data-btnselector="[type=submit]"></div></div>
				</div>
		</div>
		<!-- END: recaptcha -->
		<div class="col-12">
			<input type="hidden" name="checkss" value="{CHECKSS}" />
			<input type="submit" value="{LANG.sendcontact}" name="btsend" class="btn btn-primary" />
		</div>
	</div>
</form>
<div class="contact-result alert"></div>
<!-- END: main -->