<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC <contact@vinades.vn>
 * @Copyright (C) 2017 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate 04/18/2017 09:47
 */

if (!defined('NV_MAINFILE')) {
    exit('Stop!!!');
}

if (!function_exists('nv_cart_info')) {
    /**
     * nv_cart_info()
     *
     * @param mixed $block_config
     * @return
     */
    function nv_cart_info($block_config)
    {
        global $module_data;

        $module = $block_config['module'];

        $coupons_code = '';

        if (isset($_SESSION[$module . '_coupons']) and !empty($_SESSION[$module . '_coupons']['code']) and $_SESSION[$module . '_coupons']['check']) {
            $coupons_code = $_SESSION[$module . '_coupons']['code'];
        }

        $num = isset($_SESSION[$module . '_cart']) ? count($_SESSION[$module . '_cart']) : 0;
        $link_cart = NV_MY_DOMAIN . nv_url_rewrite(NV_BASE_SITEURL . "index.php?" . NV_LANG_VARIABLE . "=" . NV_LANG_DATA . "&amp;" . NV_NAME_VARIABLE . "=" . $module . "&amp;" . NV_OP_VARIABLE . "=cart", true);

        $content = '<div class="navbar-tool dropdown ms-3"><a class="navbar-tool-icon-box bg-secondary dropdown-toggle" href="' . $link_cart . '"><span id="product_num_total" class="navbar-tool-label">' . $num . '</span><i class="navbar-tool-icon ci-cart"></i></a><div id="cart_block' . $module . '" class="dropdown-menu dropdown-menu-end"></div><script async defer>$("#cart_block' . $module . '").load("' . NV_REAL_DOMAIN . "index.php?" . NV_LANG_VARIABLE . "=" . NV_LANG_DATA . "&" . NV_NAME_VARIABLE . "=" . $module . "&" . NV_OP_VARIABLE . "=loadcart&get_list_product=1&coupons_check=1&coupons_code=" . $coupons_code . '");</script></div>';
        return $content;
    }
}

if (defined('NV_SYSTEM')) {
    $content = nv_cart_info($block_config);
}
