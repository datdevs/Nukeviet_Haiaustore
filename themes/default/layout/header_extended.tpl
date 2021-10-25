<main class="page-wrapper">
  <header class="shadow-sm">
    <div class="topbar topbar-dark bg-dark d-none d-md-block">
      <div class="container">
        [CONTACT_TOPBAR]
        <div class="tns-carousel tns-controls-static d-none d-md-block">
          <div class="tns-carousel-inner" data-carousel-options='{"mode": "gallery", "nav": false}'>
            <div class="topbar-text">Miễn phí vận chuyển cho đơn hàng từ 500.000đ</div>
            <div class="topbar-text">Bảo hành trong 30 ngày</div>
            <div class="topbar-text">Hỗ trợ thanh toán trực tuyến</div>
          </div>
        </div>
        <div class="ms-3 text-nowrap">
          <a class="topbar-link me-4 d-none d-md-inline-block" href="order-tracking.html"><i class="ci-location"></i>Order tracking</a>
        </div>
      </div>
    </div>
    <!-- Remove "navbar-sticky" class to make navigation bar scrollable with the page.-->
    <div class="navbar-sticky bg-light">
      <div class="navbar navbar-expand-lg navbar-light">
        <div class="container">
          <a class="navbar-brand flex-shrink-0" href="{THEME_SITE_HREF}">
            <img src="{LOGO_SRC}" data-sizes="auto" alt="{SITE_NAME}" width="142" height="36" />
          </a>
          <div class="header-search input-group d-none d-lg-flex mx-5">
            <input class="form-control rounded-end pe-5" type="text" maxlength="{NV_MAX_SEARCH_LENGTH}" placeholder="{LANG.search}..." />
            <button type="button" class="position-absolute top-50 end-0 translate-middle-y text-muted fs-base me-3" aria-label="search button" data-url="{THEME_SEARCH_URL}" data-minlength="{NV_MIN_SEARCH_LENGTH}" data-click="y"><i class="ci-search"></i></button>
          </div>
          <div class="navbar-toolbar d-flex flex-shrink-0 align-items-center">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-label="open menu">
              <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-tool navbar-stuck-toggler" href="#">
              <span class="navbar-tool-tooltip">Expand menu</span>
              <div class="navbar-tool-icon-box"><i class="navbar-tool-icon ci-heart"></i></div>
            </a>
            [USERS]
            [CART]
          </div>
        </div>
      </div>
      <div class="navbar navbar-expand-lg navbar-light navbar-stuck-menu mt-n2 pt-0 pb-2">
        <div class="container">
          <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="header-search input-group d-lg-none my-3">
              <input class="form-control rounded-end pe-5" type="text" maxlength="{NV_MAX_SEARCH_LENGTH}" placeholder="{LANG.search}..." />
              <button type="button" class="position-absolute top-50 end-0 translate-middle-y text-muted fs-base me-3" aria-label="search button" data-url="{THEME_SEARCH_URL}" data-minlength="{NV_MIN_SEARCH_LENGTH}" data-click="y"><i class="ci-search"></i></button>
            </div>
            [PRODUCT_MENU]
            [MENU_SITE]
          </div>
        </div>
      </div>
    </div>
  </header>
  [THEME_ERROR_INFO]