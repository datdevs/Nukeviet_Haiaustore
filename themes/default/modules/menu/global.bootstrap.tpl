<!-- BEGIN: submenu -->
<ul class="dropdown-menu">
<!-- BEGIN: loop -->
<li<!-- BEGIN: submenu --> class="dropdown"<!-- END: submenu -->><a class="dropdown-item dropdown-toggle" href="{SUBMENU.link}"{SUBMENU.target}>{SUBMENU.title_trim}</a><!-- BEGIN: item -->{SUB}<!-- END: item --></li>
<!-- END: loop -->
</ul>
<!-- END: submenu -->
<!-- BEGIN: main -->
<ul class="navbar-nav">
<!-- BEGIN: top_menu -->
<li {TOP_MENU.current}>
<a class="{TOP_MENU.classlink}" href="{TOP_MENU.link}"{TOP_MENU.linkevent}{TOP_MENU.target}>{TOP_MENU.title_trim}</a>
<!-- BEGIN: sub -->{SUB}<!-- END: sub --></li>
<!-- END: top_menu -->
</ul>
<!-- END: main -->