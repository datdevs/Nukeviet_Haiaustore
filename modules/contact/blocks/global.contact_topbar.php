<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC <contact@vinades.vn>
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate 3/25/2010 18:6
 */

if (!defined('NV_MAINFILE')) {
    exit('Stop!!!');
}

if (!nv_function_exists('nv_contact_topbar')) {
    /**
     * nv_contact_topbar()
     *
     * @return
     */
    function nv_block_config_contact_topbar($module, $data_block, $lang_block)
    {
        global $site_mods, $nv_Cache;

        $html = '';
        $html .= '<div class="form-group">';
        $html .= '<label class="control-label col-sm-6">' . $lang_block['departmentid'] . ':</label>';
        $html .= '<div class="col-sm-9"><select name="config_departmentid" class="form-control">';
        $sql = 'SELECT id, full_name FROM ' . NV_PREFIXLANG . '_' . $site_mods[$module]['module_data'] . '_department WHERE act=1';
        $list = $nv_Cache->db($sql, 'id', $module);
        foreach ($list as $l) {
            $html .= '<option value="' . $l['id'] . '" ' . (($data_block['departmentid'] == $l['id']) ? ' selected="selected"' : '') . '>' . $l['full_name'] . '</option>';
        }
        $html .= '</select></div>';
        $html .= '</div>';

        return $html;
    }

    function nv_block_config_contact_topbar_submit($module, $lang_block)
    {
        global $nv_Request;
        $return = array();
        $return['error'] = array();
        $return['config'] = array();
        $return['config']['departmentid'] = $nv_Request->get_int('config_departmentid', 'post', 0);
        return $return;
    }

    function nv_contact_topbar($block_config)
    {
        global $global_config, $site_mods, $nv_Cache, $module_name, $lang_module;

        $module = $block_config['module'];
        $module_data = $site_mods[$module]['module_data'];
        $module_file = $site_mods[$module]['module_file'];

        if ($module != $module_name) {
            $lang_temp = $lang_module;
            if (file_exists(NV_ROOTDIR . '/modules/' . $module_file . '/language/' . $global_config['site_lang'] . '.php')) {
                require NV_ROOTDIR . '/modules/' . $module_file . '/language/' . $global_config['site_lang'] . '.php';
            }
            $lang_module = $lang_module + $lang_temp;
            unset($lang_temp);
        }

        if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/modules/' . $module_file . '/block.department.tpl')) {
            $block_theme = $global_config['module_theme'];
        } elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/modules/' . $module_file . '/block.department.tpl')) {
            $block_theme = $global_config['site_theme'];
        } else {
            $block_theme = 'default';
        }

        //Danh sach cac bo phan
        $sql = 'SELECT phone, email FROM ' . NV_PREFIXLANG . '_' . $module_data . '_department WHERE act=1 AND id=' . $block_config['departmentid'];
        $array_department = $nv_Cache->db($sql, 'id', $module);

        $xtpl = new XTemplate('block.contact_topbar.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/modules/' . $module_file);
        $xtpl->assign('LANG', $lang_module);

        if (!empty($array_department)) {
            foreach ($array_department as $value => $row) {
                if (!empty($row)) {
                    // $row['emailhref'] = NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=contact&amp;' . NV_OP_VARIABLE . '=' . $row['alias'];

                    $xtpl->assign('DEPARTMENT', $row);

                    if (!empty($row['phone'])) {
                        $nums = array_map('trim', explode('|', nv_unhtmlspecialchars($row['phone'])));
                        foreach ($nums as $k => $num) {
                            unset($m);
                            if (preg_match("/^(.*)\s*\[([0-9\+\.\,\;\*\#]+)\]$/", $num, $m)) {
                                $phone = array(
                                    'number' => nv_htmlspecialchars($m[1]),
                                    'href' => $m[2]
                                );
                                $xtpl->assign('PHONE', $phone);
                                $xtpl->parse('main.phone.item.href');
                                $xtpl->parse('main.phone.item.href2');
                            } else {
                                $num = preg_replace("/\[[^\]]*\]/", '', $num);
                                $phone = array(
                                    'number' => nv_htmlspecialchars($num)
                                );
                                $xtpl->assign('PHONE', $phone);
                            }
                            if ($k) {
                                $xtpl->parse('main.phone.item.comma');
                            }
                            $xtpl->parse('main.phone.item');
                        }

                        $xtpl->parse('main.phone');
                    }

                    // if (!empty($row['email'])) {
                    //     $emails = array_map('trim', explode(',', $row['email']));

                    //     foreach ($emails as $k => $email) {
                    //         $xtpl->assign('EMAIL', $email);
                    //         if ($k) {
                    //             $xtpl->parse('main.email.item.comma');
                    //         }
                    //         $xtpl->parse('main.email.item');
                    //     }

                    //     $xtpl->parse('main.email');
                    // }
                } else {
                    return '';
                }
            }
        }

        $xtpl->parse('main');
        return $xtpl->text('main');
    }
}

if (defined('NV_SYSTEM')) {
    global $site_mods, $module_name, $global_array_cat, $module_array_cat;
    $module = $block_config['module'];
    if (isset($site_mods[$module])) {
        $content = nv_contact_topbar($block_config);
    }
}
