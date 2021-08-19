<!-- BEGIN: main -->
<div class="tns-carousel">
	<div class="tns-carousel-inner" data-carousel-options="{&quot;items&quot;: 1, &quot;controls&quot;: false, &quot;loop&quot;: false}">
		<!-- BEGIN: loop -->
		<div>
			<div class="row align-items-center">
				<div class="col-md-6 order-md-2"><img class="d-block mx-auto tns-lazy-img non-lazy" data-src="{ROW.image}" alt="{ROW.title}" width="500" height="500"></div>
				<div class="col-lg-5 col-md-6 offset-lg-1 order-md-1 pt-4 pb-md-4 text-center text-md-start">
					{ROW.description}
					<!-- BEGIN: image_link -->
					<div class="d-table scale-up delay-4 mx-auto mx-md-0"><a class="btn btn-primary btn-shadow" href="{ROW.link}"<!-- BEGIN: target --> target="{ROW.target}"<!-- END: target -->>Chi tiết<i class="ci-arrow-right ms-2 me-n1"></i></a></div>
					<!-- END: image_link -->
				</div>
			</div>
		</div>	
		<!-- END: loop -->
	</div>
</div>
<!-- END: main -->