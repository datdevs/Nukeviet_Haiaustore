<main class="page-wrapper">
  <header class="shadow-sm">
    <div class="topbar topbar-dark bg-dark">
      <div class="container">
        [CONTACT_TOPBAR]
        <div class="tns-carousel tns-controls-static d-none d-md-block">
          <div class="tns-carousel-inner" data-carousel-options='{"mode": "gallery", "nav": false}'>
            <div class="topbar-text">Free shipping for order over $200</div>
            <div class="topbar-text">We return money within 30 days</div>
            <div class="topbar-text">Friendly 24/7 customer support</div>
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
          <a class="navbar-brand d-none d-sm-block flex-shrink-0" href="{THEME_SITE_HREF}">
            <img src="{LOGO_SRC}" data-sizes="auto" alt="{SITE_NAME}" width="142" height="36" />
          </a>
          <a class="navbar-brand d-sm-none flex-shrink-0 me-2" href="index.html"><img src="img/logo-icon.png" width="74" alt="Cartzilla" /></a>
          <div class="header-search input-group d-none d-lg-flex mx-5">
            <input class="form-control rounded-end pe-5" type="text" maxlength="{NV_MAX_SEARCH_LENGTH}" placeholder="{LANG.search}..." />
            <button type="button" class="position-absolute top-50 end-0 translate-middle-y text-muted fs-base me-3" data-url="{THEME_SEARCH_URL}" data-minlength="{NV_MIN_SEARCH_LENGTH}" data-click="y"><i class="ci-search"></i></button>
          </div>
          <div class="navbar-toolbar d-flex flex-shrink-0 align-items-center">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
              <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-tool navbar-stuck-toggler" href="#">
              <span class="navbar-tool-tooltip">Expand menu</span>
              <div class="navbar-tool-icon-box"><i class="navbar-tool-icon ci-heart"></i></div>
            </a>
            [USERS] [CART]
          </div>
        </div>
      </div>
      <div class="navbar navbar-expand-lg navbar-light navbar-stuck-menu mt-n2 pt-0 pb-2">
        <div class="container">
          <div class="collapse navbar-collapse" id="navbarCollapse">
            <!-- Search-->
            <div class="input-group d-lg-none my-3">
              <i class="ci-search position-absolute top-50 start-0 translate-middle-y text-muted fs-base ms-3"></i>
              <input class="form-control rounded-start" type="text" placeholder="Search for products" />
            </div>
            [PRODUCT_MENU] [MENU_SITE]
          </div>
        </div>
      </div>
    </div>
  </header>
  [THEME_ERROR_INFO]
</main>
