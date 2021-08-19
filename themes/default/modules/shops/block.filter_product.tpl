<!-- BEGIN: main -->
<form action="" method="POST" onsubmit="check(); return false;">
    <!-- BEGIN: main_group -->
    <div class="widget widget-filter mb-4 pb-4 border-bottom">
      <h3 class="widget-title">{GROUP.title}</h3>
      <ul class="widget-list widget-filter-list list-unstyled pt-1">
        <!-- BEGIN: sub_group -->
        <li class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
          <div class="form-check">
            <input class="form-check-input" type="checkbox" name="group_id[]" value="{SUBGROUP.id}" id="{SUBGROUP.alias}" {SUBGROUP.checked}>
            <label class="form-check-label widget-filter-item-text" for="{SUBGROUP.alias}">{SUBGROUP.title}</label>
          </div><span class="fs-xs text-muted">{SUBGROUP.numpro}</span>
        </li>
        <!-- END: sub_group -->
      </ul>
    </div>
    <!-- END: main_group -->
    <!-- BEGIN: group_price -->
    <div class="widget widget-filter mb-4 pb-4 border-bottom">
      <h3 class="widget-title">{LANG.title_price} ({MONEY_UNIT})</h3>
      <ul class="widget-list widget-filter-list list-unstyled pt-1">
        <!-- BEGIN: loop -->
        <li class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
          <div class="form-check">
            <input class="form-check-input" type="checkbox" name="group_price[]" value="{PRICE.price_key}" id="{PRICE.price_key}" {PRICE.checked}>
            <label class="form-check-label widget-filter-item-text" for="{PRICE.price_key}">{PRICE.price_value}</label>
          </div>
        </li>
        <!-- END: loop -->
      </ul>
    </div>
    <!-- END: group_price -->
    <input type="submit" name="filter" value="{LANG.filter}" class="btn btn-primary" />
</form>
<script type="text/javascript" data-show="after">
function check(){$('input[name="group_id[]"], input[name="group_price[]"]').each(function(){$(this).is(":checked")&&$count++}),alert("{LANG.filter_no_item}")}
</script>
<!-- END: main -->

<script type="text/javascript" data-show="after">
function check() {
  var count = 0;
  $('input[name="group_id[]"], input[name="group_price[]"]').each(function () {
    if ($(this).is(':checked')) {
      $count++;
    }
  });
  if (count < 1) {
    alert('{LANG.filter_no_item}');
  }
}
</script>
