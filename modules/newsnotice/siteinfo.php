<?php

/**
 * @Project NUKEVIET 4.x
 * @Author mynukeviet (contact@mynukeviet.com)
 * @Copyright (C) 2014 mynukeviet. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate 2-10-2010 18:49
 */
if (!defined('NV_IS_FILE_SITEINFO'))
    exit('Stop!!!');

$lang_siteinfo = nv_get_lang_module($mod);
/*
// Tong so bai viet 
$number = $db->query( "SELECT COUNT(*) as number FROM " . NV_PREFIXLANG . "_" . $mod_data . "_rows where status= 1 AND publtime < " . NV_CURRENTTIME . " AND (exptime=0 OR exptime>" . NV_CURRENTTIME . ")" )->fetchColumn();
if ( $number > 0 )
{
    $siteinfo[] = array( 
        'key' => $lang_siteinfo['siteinfo_publtime'], 'value' => $number 
    );
}
*/