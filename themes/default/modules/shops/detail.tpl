<!-- BEGIN: main -->
<div class="container">
  <div class="bg-light shadow-lg rounded-3 px-4 py-3 mb-5">
    <div class="px-lg-3">
      <div class="row">
        <div class="col-lg-7 pe-lg-0 pt-lg-4">
          <!-- BEGIN: oneimage -->
          <div class="product-gallery">
            <div class="product-gallery-preview order-sm-2">
              <div class="product-gallery-preview-item active">
                <img class="image-zoom lazyload" loading="lazy" data-sizes="auto" data-src="{IMAGE.file}" data-zoom="{IMAGE.file}" alt="{DATA.homeimgalt}">
                <div class="image-zoom-pane"></div>
              </div>
            </div>
          </div>
          <!-- END: oneimage -->
          <!-- BEGIN: image -->
          <div class="product-gallery">
            <div class="product-gallery-preview order-sm-2">
              <!-- BEGIN: loop -->
              <div class="product-gallery-preview-item<!-- BEGIN: active --> active<!-- END: active -->" id="product_gallery_{IMAGE_STT}">
                <img class="image-zoom lazyload" loading="lazy" data-sizes="auto" data-src="{IMAGE.file}" data-zoom="{IMAGE.file}" alt="{DATA.homeimgalt}">
                <div class="image-zoom-pane"></div>
              </div>
              <!-- END: loop -->
            </div>
            <div class="product-gallery-thumblist order-sm-1">
              <!-- BEGIN: loop1 -->
              <a class="product-gallery-thumblist-item<!-- BEGIN: active --> active<!-- END: active -->" href="#product_gallery_{IMAGE_STT}"><img class="lazyload" loading="lazy" data-sizes="auto" data-src="{IMAGE.thumb}" alt="{DATA.homeimgalt} thumb"></a>
              <!-- END: loop1 -->
            </div>
          </div>
          <!-- END: image -->
        </div>
        <div class="col-lg-5 pt-4 pt-lg-0">
          <div class="product-details ms-auto pb-3">
            <div class="d-flex justify-content-between align-items-center mb-2">
              <a href="#">
                <div class="star-rating"><i class="star-rating-icon ci-star-filled active"></i><i class="star-rating-icon ci-star-filled active"></i><i class="star-rating-icon ci-star-filled active"></i><i class="star-rating-icon ci-star-filled active"></i><i class="star-rating-icon ci-star"></i></div>
                <span class="d-inline-block fs-sm text-body align-middle mt-1 ms-1">74 Reviews</span>
              </a>
              <button class="btn-wishlist me-0 me-lg-n3" type="button" data-bs-toggle="tooltip" title="Add to wishlist"><i class="ci-heart"></i></button>
            </div>
            <div class="mb-3">
              <!-- BEGIN: price -->
              <!-- BEGIN: discounts -->
              <span class="h3 fw-normal text-accent me-1">{PRICE.sale_format} {PRICE.unit}</span>
              <del class="text-muted fs-lg me-3">{PRICE.price_format} {PRICE.unit}</del>
              <span class="badge bg-danger badge-shadow align-middle mt-n2">-{PRICE.discount_percent}{PRICE.discount_unit}</span>
              <!-- END: discounts -->
              <!-- BEGIN: no_discounts -->
              <span class="h3 fw-normal text-accent me-1">{PRICE.price_format} {PRICE.unit}</span>
              <!-- END: no_discounts -->
              <!-- END: price -->
              <!-- BEGIN: contact -->
              <span class="h3 fw-normal text-accent me-1"><small>{LANG.detail_pro_price}:</small> {LANG.price_contact}</span>
              <!-- END: contact -->
            </div>
            <!-- BEGIN: group -->
            <div class="product-groups">
              <!-- BEGIN: items -->
              <!-- BEGIN: header -->
              <div class="fs-sm mb-2">
                <span class="text-heading fw-medium me-1">{HEADER}:</span>
                <span class="text-muted" id="colorOption_{GROUPID}"></span>
              </div>
              <!-- END: header -->
              <div class="itemsgroup mb-2" data-groupid="{GROUPID}" data-header="{HEADER}">
              <!-- BEGIN: loop -->
              <div class="form-check form-option form-check-inline mb-2">
                <input class="form-check-input groupid" type="radio" name="groupid[{GROUPID}]" id="groupid_{GROUP.groupid}" onclick="check_quantity( $(this), '{GROUP.title}' )" value="{GROUP.groupid}"<!-- BEGIN: checked --> checked<!-- END: checked -->>
                <!-- BEGIN: image -->
                <label class="form-option-label rounded-circle" for="groupid_{GROUP.groupid}"><span class="invisible">{GROUP.groupid}</span><span class="form-option-color rounded-circle lazyload" data-bgset="{IMG}"></span></label>
                <!-- END: image -->
                <!-- BEGIN: checkbox -->
                <label class="form-option-label" for="groupid_{GROUP.groupid}">{GROUP.title}</label>
                <!-- END: checkbox -->
              </div>
              <!-- END: loop -->
              </div>
              <!-- END: items -->
              <span id="group_error"></span>
            </div>
            <!-- END: group -->
            <div class="mb-grid-gutter">
              <!-- BEGIN: order_number -->
              <div class="mb-3 d-flex align-items-center">
                <span class="text-heading fw-medium me-2">{LANG.detail_pro_number}:</span>
                <input class="form-control me-3" type="number" name="num" value="1" min="1" id="pnum" style="width:5rem">
                <!-- BEGIN: product_number -->
                <small class="text-muted" id="product_number">{PRODUCT_NUMBER} sản phẩm có sẵn</small>
                <!-- END: product_number -->
              </div>
              <!-- END: order_number -->
              <div class="mb-3 d-flex align-items-center flex-column flex-sm-row">
                <!-- BEGIN: order -->
                <button class="btn btn-outline-primary d-block w-100 btn-order btn-order-cart mb-2 me-sm-3" data-id="{proid}" onclick="cartorder_detail(this, {POPUP}, 0); return !1;"><i class="ci-cart fs-lg me-2"></i>{LANG.add_cart}</button>
                <button class="btn btn-primary btn-shadow d-block w-100 btn-order btn-order-buy" data-id="{proid}" onclick="cartorder_detail(this, {POPUP}, 1); return !1;"><i class="ci-card fs-lg me-2"></i>{LANG.buy_now}</button>
                <!-- END: order -->
                <!-- BEGIN: product_empty -->
                <button class="btn btn-secondary disabled">{LANG.product_empty}</button>
                <!-- END: product_empty -->
              </div>
            </div>
            <!-- Product panels-->
            <div class="accordion mb-4" id="productPanels">
              <!-- BEGIN: hometext -->
              <div class="accordion-item">
                <h3 class="accordion-header">
                  <a class="accordion-button" href="#productInfo" role="button" data-bs-toggle="collapse" aria-expanded="true" aria-controls="productInfo"><i class="ci-announcement text-muted fs-lg me-2"></i>Giới thiệu sản phẩm</a>
                </h3>
                <div class="accordion-collapse collapse show" id="productInfo" data-bs-parent="#productPanels">
                  <div class="accordion-body">{hometext}</div>
                </div>
              </div>
              <!-- END: hometext -->
              <!-- BEGIN: gift -->
              <div class="accordion-item">
                <h3 class="accordion-header">
                  <a class="accordion-button collapsed" href="#giftFromStore" role="button" data-bs-toggle="collapse" aria-expanded="true" aria-controls="giftFromStore"><i class="ci-gift text-muted fs-lg me-2"></i>{LANG.detail_gift}</a>
                </h3>
                <div class="accordion-collapse collapse" id="giftFromStore" data-bs-parent="#productPanels">
                  <div class="accordion-body"><span>{gift_content}</span></div>
                </div>
              </div>
              <!-- END: gift -->
            </div>
            <!-- Sharing-->
            <label class="form-label d-inline-block align-middle my-2 me-3">Chia sẻ:</label><a class="btn-share btn-twitter me-2 my-2" href="#"><i class="ci-twitter"></i>Twitter</a><a class="btn-share btn-instagram me-2 my-2" href="#"><i class="ci-instagram"></i>Instagram</a><a class="btn-share btn-facebook my-2" href="#"><i class="ci-facebook"></i>Facebook</a>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- BEGIN: product_detail -->
  <!-- BEGIN: tabs -->
  <div class="pt-sm-3 pb-sm-5 px-sm-5 mb-5 mb-sm-0">
    <!-- BEGIN: tabs_content -->
    {TABS_CONTENT}
    <!-- END: tabs_content -->
  </div>
  <!-- END: tabs -->
</div>
<!-- BEGIN: other -->
<div class="border-top my-lg-3 py-5">
<div class="container pt-md-2">
<h3 class="text-center mb-5">{LANG.detail_others}</h3>
{OTHER}
</div>
</div>
<!-- END: other -->
<!-- BEGIN: other_view -->
<div class="border-top my-lg-3 py-5">
<div class="container pt-md-2">
<h3 class="text-center mb-5">{LANG.detail_others_view}</h3>
{OTHER_VIEW}
</div>
</div>
<!-- END: other_view -->
<!-- END: product_detail -->
<script type="application/ld+json">
  {
    "@context": "https://schema.org/",
    "@type": "Product",
    "name": "{TITLE}",
    "image": <!-- BEGIN: imageschema -->[
      <!-- BEGIN: loop -->"{DOMAIN}{IMAGE.file}"<!-- BEGIN: comma -->, <!-- END: comma --><!-- END: loop -->
    ]<!-- END: imageschema --><!-- BEGIN: oneimageschema -->{DOMAIN}{IMAGE.file}<!-- END: oneimageschema -->,
    "description": "{DESCRIPTION}",
    "sku": "{PRODUCT_CODE}",
    "mpn": "{PRODUCT_CODE}",
    "brand": {
      "@type": "Brand",
      "name": "Local Brand"
    },
    "review": {
      "@type": "Review",
      "reviewRating": {
        "@type": "Rating",
        "ratingValue": "4",
        "bestRating": "5"
      },
      "author": {
        "@type": "Person",
        "name": "Nguyễn Tuấn Anh"
      }
    },
    "aggregateRating": {
      "@type": "AggregateRating",
      "ratingValue": "4.4",
      "reviewCount": "152"
    },
    "offers": {
      "@type": "Offer",
      "url": "{PRO_FULL_LINK}",
      "priceCurrency": "VND",
      "price": "{PRICE.sale}",
      "priceValidUntil": "2025-01-21",
      "itemCondition": "https://schema.org/UsedCondition",
      "availability": "{AVAILABILITY}"
    }
  }
</script>
<script async defer>
  ready(() => {
    const previews = document.querySelectorAll('.product-gallery-preview-item')
    const thumbnails = document.querySelectorAll('.product-gallery-thumblist-item')

    for (var n = 0; n < thumbnails.length; n++) {
      thumbnails[n].addEventListener('click', changePreview);
    }

    function changePreview(e) {
      e.preventDefault();
      for (var _i = 0; _i < thumbnails.length; _i++) {
        previews[_i].classList.remove('active');
        thumbnails[_i].classList.remove('active');
      }
      this.classList.add('active');
      document.querySelector(this.getAttribute('href')).classList.add('active');
    }
  })
</script>
<!-- BEGIN: allowed_print_js -->
<script async defer>
    $(function() {
        $('#click_print').click(function(event) {
            var href = $(this).attr("href");
            event.preventDefault();
            nv_open_browse(href, '', 640, 500, 'resizable=no,scrollbars=yes,toolbar=no,location=no,status=no');
            return false;
        });
    });
</script>
<!-- END: allowed_print_js -->
<!-- BEGIN: order_number_limit -->
<script async defer>
    $('#pnum').attr( 'max', '{PRODUCT_NUMBER}' );
    $('#pnum').change(function(){
        if( intval($(this).val()) > intval($(this).attr('max')) ){
            alert('{LANG.detail_error_number} ' + $(this).attr('max') );
            $(this).val( $(this).attr('max') );
        }
    });
</script>
<!-- END: order_number_limit -->
<script async defer>
var detail_error_group = '{LANG.detail_error_group}';
function check_quantity(_this, title) {
  const colorOption = `colorOption_${_this.closest('.itemsgroup').data('groupid')}`
  $('#' + colorOption).text(title)
  $('#group_error').css( 'display', 'none' );
  <!-- BEGIN: check_price -->
  check_price( '{proid}', '{pro_unit}' );
  <!-- END: check_price -->
}
$(document).ready(function() {
    // Chọn ngay nhóm sản phẩm đầu tiên nếu có 1 nhóm mỗi loại
    var itemsgroup = $('.itemsgroup');
    itemsgroup.each(function() {
        var item = $(this);
        var radio = $('[type="radio"]', item);
        if (radio.length == 1) {
            radio.trigger('click');
        }
    });
});
</script>
<!-- END: main -->
