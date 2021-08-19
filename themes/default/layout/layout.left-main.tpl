<!-- BEGIN: main -->
{FILE "header_only.tpl"}
{FILE "header_extended.tpl"}
{FILE "breadcrumb-dark.tpl"}
<div class="container pb-5 mb-2 mb-md-4">
  <div class="row">
    <aside class="col-lg-4">
      <div class="offcanvas offcanvas-collapse bg-white w-100 rounded-3 shadow-lg py-1" id="left-sidebar" style="max-width: 22rem;"><div class="offcanvas-header align-items-center shadow-sm"><h2 class="h5 mb-0">Bộ lọc</h2><button class="btn-close ms-auto" type="button" data-bs-dismiss="offcanvas" aria-label="Close"></button></div><div class="offcanvas-body py-grid-gutter px-lg-grid-gutter">[LEFT]</div></div>
    </aside>
    <section class="col-lg-8">
      [TOP]
      {MODULE_CONTENT}
      [BOTTOM]
    </section>
  </div>
</div>
{FILE "footer_extended.tpl"}
{FILE "footer_only.tpl"}
<!-- END: main -->