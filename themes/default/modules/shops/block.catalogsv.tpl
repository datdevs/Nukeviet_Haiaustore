<!-- BEGIN: main -->
<div class="accordion mt-n1" id="shop-categories">
<!-- BEGIN: menu_loop -->
<div class="accordion-item">
<h3 class="accordion-header"><a class="accordion-button collapsed" href="#{CAT.alias}" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="{CAT.alias}">{CAT.title}</a></h3>
<div class="accordion-collapse collapse" id="{CAT.alias}" data-bs-parent="#shop-categories">
<div class="accordion-body">
<div class="widget widget-links widget-filter">
<ul class="widget-list widget-filter-list pt-1">
<li class="widget-list-item widget-filter-item"><a class="widget-list-link d-flex justify-content-between align-items-center" href="{CAT.link}"><span class="widget-filter-item-text">Xem tất cả</span></a></li>
<!-- BEGIN: sub_loop -->{CATSUB}<!-- END: sub_loop -->
</ul>
</div>
</div>
</div>
</div>
<!-- END: menu_loop -->
</div>
<!-- END: main -->