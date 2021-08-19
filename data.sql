-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th8 19, 2021 lúc 09:23 AM
-- Phiên bản máy phục vụ: 5.7.26
-- Phiên bản PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Cơ sở dữ liệu: `vuj_haiaustore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_authors`
--

CREATE TABLE `vuj_authors` (
  `admin_id` int(11) UNSIGNED NOT NULL,
  `editor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `lev` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `files_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'siteinfo',
  `admin_theme` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `edittime` int(11) NOT NULL DEFAULT '0',
  `is_suspend` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `susp_reason` text COLLATE utf8mb4_unicode_ci,
  `pre_check_num` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pre_last_login` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `pre_last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pre_last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `check_num` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_authors`
--

INSERT INTO `vuj_authors` (`admin_id`, `editor`, `lev`, `files_level`, `position`, `main_module`, `admin_theme`, `addtime`, `edittime`, `is_suspend`, `susp_reason`, `pre_check_num`, `pre_last_login`, `pre_last_ip`, `pre_last_agent`, `check_num`, `last_login`, `last_ip`, `last_agent`) VALUES
(1, 'ckeditor', 1, 'adobe,archives,audio,documents,flash,images,real,video|1|1|1', 'Administrator', 'siteinfo', '', 0, 0, 0, '', '', 0, '', '', '3872ac9b940d1319c23660763bf2ca88', 1629083789, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_authors_api_credential`
--

CREATE TABLE `vuj_authors_api_credential` (
  `admin_id` int(11) UNSIGNED NOT NULL,
  `credential_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `credential_ident` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `credential_secret` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `credential_ips` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `api_roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `edittime` int(11) NOT NULL DEFAULT '0',
  `last_access` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Bảng lưu key API của quản trị';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_authors_api_role`
--

CREATE TABLE `vuj_authors_api_role` (
  `role_id` smallint(4) NOT NULL,
  `role_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `role_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `edittime` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Bảng lưu quyền truy cập API';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_authors_config`
--

CREATE TABLE `vuj_authors_config` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `keyname` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mask` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `begintime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `endtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_authors_module`
--

CREATE TABLE `vuj_authors_module` (
  `mid` mediumint(8) NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) NOT NULL DEFAULT '0',
  `act_1` tinyint(4) NOT NULL DEFAULT '0',
  `act_2` tinyint(4) NOT NULL DEFAULT '1',
  `act_3` tinyint(4) NOT NULL DEFAULT '1',
  `checksum` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_authors_module`
--

INSERT INTO `vuj_authors_module` (`mid`, `module`, `lang_key`, `weight`, `act_1`, `act_2`, `act_3`, `checksum`) VALUES
(1, 'siteinfo', 'mod_siteinfo', 1, 1, 1, 1, 'c08155d1415fc9aaa98194840c58d8e6'),
(2, 'authors', 'mod_authors', 2, 1, 1, 1, '7a40ce1862f1f6a87954e7d7ad2fbc44'),
(3, 'settings', 'mod_settings', 3, 1, 1, 0, 'f7ddbbf071dc9ceeb7fa9503a7577966'),
(4, 'database', 'mod_database', 4, 1, 0, 0, 'a9980bd5e6824206d5f6c202d12ce248'),
(5, 'webtools', 'mod_webtools', 5, 1, 1, 0, '9ff9824eb06498386e0db48ab2c11dad'),
(6, 'seotools', 'mod_seotools', 6, 1, 1, 0, '00b3f3583471eb92afe4673a6430c90c'),
(7, 'language', 'mod_language', 7, 1, 1, 0, 'f6a5445789f60da9b9b6c0d84704d1d8'),
(8, 'modules', 'mod_modules', 8, 1, 1, 0, '27c843fe4c6e7aa681a1380708b8a7e2'),
(9, 'themes', 'mod_themes', 9, 1, 1, 0, '9cd602622bdcf707824e3d8ac17d4f66'),
(10, 'extensions', 'mod_extensions', 10, 1, 0, 0, '8fa5b11bf1beb1de7707455e5c4d792c'),
(11, 'upload', 'mod_upload', 11, 1, 1, 1, '12e73ad5254ed34764c1d5820565152b');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_authors_oauth`
--

CREATE TABLE `vuj_authors_oauth` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `admin_id` int(11) UNSIGNED NOT NULL COMMENT 'ID của quản trị',
  `oauth_server` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Eg: facebook, google...',
  `oauth_uid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID duy nhất ứng với server',
  `oauth_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Email',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Bảng lưu xác thực 2 bước từ oauth của admin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_banners_click`
--

CREATE TABLE `vuj_banners_click` (
  `id` int(11) UNSIGNED NOT NULL,
  `bid` mediumint(8) NOT NULL DEFAULT '0',
  `click_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `click_day` int(2) NOT NULL,
  `click_ip` varchar(46) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_country` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_banners_plans`
--

CREATE TABLE `vuj_banners_plans` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `blang` char(2) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `form` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `height` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `require_image` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `uploadtype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uploadgroup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `exp_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_banners_plans`
--

INSERT INTO `vuj_banners_plans` (`id`, `blang`, `title`, `description`, `form`, `width`, `height`, `act`, `require_image`, `uploadtype`, `uploadgroup`, `exp_time`) VALUES
(1, '', 'Mid-page ad block', '', 'sequential', 575, 72, 1, 1, 'images', '', 0),
(2, '', 'Left-column ad block', '', 'sequential', 212, 800, 1, 1, 'images', '', 0),
(3, '', 'Right-column ad block', '', 'random', 250, 500, 1, 1, 'images', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_banners_rows`
--

CREATE TABLE `vuj_banners_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `clid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_ext` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_mime` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` int(4) UNSIGNED NOT NULL DEFAULT '0',
  `height` int(4) UNSIGNED NOT NULL DEFAULT '0',
  `file_alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageforswf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `click_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_blank',
  `bannerhtml` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `publ_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exp_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `hits_total` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_banners_rows`
--

INSERT INTO `vuj_banners_rows` (`id`, `title`, `pid`, `clid`, `file_name`, `file_ext`, `file_mime`, `width`, `height`, `file_alt`, `imageforswf`, `click_url`, `target`, `bannerhtml`, `add_time`, `publ_time`, `exp_time`, `hits_total`, `act`, `weight`) VALUES
(1, 'Mid-page advertisement', 1, 1, 'webnhanh.jpg', 'png', 'image/jpeg', 575, 72, '', '', 'http://webnhanh.vn', '_blank', '', 1626587642, 1626587642, 0, 0, 1, 1),
(2, 'Left-column advertisement', 2, 1, 'vinades.jpg', 'jpg', 'image/jpeg', 212, 400, '', '', 'http://vinades.vn', '_blank', '', 1626587642, 1626587642, 0, 0, 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_config`
--

CREATE TABLE `vuj_config` (
  `lang` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sys',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'global',
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config_value` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_config`
--

INSERT INTO `vuj_config` (`lang`, `module`, `config_name`, `config_value`) VALUES
('sys', 'site', 'admin_theme', 'admin_default'),
('sys', 'site', 'date_pattern', 'd/m/Y'),
('sys', 'site', 'time_pattern', 'H:i'),
('sys', 'site', 'online_upd', '1'),
('sys', 'site', 'statistic', '1'),
('sys', 'site', 'site_phone', '0123456789'),
('sys', 'site', 'mailer_mode', 'mail'),
('sys', 'site', 'smtp_host', 'smtp.gmail.com'),
('sys', 'site', 'smtp_ssl', '1'),
('sys', 'site', 'smtp_port', '465'),
('sys', 'site', 'verify_peer_ssl', '1'),
('sys', 'site', 'verify_peer_name_ssl', '1'),
('sys', 'site', 'smtp_username', 'user@gmail.com'),
('sys', 'site', 'smtp_password', ''),
('sys', 'site', 'sender_name', ''),
('sys', 'site', 'sender_email', ''),
('sys', 'site', 'reply_name', ''),
('sys', 'site', 'reply_email', ''),
('sys', 'site', 'force_sender', '0'),
('sys', 'site', 'force_reply', '0'),
('sys', 'site', 'notify_email_error', '0'),
('sys', 'site', 'googleAnalyticsID', ''),
('sys', 'site', 'googleAnalyticsSetDomainName', '0'),
('sys', 'site', 'googleAnalyticsMethod', 'classic'),
('sys', 'site', 'googleAnalytics4ID', ''),
('sys', 'site', 'searchEngineUniqueID', ''),
('sys', 'site', 'zaloOfficialAccountID', ''),
('sys', 'site', 'metaTagsOgp', '1'),
('sys', 'site', 'pageTitleMode', 'pagetitle'),
('sys', 'site', 'description_length', '170'),
('sys', 'site', 'nv_unickmin', '4'),
('sys', 'site', 'nv_unickmax', '20'),
('sys', 'site', 'nv_upassmin', '8'),
('sys', 'site', 'nv_upassmax', '32'),
('sys', 'site', 'dir_forum', ''),
('sys', 'site', 'nv_unick_type', '4'),
('sys', 'site', 'nv_upass_type', '3'),
('sys', 'site', 'allowmailchange', '1'),
('sys', 'site', 'allowuserpublic', '1'),
('sys', 'site', 'allowquestion', '0'),
('sys', 'site', 'allowloginchange', '0'),
('sys', 'site', 'allowuserlogin', '1'),
('sys', 'site', 'allowuserloginmulti', '0'),
('sys', 'site', 'allowuserreg', '2'),
('sys', 'site', 'is_user_forum', '0'),
('sys', 'site', 'openid_servers', ''),
('sys', 'site', 'openid_processing', '0'),
('sys', 'site', 'user_check_pass_time', '1800'),
('sys', 'site', 'auto_login_after_reg', '1'),
('sys', 'site', 'whoviewuser', '2'),
('sys', 'site', 'ssl_https', '0'),
('sys', 'site', 'facebook_client_id', ''),
('sys', 'site', 'facebook_client_secret', ''),
('sys', 'site', 'google_client_id', ''),
('sys', 'site', 'google_client_secret', ''),
('sys', 'site', 'referer_blocker', '1'),
('sys', 'site', 'private_site', '0'),
('sys', 'site', 'max_user_admin', '0'),
('sys', 'site', 'max_user_number', '0'),
('sys', 'site', 'ucaptcha_area', 'r,m,p'),
('sys', 'site', 'ucaptcha_type', 'captcha'),
('sys', 'site', 'dkim_included', 'sendmail,mail'),
('sys', 'site', 'smime_included', 'sendmail,mail'),
('sys', 'site', 'nv_csp', 'script-src &#039;self&#039; *.google.com *.google-analytics.com *.googletagmanager.com *.gstatic.com *.facebook.com *.facebook.net *.twitter.com *.zalo.me *.zaloapp.com &#039;unsafe-inline&#039; &#039;unsafe-eval&#039;;style-src &#039;self&#039; *.google.com &#039;unsafe-inline&#039;;frame-src &#039;self&#039; *.google.com *.youtube.com *.facebook.com *.facebook.net *.twitter.com *.zalo.me;base-uri &#039;self&#039;;'),
('sys', 'site', 'nv_csp_act', '1'),
('sys', 'site', 'nv_rp', 'no-referrer-when-downgrade, strict-origin-when-cross-origin'),
('sys', 'site', 'nv_rp_act', '1'),
('sys', 'define', 'nv_gfx_num', '6'),
('sys', 'global', 'closed_site', '0'),
('sys', 'global', 'site_reopening_time', '0'),
('sys', 'global', 'notification_active', '1'),
('sys', 'global', 'notification_autodel', '15'),
('sys', 'global', 'site_keywords', 'NukeViet, portal, mysql, php'),
('sys', 'global', 'block_admin_ip', '0'),
('sys', 'global', 'admfirewall', '0'),
('sys', 'global', 'dump_autobackup', '1'),
('sys', 'global', 'dump_backup_ext', 'gz'),
('sys', 'global', 'dump_backup_day', '30'),
('sys', 'global', 'file_allowed_ext', 'adobe,archives,audio,documents,flash,images,real,video'),
('sys', 'global', 'forbid_extensions', 'php,php3,php4,php5,phtml,inc'),
('sys', 'global', 'forbid_mimes', ''),
('sys', 'global', 'nv_max_size', '8388608'),
('sys', 'global', 'nv_overflow_size', '0'),
('sys', 'global', 'upload_checking_mode', 'strong'),
('sys', 'global', 'upload_alt_require', '1'),
('sys', 'global', 'upload_auto_alt', '1'),
('sys', 'global', 'upload_chunk_size', '0'),
('sys', 'global', 'useactivate', '2'),
('sys', 'global', 'allow_sitelangs', 'vi'),
('sys', 'global', 'read_type', '0'),
('sys', 'global', 'rewrite_enable', '1'),
('sys', 'global', 'rewrite_optional', '1'),
('sys', 'global', 'rewrite_endurl', '/'),
('sys', 'global', 'rewrite_exturl', '.html'),
('sys', 'global', 'rewrite_op_mod', 'page'),
('sys', 'global', 'autocheckupdate', '1'),
('sys', 'global', 'autoupdatetime', '24'),
('sys', 'global', 'gzip_method', '1'),
('sys', 'global', 'authors_detail_main', '0'),
('sys', 'global', 'spadmin_add_admin', '1'),
('sys', 'global', 'timestamp', '1626589229'),
('sys', 'global', 'version', '4.5.00'),
('sys', 'global', 'cookie_httponly', '1'),
('sys', 'global', 'admin_check_pass_time', '1800'),
('sys', 'global', 'cookie_secure', '0'),
('sys', 'global', 'cookie_SameSite', 'Lax'),
('sys', 'global', 'is_flood_blocker', '1'),
('sys', 'global', 'max_requests_60', '40'),
('sys', 'global', 'max_requests_300', '150'),
('sys', 'global', 'is_login_blocker', '1'),
('sys', 'global', 'login_number_tracking', '5'),
('sys', 'global', 'login_time_tracking', '5'),
('sys', 'global', 'login_time_ban', '30'),
('sys', 'global', 'nv_display_errors_list', '1'),
('sys', 'global', 'display_errors_list', '1'),
('sys', 'global', 'nv_auto_resize', '1'),
('sys', 'global', 'dump_interval', '1'),
('sys', 'global', 'nv_static_url', ''),
('sys', 'global', 'cdn_url', ''),
('sys', 'global', 'two_step_verification', '0'),
('sys', 'global', 'admin_2step_opt', 'code'),
('sys', 'global', 'admin_2step_default', 'code'),
('sys', 'global', 'recaptcha_sitekey', ''),
('sys', 'global', 'recaptcha_secretkey', ''),
('sys', 'global', 'recaptcha_type', 'image'),
('sys', 'global', 'recaptcha_ver', '2'),
('sys', 'global', 'users_special', '0'),
('sys', 'global', 'crosssite_restrict', '1'),
('sys', 'global', 'crosssite_valid_domains', ''),
('sys', 'global', 'crosssite_valid_ips', ''),
('sys', 'global', 'crossadmin_restrict', '1'),
('sys', 'global', 'crossadmin_valid_domains', ''),
('sys', 'global', 'crossadmin_valid_ips', ''),
('sys', 'global', 'domains_whitelist', '[\"youtube.com\",\"www.youtube.com\",\"google.com\",\"www.google.com\",\"drive.google.com\",\"docs.google.com\"]'),
('sys', 'global', 'domains_restrict', '1'),
('sys', 'global', 'remote_api_access', '0'),
('sys', 'global', 'remote_api_log', '1'),
('sys', 'global', 'allow_null_origin', '0'),
('sys', 'global', 'ip_allow_null_origin', ''),
('sys', 'global', 'cookie_notice_popup', '1'),
('sys', 'define', 'nv_gfx_width', '150'),
('sys', 'define', 'nv_gfx_height', '40'),
('sys', 'define', 'nv_max_width', '2000'),
('sys', 'define', 'nv_max_height', '2000'),
('sys', 'define', 'nv_mobile_mode_img', '480'),
('sys', 'define', 'nv_live_cookie_time', '31104000'),
('sys', 'define', 'nv_live_session_time', '0'),
('sys', 'define', 'nv_anti_iframe', '1'),
('sys', 'define', 'nv_anti_agent', '0'),
('sys', 'define', 'nv_allowed_html_tags', 'embed, object, param, a, b, blockquote, br, caption, col, colgroup, div, em, h1, h2, h3, h4, h5, h6, hr, i, img, li, p, span, strong, s, sub, sup, table, tbody, td, th, tr, u, ul, ol, iframe, figure, figcaption, video, audio, source, track, code, pre'),
('sys', 'define', 'nv_debug', '1'),
('vi', 'global', 'site_domain', ''),
('vi', 'global', 'site_name', 'Hải Âu Store'),
('vi', 'global', 'site_logo', 'uploads/logo_op.png'),
('vi', 'global', 'site_banner', 'uploads/banner.jpeg'),
('vi', 'global', 'site_favicon', ''),
('vi', 'global', 'site_description', 'Chuyên hàng Quảng Châu cao cấp chất lượng số 1 Khánh Hòa.'),
('vi', 'global', 'site_keywords', ''),
('vi', 'global', 'theme_type', 'r'),
('vi', 'global', 'site_theme', 'default'),
('vi', 'global', 'preview_theme', ''),
('vi', 'global', 'user_allowed_theme', ''),
('vi', 'global', 'mobile_theme', ''),
('vi', 'global', 'site_home_module', 'page'),
('vi', 'global', 'switch_mobi_des', '0'),
('vi', 'global', 'upload_logo', ''),
('vi', 'global', 'upload_logo_pos', 'bottomRight'),
('vi', 'global', 'autologosize1', '50'),
('vi', 'global', 'autologosize2', '40'),
('vi', 'global', 'autologosize3', '30'),
('vi', 'global', 'autologomod', ''),
('vi', 'global', 'name_show', '0'),
('vi', 'global', 'cronjobs_next_time', '1629089849'),
('vi', 'global', 'disable_site_content', 'Vì lý do kỹ thuật website tạm ngưng hoạt động. Thành thật xin lỗi các bạn vì sự bất tiện này!'),
('vi', 'seotools', 'prcservice', ''),
('vi', 'news', 'activecomm', '1'),
('vi', 'news', 'view_comm', '6'),
('vi', 'news', 'setcomm', '4'),
('vi', 'news', 'allowed_comm', '-1'),
('vi', 'news', 'auto_postcomm', '1'),
('vi', 'news', 'instant_articles_auto', '1'),
('vi', 'news', 'instant_articles_gettime', '120'),
('vi', 'news', 'instant_articles_livetime', '60'),
('vi', 'news', 'instant_articles_template', 'default'),
('vi', 'news', 'instant_articles_active', '0'),
('vi', 'news', 'elas_index', ''),
('vi', 'news', 'elas_port', '9200'),
('vi', 'news', 'elas_host', ''),
('vi', 'news', 'elas_use', '0'),
('vi', 'news', 'identify_cat_change', '0'),
('vi', 'news', 'order_articles', '0'),
('vi', 'news', 'htmlhometext', '0'),
('vi', 'news', 'imgposition', '2'),
('vi', 'news', 'structure_upload', 'Ym'),
('vi', 'news', 'copy_news', '0'),
('vi', 'news', 'keywords_tag', '1'),
('vi', 'news', 'tags_remind', '1'),
('vi', 'news', 'auto_tags', '0'),
('vi', 'news', 'tags_alias', '1'),
('vi', 'news', 'alias_lower', '1'),
('vi', 'news', 'socialbutton', 'facebook,twitter'),
('vi', 'news', 'facebookappid', ''),
('vi', 'news', 'allowed_rating_point', '1'),
('vi', 'news', 'allowed_rating', '1'),
('vi', 'news', 'show_no_image', ''),
('vi', 'news', 'config_source', '0'),
('vi', 'news', 'timecheckstatus', '0'),
('vi', 'news', 'showhometext', '1'),
('vi', 'news', 'tooltip_length', '150'),
('vi', 'news', 'tooltip_position', 'bottom'),
('vi', 'news', 'showtooltip', '0'),
('vi', 'news', 'copyright', ''),
('vi', 'news', 'imagefull', '1000'),
('vi', 'news', 'blockheight', '100'),
('vi', 'news', 'blockwidth', '100'),
('vi', 'news', 'homeheight', '320'),
('vi', 'news', 'homewidth', '320'),
('vi', 'news', 'st_links', '5'),
('vi', 'news', 'per_page', '12'),
('vi', 'news', 'mobile_indexfile', 'viewcat_grid_new'),
('vi', 'news', 'indexfile', 'viewcat_grid_new'),
('vi', 'contact', 'bodytext', 'Để không ngừng nâng cao chất lượng dịch vụ và đáp ứng tốt hơn nữa các yêu cầu của Quý khách, chúng tôi mong muốn nhận được các thông tin phản hồi. Nếu Quý khách có bất kỳ thắc mắc hoặc đóng góp nào, xin vui lòng liên hệ với chúng tôi theo thông tin dưới đây. Chúng tôi sẽ phản hồi lại Quý khách trong thời gian sớm nhất.'),
('vi', 'contact', 'sendcopymode', '0'),
('vi', 'contact', 'captcha_type', 'captcha'),
('sys', 'banners', 'captcha_type', 'captcha'),
('vi', 'page', 'auto_postcomm', '1'),
('vi', 'page', 'allowed_comm', '-1'),
('vi', 'page', 'view_comm', '6'),
('vi', 'page', 'setcomm', '4'),
('vi', 'page', 'activecomm', '0'),
('vi', 'page', 'emailcomm', '0'),
('vi', 'page', 'adminscomm', ''),
('vi', 'page', 'sortcomm', '0'),
('vi', 'page', 'captcha_area_comm', '1'),
('vi', 'page', 'captcha_type_comm', 'captcha'),
('vi', 'page', 'perpagecomm', '5'),
('vi', 'page', 'timeoutcomm', '360'),
('vi', 'page', 'allowattachcomm', '0'),
('vi', 'page', 'alloweditorcomm', '0'),
('vi', 'siteterms', 'auto_postcomm', '1'),
('vi', 'siteterms', 'allowed_comm', '-1'),
('vi', 'siteterms', 'view_comm', '6'),
('vi', 'siteterms', 'setcomm', '4'),
('vi', 'siteterms', 'activecomm', '0'),
('vi', 'siteterms', 'emailcomm', '0'),
('vi', 'siteterms', 'adminscomm', ''),
('vi', 'siteterms', 'sortcomm', '0'),
('vi', 'siteterms', 'captcha_area_comm', '1'),
('vi', 'siteterms', 'captcha_type_comm', 'captcha'),
('vi', 'siteterms', 'perpagecomm', '5'),
('vi', 'siteterms', 'timeoutcomm', '360'),
('vi', 'siteterms', 'allowattachcomm', '0'),
('vi', 'siteterms', 'alloweditorcomm', '0'),
('vi', 'news', 'instant_articles_httpauth', '0'),
('vi', 'news', 'instant_articles_username', ''),
('vi', 'news', 'instant_articles_password', ''),
('sys', 'site', 'statistics_timezone', 'Asia/Bangkok'),
('sys', 'site', 'site_email', 'im@haiaustore.com'),
('sys', 'global', 'error_set_logs', '1'),
('sys', 'global', 'error_send_email', 'im@vuji.tech'),
('sys', 'global', 'site_lang', 'vi'),
('sys', 'global', 'my_domains', 'haiaustore.io'),
('sys', 'global', 'cookie_prefix', 'nv4'),
('sys', 'global', 'session_prefix', 'nv4s_b8zFTc'),
('sys', 'global', 'site_timezone', 'byCountry'),
('sys', 'global', 'proxy_blocker', '0'),
('sys', 'global', 'str_referer_blocker', '0'),
('sys', 'global', 'lang_multi', '0'),
('sys', 'global', 'lang_geo', '0'),
('sys', 'global', 'ftp_server', 'localhost'),
('sys', 'global', 'ftp_port', '21'),
('sys', 'global', 'ftp_user_name', ''),
('sys', 'global', 'ftp_user_pass', 'cDnry1gDdy_w2Lpu01dGqg,,'),
('sys', 'global', 'ftp_path', '/'),
('sys', 'global', 'ftp_check_login', '0'),
('vi', 'shops', 'image_size', '300x300'),
('vi', 'shops', 'home_data', 'all'),
('vi', 'shops', 'home_view', 'viewgrid'),
('vi', 'shops', 'per_page', '18'),
('vi', 'shops', 'per_row', '3'),
('vi', 'shops', 'money_unit', 'VND'),
('vi', 'shops', 'weight_unit', 'g'),
('vi', 'shops', 'post_auto_member', '0'),
('vi', 'shops', 'auto_check_order', '1'),
('vi', 'shops', 'format_order_id', 'HASI%06s'),
('vi', 'shops', 'format_code_id', 'HASP%06s'),
('vi', 'shops', 'facebookappid', ''),
('vi', 'shops', 'active_guest_order', '1'),
('vi', 'shops', 'active_showhomtext', '1'),
('vi', 'shops', 'active_order', '1'),
('vi', 'shops', 'active_order_popup', '0'),
('vi', 'shops', 'active_order_non_detail', '1'),
('vi', 'shops', 'active_price', '1'),
('vi', 'shops', 'active_order_number', '0'),
('vi', 'shops', 'order_day', '0'),
('vi', 'shops', 'order_nexttime', '0'),
('vi', 'shops', 'active_payment', '0'),
('vi', 'shops', 'groups_price', '3'),
('vi', 'shops', 'active_tooltip', '0'),
('vi', 'shops', 'timecheckstatus', '0'),
('vi', 'shops', 'show_product_code', '1'),
('vi', 'shops', 'show_compare', '0'),
('vi', 'shops', 'show_displays', '1'),
('vi', 'shops', 'use_shipping', '1'),
('vi', 'shops', 'use_coupons', '1'),
('vi', 'shops', 'active_wishlist', '0'),
('vi', 'shops', 'active_gift', '0'),
('vi', 'shops', 'active_warehouse', '1'),
('vi', 'shops', 'tags_alias', '1'),
('vi', 'shops', 'auto_tags', '1'),
('vi', 'shops', 'tags_remind', '0'),
('vi', 'shops', 'point_active', '0'),
('vi', 'shops', 'point_conversion', '0'),
('vi', 'shops', 'point_new_order', '0'),
('vi', 'shops', 'money_to_point', '0'),
('vi', 'shops', 'review_active', '0'),
('vi', 'shops', 'review_check', '1'),
('vi', 'shops', 'review_captcha', '1'),
('vi', 'shops', 'group_price', '0\r\n100000\r\n200000\r\n500000\r\n1000000\r\n2000000\r\n5000000'),
('vi', 'shops', 'groups_notify', '2,3'),
('vi', 'shops', 'template_active', '0'),
('vi', 'shops', 'download_active', '0'),
('vi', 'shops', 'download_groups', '6'),
('vi', 'shops', 'saleprice_active', '0'),
('vi', 'shops', 'sortdefault', '0'),
('vi', 'shops', 'alias_lower', '1'),
('vi', 'shops', 'auto_postcomm', '1'),
('vi', 'shops', 'allowed_comm', '-1'),
('vi', 'shops', 'view_comm', '6'),
('vi', 'shops', 'setcomm', '4'),
('vi', 'shops', 'activecomm', '1'),
('vi', 'shops', 'emailcomm', '0'),
('vi', 'shops', 'adminscomm', ''),
('vi', 'shops', 'sortcomm', '0'),
('vi', 'shops', 'captcha', '1'),
('vi', 'shops', 'allowattachcomm', '0'),
('vi', 'shops', 'alloweditorcomm', '0'),
('vi', 'slider', 'next_execute', '0'),
('vi', 'news', 'emailcomm', '0'),
('vi', 'news', 'adminscomm', ''),
('vi', 'news', 'sortcomm', '0'),
('vi', 'news', 'captcha_area_comm', '1'),
('vi', 'news', 'captcha_type_comm', 'captcha'),
('vi', 'news', 'perpagecomm', '5'),
('vi', 'news', 'timeoutcomm', '360'),
('vi', 'news', 'allowattachcomm', '0'),
('vi', 'news', 'alloweditorcomm', '0'),
('vi', 'news', 'frontend_edit_alias', '0'),
('vi', 'news', 'frontend_edit_layout', '1'),
('vi', 'news', 'ucaptcha_type', 'captcha'),
('vi', 'news', 'scaptcha_type', 'captcha');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_cookies`
--

CREATE TABLE `vuj_cookies` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) NOT NULL DEFAULT '0',
  `secure` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_counter`
--

CREATE TABLE `vuj_counter` (
  `c_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_val` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_update` int(11) NOT NULL DEFAULT '0',
  `c_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `vi_count` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_counter`
--

INSERT INTO `vuj_counter` (`c_type`, `c_val`, `last_update`, `c_count`, `vi_count`) VALUES
('c_time', 'start', 0, 0, 0),
('c_time', 'last', 0, 1629106670, 0),
('total', 'hits', 1629106670, 28, 28),
('year', '2021', 1629106670, 28, 28),
('year', '2022', 0, 0, 0),
('year', '2023', 0, 0, 0),
('year', '2024', 0, 0, 0),
('year', '2025', 0, 0, 0),
('year', '2026', 0, 0, 0),
('year', '2027', 0, 0, 0),
('year', '2028', 0, 0, 0),
('year', '2029', 0, 0, 0),
('month', 'Jan', 0, 0, 0),
('month', 'Feb', 0, 0, 0),
('month', 'Mar', 0, 0, 0),
('month', 'Apr', 0, 0, 0),
('month', 'May', 0, 0, 0),
('month', 'Jun', 0, 0, 0),
('month', 'Jul', 1626657456, 20, 20),
('month', 'Aug', 1629106670, 8, 8),
('month', 'Sep', 0, 0, 0),
('month', 'Oct', 0, 0, 0),
('month', 'Nov', 0, 0, 0),
('month', 'Dec', 0, 0, 0),
('day', '01', 0, 0, 0),
('day', '02', 0, 0, 0),
('day', '03', 1627974797, 1, 1),
('day', '04', 0, 0, 0),
('day', '05', 0, 0, 0),
('day', '06', 0, 0, 0),
('day', '07', 0, 0, 0),
('day', '08', 0, 0, 0),
('day', '09', 0, 0, 0),
('day', '10', 0, 0, 0),
('day', '11', 0, 0, 0),
('day', '12', 0, 0, 0),
('day', '13', 0, 0, 0),
('day', '14', 0, 0, 0),
('day', '15', 0, 0, 0),
('day', '16', 1629106670, 7, 7),
('day', '17', 0, 0, 0),
('day', '18', 1626610991, 0, 0),
('day', '19', 1626657456, 0, 0),
('day', '20', 0, 0, 0),
('day', '21', 0, 0, 0),
('day', '22', 0, 0, 0),
('day', '23', 0, 0, 0),
('day', '24', 0, 0, 0),
('day', '25', 0, 0, 0),
('day', '26', 0, 0, 0),
('day', '27', 0, 0, 0),
('day', '28', 0, 0, 0),
('day', '29', 0, 0, 0),
('day', '30', 0, 0, 0),
('day', '31', 0, 0, 0),
('dayofweek', 'Sunday', 1626610991, 19, 19),
('dayofweek', 'Monday', 1629106670, 8, 8),
('dayofweek', 'Tuesday', 1627974797, 1, 1),
('dayofweek', 'Wednesday', 0, 0, 0),
('dayofweek', 'Thursday', 0, 0, 0),
('dayofweek', 'Friday', 0, 0, 0),
('dayofweek', 'Saturday', 0, 0, 0),
('hour', '00', 0, 0, 0),
('hour', '01', 0, 0, 0),
('hour', '02', 0, 0, 0),
('hour', '03', 0, 0, 0),
('hour', '04', 0, 0, 0),
('hour', '05', 0, 0, 0),
('hour', '06', 0, 0, 0),
('hour', '07', 0, 0, 0),
('hour', '08', 1626657456, 0, 0),
('hour', '09', 0, 0, 0),
('hour', '10', 1629085860, 3, 3),
('hour', '11', 1629088371, 1, 1),
('hour', '12', 1629092416, 2, 2),
('hour', '13', 1626590572, 0, 0),
('hour', '14', 1627974797, 0, 0),
('hour', '15', 1626598410, 0, 0),
('hour', '16', 1629106670, 1, 1),
('hour', '17', 1626605060, 0, 0),
('hour', '18', 1626609148, 0, 0),
('hour', '19', 1626610991, 0, 0),
('hour', '20', 0, 0, 0),
('hour', '21', 0, 0, 0),
('hour', '22', 0, 0, 0),
('hour', '23', 0, 0, 0),
('bot', 'googlebot', 0, 0, 0),
('bot', 'msnbot', 0, 0, 0),
('bot', 'bingbot', 0, 0, 0),
('bot', 'yahooslurp', 0, 0, 0),
('bot', 'w3cvalidator', 0, 0, 0),
('browser', 'opera', 0, 0, 0),
('browser', 'operamini', 0, 0, 0),
('browser', 'webtv', 0, 0, 0),
('browser', 'explorer', 0, 0, 0),
('browser', 'edge', 0, 0, 0),
('browser', 'pocket', 0, 0, 0),
('browser', 'konqueror', 0, 0, 0),
('browser', 'icab', 0, 0, 0),
('browser', 'omniweb', 0, 0, 0),
('browser', 'firebird', 0, 0, 0),
('browser', 'firefox', 0, 0, 0),
('browser', 'iceweasel', 0, 0, 0),
('browser', 'shiretoko', 0, 0, 0),
('browser', 'mozilla', 0, 0, 0),
('browser', 'amaya', 0, 0, 0),
('browser', 'lynx', 0, 0, 0),
('browser', 'safari', 0, 0, 0),
('browser', 'iphone', 0, 0, 0),
('browser', 'ipod', 0, 0, 0),
('browser', 'ipad', 0, 0, 0),
('browser', 'chrome', 1629106670, 28, 28),
('browser', 'cococ', 0, 0, 0),
('browser', 'android', 0, 0, 0),
('browser', 'googlebot', 0, 0, 0),
('browser', 'yahooslurp', 0, 0, 0),
('browser', 'w3cvalidator', 0, 0, 0),
('browser', 'blackberry', 0, 0, 0),
('browser', 'icecat', 0, 0, 0),
('browser', 'nokias60', 0, 0, 0),
('browser', 'nokia', 0, 0, 0),
('browser', 'msn', 0, 0, 0),
('browser', 'msnbot', 0, 0, 0),
('browser', 'bingbot', 0, 0, 0),
('browser', 'netscape', 0, 0, 0),
('browser', 'galeon', 0, 0, 0),
('browser', 'netpositive', 0, 0, 0),
('browser', 'phoenix', 0, 0, 0),
('browser', 'Mobile', 0, 0, 0),
('browser', 'bots', 0, 0, 0),
('browser', 'Unknown', 0, 0, 0),
('os', 'unknown', 0, 0, 0),
('os', 'win', 0, 0, 0),
('os', 'win10', 0, 0, 0),
('os', 'win8', 0, 0, 0),
('os', 'win7', 0, 0, 0),
('os', 'win2003', 0, 0, 0),
('os', 'winvista', 0, 0, 0),
('os', 'wince', 0, 0, 0),
('os', 'winxp', 0, 0, 0),
('os', 'win2000', 0, 0, 0),
('os', 'apple', 1629106670, 28, 28),
('os', 'linux', 0, 0, 0),
('os', 'os2', 0, 0, 0),
('os', 'beos', 0, 0, 0),
('os', 'iphone', 0, 0, 0),
('os', 'ipod', 0, 0, 0),
('os', 'ipad', 0, 0, 0),
('os', 'blackberry', 0, 0, 0),
('os', 'nokia', 0, 0, 0),
('os', 'freebsd', 0, 0, 0),
('os', 'openbsd', 0, 0, 0),
('os', 'netbsd', 0, 0, 0),
('os', 'sunos', 0, 0, 0),
('os', 'opensolaris', 0, 0, 0),
('os', 'android', 0, 0, 0),
('os', 'irix', 0, 0, 0),
('os', 'palm', 0, 0, 0),
('country', 'AD', 0, 0, 0),
('country', 'AE', 0, 0, 0),
('country', 'AF', 0, 0, 0),
('country', 'AG', 0, 0, 0),
('country', 'AI', 0, 0, 0),
('country', 'AL', 0, 0, 0),
('country', 'AM', 0, 0, 0),
('country', 'AN', 0, 0, 0),
('country', 'AO', 0, 0, 0),
('country', 'AQ', 0, 0, 0),
('country', 'AR', 0, 0, 0),
('country', 'AS', 0, 0, 0),
('country', 'AT', 0, 0, 0),
('country', 'AU', 0, 0, 0),
('country', 'AW', 0, 0, 0),
('country', 'AZ', 0, 0, 0),
('country', 'BA', 0, 0, 0),
('country', 'BB', 0, 0, 0),
('country', 'BD', 0, 0, 0),
('country', 'BE', 0, 0, 0),
('country', 'BF', 0, 0, 0),
('country', 'BG', 0, 0, 0),
('country', 'BH', 0, 0, 0),
('country', 'BI', 0, 0, 0),
('country', 'BJ', 0, 0, 0),
('country', 'BM', 0, 0, 0),
('country', 'BN', 0, 0, 0),
('country', 'BO', 0, 0, 0),
('country', 'BR', 0, 0, 0),
('country', 'BS', 0, 0, 0),
('country', 'BT', 0, 0, 0),
('country', 'BW', 0, 0, 0),
('country', 'BY', 0, 0, 0),
('country', 'BZ', 0, 0, 0),
('country', 'CA', 0, 0, 0),
('country', 'CD', 0, 0, 0),
('country', 'CF', 0, 0, 0),
('country', 'CG', 0, 0, 0),
('country', 'CH', 0, 0, 0),
('country', 'CI', 0, 0, 0),
('country', 'CK', 0, 0, 0),
('country', 'CL', 0, 0, 0),
('country', 'CM', 0, 0, 0),
('country', 'CN', 0, 0, 0),
('country', 'CO', 0, 0, 0),
('country', 'CR', 0, 0, 0),
('country', 'CS', 0, 0, 0),
('country', 'CU', 0, 0, 0),
('country', 'CV', 0, 0, 0),
('country', 'CY', 0, 0, 0),
('country', 'CZ', 0, 0, 0),
('country', 'DE', 0, 0, 0),
('country', 'DJ', 0, 0, 0),
('country', 'DK', 0, 0, 0),
('country', 'DM', 0, 0, 0),
('country', 'DO', 0, 0, 0),
('country', 'DZ', 0, 0, 0),
('country', 'EC', 0, 0, 0),
('country', 'EE', 0, 0, 0),
('country', 'EG', 0, 0, 0),
('country', 'ER', 0, 0, 0),
('country', 'ES', 0, 0, 0),
('country', 'ET', 0, 0, 0),
('country', 'EU', 0, 0, 0),
('country', 'FI', 0, 0, 0),
('country', 'FJ', 0, 0, 0),
('country', 'FK', 0, 0, 0),
('country', 'FM', 0, 0, 0),
('country', 'FO', 0, 0, 0),
('country', 'FR', 0, 0, 0),
('country', 'GA', 0, 0, 0),
('country', 'GB', 0, 0, 0),
('country', 'GD', 0, 0, 0),
('country', 'GE', 0, 0, 0),
('country', 'GF', 0, 0, 0),
('country', 'GH', 0, 0, 0),
('country', 'GI', 0, 0, 0),
('country', 'GL', 0, 0, 0),
('country', 'GM', 0, 0, 0),
('country', 'GN', 0, 0, 0),
('country', 'GP', 0, 0, 0),
('country', 'GQ', 0, 0, 0),
('country', 'GR', 0, 0, 0),
('country', 'GS', 0, 0, 0),
('country', 'GT', 0, 0, 0),
('country', 'GU', 0, 0, 0),
('country', 'GW', 0, 0, 0),
('country', 'GY', 0, 0, 0),
('country', 'HK', 0, 0, 0),
('country', 'HN', 0, 0, 0),
('country', 'HR', 0, 0, 0),
('country', 'HT', 0, 0, 0),
('country', 'HU', 0, 0, 0),
('country', 'ID', 0, 0, 0),
('country', 'IE', 0, 0, 0),
('country', 'IL', 0, 0, 0),
('country', 'IN', 0, 0, 0),
('country', 'IO', 0, 0, 0),
('country', 'IQ', 0, 0, 0),
('country', 'IR', 0, 0, 0),
('country', 'IS', 0, 0, 0),
('country', 'IT', 0, 0, 0),
('country', 'JM', 0, 0, 0),
('country', 'JO', 0, 0, 0),
('country', 'JP', 0, 0, 0),
('country', 'KE', 0, 0, 0),
('country', 'KG', 0, 0, 0),
('country', 'KH', 0, 0, 0),
('country', 'KI', 0, 0, 0),
('country', 'KM', 0, 0, 0),
('country', 'KN', 0, 0, 0),
('country', 'KR', 0, 0, 0),
('country', 'KW', 0, 0, 0),
('country', 'KY', 0, 0, 0),
('country', 'KZ', 0, 0, 0),
('country', 'LA', 0, 0, 0),
('country', 'LB', 0, 0, 0),
('country', 'LC', 0, 0, 0),
('country', 'LI', 0, 0, 0),
('country', 'LK', 0, 0, 0),
('country', 'LR', 0, 0, 0),
('country', 'LS', 0, 0, 0),
('country', 'LT', 0, 0, 0),
('country', 'LU', 0, 0, 0),
('country', 'LV', 0, 0, 0),
('country', 'LY', 0, 0, 0),
('country', 'MA', 0, 0, 0),
('country', 'MC', 0, 0, 0),
('country', 'MD', 0, 0, 0),
('country', 'MG', 0, 0, 0),
('country', 'MH', 0, 0, 0),
('country', 'MK', 0, 0, 0),
('country', 'ML', 0, 0, 0),
('country', 'MM', 0, 0, 0),
('country', 'MN', 0, 0, 0),
('country', 'MO', 0, 0, 0),
('country', 'MP', 0, 0, 0),
('country', 'MQ', 0, 0, 0),
('country', 'MR', 0, 0, 0),
('country', 'MT', 0, 0, 0),
('country', 'MU', 0, 0, 0),
('country', 'MV', 0, 0, 0),
('country', 'MW', 0, 0, 0),
('country', 'MX', 0, 0, 0),
('country', 'MY', 0, 0, 0),
('country', 'MZ', 0, 0, 0),
('country', 'NA', 0, 0, 0),
('country', 'NC', 0, 0, 0),
('country', 'NE', 0, 0, 0),
('country', 'NF', 0, 0, 0),
('country', 'NG', 0, 0, 0),
('country', 'NI', 0, 0, 0),
('country', 'NL', 0, 0, 0),
('country', 'NO', 0, 0, 0),
('country', 'NP', 0, 0, 0),
('country', 'NR', 0, 0, 0),
('country', 'NU', 0, 0, 0),
('country', 'NZ', 0, 0, 0),
('country', 'OM', 0, 0, 0),
('country', 'PA', 0, 0, 0),
('country', 'PE', 0, 0, 0),
('country', 'PF', 0, 0, 0),
('country', 'PG', 0, 0, 0),
('country', 'PH', 0, 0, 0),
('country', 'PK', 0, 0, 0),
('country', 'PL', 0, 0, 0),
('country', 'PR', 0, 0, 0),
('country', 'PS', 0, 0, 0),
('country', 'PT', 0, 0, 0),
('country', 'PW', 0, 0, 0),
('country', 'PY', 0, 0, 0),
('country', 'QA', 0, 0, 0),
('country', 'RE', 0, 0, 0),
('country', 'RO', 0, 0, 0),
('country', 'RU', 0, 0, 0),
('country', 'RW', 0, 0, 0),
('country', 'SA', 0, 0, 0),
('country', 'SB', 0, 0, 0),
('country', 'SC', 0, 0, 0),
('country', 'SD', 0, 0, 0),
('country', 'SE', 0, 0, 0),
('country', 'SG', 0, 0, 0),
('country', 'SI', 0, 0, 0),
('country', 'SK', 0, 0, 0),
('country', 'SL', 0, 0, 0),
('country', 'SM', 0, 0, 0),
('country', 'SN', 0, 0, 0),
('country', 'SO', 0, 0, 0),
('country', 'SR', 0, 0, 0),
('country', 'ST', 0, 0, 0),
('country', 'SV', 0, 0, 0),
('country', 'SY', 0, 0, 0),
('country', 'SZ', 0, 0, 0),
('country', 'TD', 0, 0, 0),
('country', 'TF', 0, 0, 0),
('country', 'TG', 0, 0, 0),
('country', 'TH', 0, 0, 0),
('country', 'TJ', 0, 0, 0),
('country', 'TK', 0, 0, 0),
('country', 'TL', 0, 0, 0),
('country', 'TM', 0, 0, 0),
('country', 'TN', 0, 0, 0),
('country', 'TO', 0, 0, 0),
('country', 'TR', 0, 0, 0),
('country', 'TT', 0, 0, 0),
('country', 'TV', 0, 0, 0),
('country', 'TW', 0, 0, 0),
('country', 'TZ', 0, 0, 0),
('country', 'UA', 0, 0, 0),
('country', 'UG', 0, 0, 0),
('country', 'US', 0, 0, 0),
('country', 'UY', 0, 0, 0),
('country', 'UZ', 0, 0, 0),
('country', 'VA', 0, 0, 0),
('country', 'VC', 0, 0, 0),
('country', 'VE', 0, 0, 0),
('country', 'VG', 0, 0, 0),
('country', 'VI', 0, 0, 0),
('country', 'VN', 0, 0, 0),
('country', 'VU', 0, 0, 0),
('country', 'WS', 0, 0, 0),
('country', 'YE', 0, 0, 0),
('country', 'YT', 0, 0, 0),
('country', 'YU', 0, 0, 0),
('country', 'ZA', 0, 0, 0),
('country', 'ZM', 0, 0, 0),
('country', 'ZW', 0, 0, 0),
('country', 'ZZ', 1629106670, 28, 28),
('country', 'unkown', 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_cronjobs`
--

CREATE TABLE `vuj_cronjobs` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `start_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `inter_val` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `inter_val_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: Lặp lại sau thời điểm bắt đầu thực tế, 1:lặp lại sau thời điểm bắt đầu trong CSDL',
  `run_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `run_func` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `del` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_sys` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `last_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `last_result` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `vi_cron_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_cronjobs`
--

INSERT INTO `vuj_cronjobs` (`id`, `start_time`, `inter_val`, `inter_val_type`, `run_file`, `run_func`, `params`, `del`, `is_sys`, `act`, `last_time`, `last_result`, `vi_cron_name`) VALUES
(1, 1626587642, 5, 0, 'online_expired_del.php', 'cron_online_expired_del', '', 0, 1, 1, 1629089549, 1, 'Xóa các dòng ghi trạng thái online đã cũ trong CSDL'),
(2, 1626587642, 1440, 0, 'dump_autobackup.php', 'cron_dump_autobackup', '', 0, 1, 1, 1629083781, 1, 'Tự động lưu CSDL'),
(3, 1626587642, 60, 0, 'temp_download_destroy.php', 'cron_auto_del_temp_download', '', 0, 1, 1, 1629088372, 1, 'Xóa các file tạm trong thư mục tmp'),
(4, 1626587642, 30, 0, 'ip_logs_destroy.php', 'cron_del_ip_logs', '', 0, 1, 1, 1629088372, 1, 'Xóa IP log files, Xóa các file nhật ký truy cập'),
(5, 1626587642, 1440, 0, 'error_log_destroy.php', 'cron_auto_del_error_log', '', 0, 1, 1, 1629083781, 1, 'Xóa các file error_log quá hạn'),
(6, 1626587642, 360, 0, 'error_log_sendmail.php', 'cron_auto_sendmail_error_log', '', 0, 1, 0, 0, 0, 'Gửi email các thông báo lỗi cho admin'),
(7, 1626587642, 60, 0, 'ref_expired_del.php', 'cron_ref_expired_del', '', 0, 1, 1, 1629088372, 1, 'Xóa các referer quá hạn'),
(8, 1626587642, 60, 0, 'check_version.php', 'cron_auto_check_version', '', 0, 1, 1, 1629088372, 1, 'Kiểm tra phiên bản NukeViet'),
(9, 1626587642, 1440, 0, 'notification_autodel.php', 'cron_notification_autodel', '', 0, 1, 1, 1629083781, 1, 'Xóa thông báo cũ'),
(10, 1626588129, 120, 0, 'nv_newsnotice_auto_sendmail.php', 'cron_newsnotice_send_mail', 'newsnotice, vi_news_rows', 0, 0, 1, 1629083781, 1, 'News notice to stack'),
(11, 1626588129, 130, 0, 'nv_newsnotice_auto_sendmail.php', 'cron_newsnotice_start_send_mail', 'newsnotice, vi_news_rows', 0, 0, 1, 1629083781, 1, 'News notice to mail');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_extension_files`
--

CREATE TABLE `vuj_extension_files` (
  `idfile` mediumint(8) UNSIGNED NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastmodified` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `duplicate` smallint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_ips`
--

CREATE TABLE `vuj_ips` (
  `id` mediumint(8) NOT NULL,
  `type` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `ip` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mask` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `area` tinyint(3) NOT NULL,
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_ips`
--

INSERT INTO `vuj_ips` (`id`, `type`, `ip`, `mask`, `area`, `begintime`, `endtime`, `notice`) VALUES
(1, 1, '::1', 0, 1, 1626587681, 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_language`
--

CREATE TABLE `vuj_language` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `idfile` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `langtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'lang_module',
  `lang_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_language_file`
--

CREATE TABLE `vuj_language_file` (
  `idfile` mediumint(8) UNSIGNED NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_file` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `langtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'lang_module'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_logs`
--

CREATE TABLE `vuj_logs` (
  `id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note_action` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_acess` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `log_time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_logs`
--

INSERT INTO `vuj_logs` (`id`, `lang`, `module_name`, `name_key`, `note_action`, `link_acess`, `userid`, `log_time`) VALUES
(1, 'vi', 'login', '[adminweb] Đăng nhập', ' Client IP:::1', '', 0, 1626587688),
(2, 'vi', 'modules', 'Thiết lập module mới home', '', '', 1, 1626588103),
(3, 'vi', 'modules', 'Sửa module &ldquo;home&rdquo;', '', '', 1, 1626588112),
(4, 'vi', 'modules', 'Thiết lập module mới newsnotice', '', '', 1, 1626588129),
(5, 'vi', 'modules', 'Sửa module &ldquo;newsnotice&rdquo;', '', '', 1, 1626588141),
(6, 'vi', 'modules', 'Thiết lập module mới shops', '', '', 1, 1626588166),
(7, 'vi', 'modules', 'Sửa module &ldquo;shops&rdquo;', '', '', 1, 1626588174),
(8, 'vi', 'modules', 'Thiết lập module mới slider', '', '', 1, 1626588185),
(9, 'vi', 'modules', 'Sửa module &ldquo;slider&rdquo;', '', '', 1, 1626588199),
(10, 'vi', 'modules', 'Thứ tự module: home', '19 -> 1', '', 1, 1626588204),
(11, 'vi', 'modules', 'Thứ tự module: shops', '19 -> 2', '', 1, 1626588209),
(12, 'vi', 'modules', 'Thứ tự module: news', '19 -> 3', '', 1, 1626588223),
(13, 'vi', 'modules', 'Thứ tự module: users', '19 -> 4', '', 1, 1626588233),
(14, 'vi', 'modules', 'Xóa module \"about\"', '', '', 1, 1626588238),
(15, 'vi', 'modules', 'Kích hoạt module \"statistics\"', 'Không', '', 1, 1626588242),
(16, 'vi', 'modules', 'Kích hoạt module \"voting\"', 'Không', '', 1, 1626588244),
(17, 'vi', 'modules', 'Kích hoạt module \"page\"', 'Không', '', 1, 1626588250),
(18, 'vi', 'modules', 'Kích hoạt module \"comment\"', 'Không', '', 1, 1626588252),
(19, 'vi', 'modules', 'Kích hoạt module \"freecontent\"', 'Không', '', 1, 1626588260),
(20, 'vi', 'modules', 'Xóa module \"statistics\"', '', '', 1, 1626588264),
(21, 'vi', 'modules', 'Xóa module \"voting\"', '', '', 1, 1626588267),
(22, 'vi', 'modules', 'Xóa module \"freecontent\"', '', '', 1, 1626588269),
(23, 'vi', 'modules', 'Kích hoạt module \"page\"', 'Có', '', 1, 1626588280),
(24, 'vi', 'modules', 'Sửa module &ldquo;page&rdquo;', '', '', 1, 1626588330),
(25, 'vi', 'modules', 'Xóa module \"home\"', '', '', 1, 1626588337),
(26, 'vi', 'modules', 'Kích hoạt module \"feeds\"', 'Không', '', 1, 1626588346),
(27, 'vi', 'modules', 'Thứ tự module: page', '14 -> 1', '', 1, 1626588364),
(28, 'vi', 'modules', 'Thứ tự module: contact', '14 -> 4', '', 1, 1626588400),
(29, 'vi', 'modules', 'Thứ tự module: banners', '14 -> 5', '', 1, 1626588402),
(30, 'vi', 'modules', 'Thứ tự module: slider', '14 -> 6', '', 1, 1626588409),
(31, 'vi', 'modules', 'Thứ tự module: two-step-verification', '14 -> 7', '', 1, 1626588412),
(32, 'vi', 'modules', 'Thứ tự module: users', '14 -> 9', '', 1, 1626588418),
(33, 'vi', 'modules', 'Thứ tự module: menu', '14 -> 7', '', 1, 1626588437),
(34, 'vi', 'modules', 'Thứ tự module: seek', '14 -> 8', '', 1, 1626588441),
(35, 'vi', 'modules', 'Thứ tự module: users', '14 -> 9', '', 1, 1626588443),
(36, 'vi', 'modules', 'Thứ tự module: siteterms', '14 -> 10', '', 1, 1626588447),
(37, 'vi', 'modules', 'Thứ tự module: newsnotice', '14 -> 7', '', 1, 1626588456),
(38, 'vi', 'extensions', 'log_del_theme', 'theme mobile_default', '', 1, 1626588555),
(39, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1626588693),
(40, 'vi', 'upload', 'Upload file', 'uploads/banner.jpeg', '', 1, 1626588746),
(41, 'vi', 'upload', 'Upload file', 'uploads/logo_op.png', '', 1, 1626588746),
(42, 'vi', 'upload', 'Upload file', 'uploads/logo.png', '', 1, 1626588746),
(43, 'vi', 'users', 'log_edit_user', 'userid 1', '', 1, 1626589112),
(44, 'vi', 'language', 'Xóa ngôn ngữ giao diện', 'fr --> Français', '', 1, 1626589141),
(45, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1626589229),
(46, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1626590522),
(47, 'vi', 'shops', 'log_add_catalog', 'id 1', '', 1, 1626590613),
(48, 'vi', 'shops', 'log_add_catalog', 'id 2', '', 1, 1626590619),
(49, 'vi', 'shops', 'log_add_catalog', 'id 3', '', 1, 1626590627),
(50, 'vi', 'shops', 'log_add_catalog', 'id 4', '', 1, 1626590634),
(51, 'vi', 'shops', 'log_add_catalog', 'id 5', '', 1, 1626590642),
(52, 'vi', 'shops', 'log_add_catalog', 'id 6', '', 1, 1626590654),
(53, 'vi', 'shops', 'log_add_catalog', 'id 7', '', 1, 1626590662),
(54, 'vi', 'shops', 'log_add_catalog', 'id 8', '', 1, 1626590680),
(55, 'vi', 'shops', 'log_add_catalog', 'id 9', '', 1, 1626590688),
(56, 'vi', 'shops', 'log_add_catalog', 'id 10', '', 1, 1626590696),
(57, 'vi', 'shops', 'log_add_catalog', 'id 11', '', 1, 1626590702),
(58, 'vi', 'shops', 'log_add_catalog', 'id 12', '', 1, 1626590716),
(59, 'vi', 'shops', 'log_add_catalog', 'id 13', '', 1, 1626590723),
(60, 'vi', 'shops', 'log_add_catalog', 'id 14', '', 1, 1626590731),
(61, 'vi', 'shops', 'log_add_catalog', 'id 15', '', 1, 1626590746),
(62, 'vi', 'shops', 'log_add_catalog', 'id 16', '', 1, 1626590752),
(63, 'vi', 'shops', 'log_add_catalog', 'id 17', '', 1, 1626590758),
(64, 'vi', 'shops', 'log_add_catalog', 'id 18', '', 1, 1626590766),
(65, 'vi', 'shops', 'log_add_catalog', 'id 19', '', 1, 1626590773),
(66, 'vi', 'shops', 'log_add_catalog', 'id 20', '', 1, 1626590780),
(67, 'vi', 'shops', 'log_add_catalog', 'id 21', '', 1, 1626590795),
(68, 'vi', 'shops', 'log_add_catalog', 'id 22', '', 1, 1626590802),
(69, 'vi', 'shops', 'log_add_catalog', 'id 23', '', 1, 1626590809),
(70, 'vi', 'shops', 'log_add_group', 'id 1', '', 1, 1626590893),
(71, 'vi', 'shops', 'log_add_group', 'id 2', '', 1, 1626590908),
(72, 'vi', 'shops', 'log_add_group', 'id 3', '', 1, 1626590919),
(73, 'vi', 'shops', 'log_add_group', 'id 4', '', 1, 1626590954),
(74, 'vi', 'shops', 'log_add_group', 'id 5', '', 1, 1626590961),
(75, 'vi', 'shops', 'log_add_group', 'id 6', '', 1, 1626590968),
(76, 'vi', 'shops', 'log_add_group', 'id 7', '', 1, 1626590974),
(77, 'vi', 'shops', 'log_add_group', 'id 8', '', 1, 1626590980),
(78, 'vi', 'shops', 'log_add_group', 'id 9', '', 1, 1626590985),
(79, 'vi', 'shops', 'log_add_group', 'id 10', '', 1, 1626591004),
(80, 'vi', 'shops', 'log_add_group', 'id 11', '', 1, 1626591008),
(81, 'vi', 'shops', 'log_add_group', 'id 12', '', 1, 1626591012),
(82, 'vi', 'shops', 'log_add_group', 'id 13', '', 1, 1626591017),
(83, 'vi', 'shops', 'log_add_group', 'id 14', '', 1, 1626591022),
(84, 'vi', 'shops', 'log_add_group', 'id 15', '', 1, 1626591033),
(85, 'vi', 'shops', 'log_add_group', 'id 16', '', 1, 1626591037),
(86, 'vi', 'shops', 'log_add_group', 'id 17', '', 1, 1626591041),
(87, 'vi', 'shops', 'log_add_group', 'id 18', '', 1, 1626591045),
(88, 'vi', 'shops', 'log_add_group', 'id 19', '', 1, 1626591049),
(89, 'vi', 'shops', 'log_add_group', 'id 20', '', 1, 1626591061),
(90, 'vi', 'shops', 'log_add_group', 'id 21', '', 1, 1626591066),
(91, 'vi', 'shops', 'log_add_group', 'id 22', '', 1, 1626591070),
(92, 'vi', 'shops', 'log_add_group', 'id 23', '', 1, 1626591076),
(93, 'vi', 'shops', 'log_add_group', 'id 24', '', 1, 1626591082),
(94, 'vi', 'shops', 'log_add_group', 'id 25', '', 1, 1626591090),
(95, 'vi', 'shops', 'log_add_group', 'id 26', '', 1, 1626591098),
(96, 'vi', 'shops', 'log_add_group', 'id 27', '', 1, 1626591104),
(97, 'vi', 'upload', 'Tạo Thư mục', 'uploads/shops/2021_07/colors', '', 1, 1626591155),
(98, 'vi', 'upload', 'Upload file', 'uploads/shops/2021_07/colors/white.png', '', 1, 1626591167),
(99, 'vi', 'upload', 'Upload file', 'uploads/shops/2021_07/colors/black.png', '', 1, 1626591167),
(100, 'vi', 'upload', 'Upload file', 'uploads/shops/2021_07/colors/blue.png', '', 1, 1626591167),
(101, 'vi', 'upload', 'Upload file', 'uploads/shops/2021_07/colors/green.png', '', 1, 1626591168),
(102, 'vi', 'upload', 'Upload file', 'uploads/shops/2021_07/colors/orange.png', '', 1, 1626591168),
(103, 'vi', 'upload', 'Upload file', 'uploads/shops/2021_07/colors/pink.png', '', 1, 1626591168),
(104, 'vi', 'upload', 'Upload file', 'uploads/shops/2021_07/colors/red.png', '', 1, 1626591168),
(105, 'vi', 'upload', 'Upload file', 'uploads/shops/2021_07/colors/yellow.png', '', 1, 1626591168),
(106, 'vi', 'shops', 'log_add_group', 'id 28', '', 1, 1626591174),
(107, 'vi', 'shops', 'log_add_group', 'id 29', '', 1, 1626591185),
(108, 'vi', 'shops', 'log_add_group', 'id 30', '', 1, 1626591197),
(109, 'vi', 'shops', 'log_add_group', 'id 31', '', 1, 1626591207),
(110, 'vi', 'shops', 'log_add_group', 'id 32', '', 1, 1626591215),
(111, 'vi', 'shops', 'log_add_group', 'id 33', '', 1, 1626591224),
(112, 'vi', 'shops', 'log_add_group', 'id 34', '', 1, 1626591234),
(113, 'vi', 'shops', 'log_add_group', 'id 35', '', 1, 1626591243),
(114, 'vi', 'upload', 'Upload file', 'uploads/shops/2021_07/louis-vuitton-lvxnba-handle-trunk-monogram-other-bags-m45785_pm2_front-view.png', '', 1, 1626591401),
(115, 'vi', 'upload', 'Upload file', 'uploads/shops/2021_07/louis-vuitton-s-lock-messenger-taurillon-monogram-bags-m58488_pm1_side-view.png', '', 1, 1626591402),
(116, 'vi', 'upload', 'Upload file', 'uploads/shops/2021_07/louis-vuitton-s-lock-messenger-taurillon-monogram-bags-m58488_pm2_front-view.png', '', 1, 1626591402),
(117, 'vi', 'upload', 'Upload file', 'uploads/shops/2021_07/louis-vuitton-s-lock-messenger-taurillon-monogram-bags-m58489_pm1_side-view.png', '', 1, 1626591402),
(118, 'vi', 'upload', 'Upload file', 'uploads/shops/2021_07/louis-vuitton-s-lock-messenger-taurillon-monogram-bags-m58489_pm2_front-view.png', '', 1, 1626591402),
(119, 'vi', 'upload', 'Upload file', 'uploads/shops/2021_07/louis-vuitton-lvxnba-handle-trunk-monogram-other-bags-m45785_pm1_back-view.png', '', 1, 1626591403),
(120, 'vi', 'upload', 'Upload file', 'uploads/shops/2021_07/louis-vuitton-lvxnba-handle-trunk-monogram-other-bags-m45785_pm1_interior-view.png', '', 1, 1626591403),
(121, 'vi', 'upload', 'Upload file', 'uploads/shops/2021_07/louis-vuitton-lvxnba-handle-trunk-monogram-other-bags-m45785_pm1_side-view.png', '', 1, 1626591403),
(122, 'vi', 'shops', 'Add A Product', 'ID: 1', '', 1, 1626591494),
(123, 'vi', 'users', 'Xóa nhóm', 'group_id: 10', '', 1, 1626591503),
(124, 'vi', 'users', 'Xóa nhóm', 'group_id: 11', '', 1, 1626591505),
(125, 'vi', 'users', 'Xóa nhóm', 'group_id: 12', '', 1, 1626591506),
(126, 'vi', 'shops', 'Add A Product', 'ID: 2', '', 1, 1626591574),
(127, 'vi', 'shops', 'Add A Product', 'ID: 3', '', 1, 1626591595),
(128, 'vi', 'shops', 'Add A Product', 'ID: 4', '', 1, 1626591616),
(129, 'vi', 'shops', 'Add A Product', 'ID: 5', '', 1, 1626591713),
(130, 'vi', 'shops', 'Add A Product', 'ID: 6', '', 1, 1626591776),
(131, 'vi', 'shops', 'Add A Product', 'ID: 7', '', 1, 1626591806),
(132, 'vi', 'shops', 'Add A Product', 'ID: 8', '', 1, 1626591821),
(133, 'vi', 'menu', 'Edit menu', 'Menu id: 1', '', 1, 1626593671),
(134, 'vi', 'page', 'Add', ' ', '', 1, 1626593744),
(135, 'vi', 'menu', 'Edit menu', 'Menu id: 1', '', 1, 1626593921),
(136, 'vi', 'modules', 'Cài lại module \"menu\"', '', '', 1, 1626593942),
(137, 'vi', 'menu', 'Add menu', 'Menu id: 1', '', 1, 1626593953),
(138, 'vi', 'menu', 'Add row menu', 'Row menu id: 1 of Menu id: 1', '', 1, 1626593965),
(139, 'vi', 'page', 'Add', ' ', '', 1, 1626594154),
(140, 'vi', 'menu', 'Edit row menu', 'Row menu id: 1', '', 1, 1626594285),
(141, 'vi', 'menu', 'Add row menu', 'Row menu id: 2 of Menu id: 1', '', 1, 1626594296),
(142, 'vi', 'menu', 'Add row menu', 'Row menu id: 3 of Menu id: 1', '', 1, 1626594301),
(143, 'vi', 'menu', 'Add row menu', 'Row menu id: 4 of Menu id: 1', '', 1, 1626594305),
(144, 'vi', 'menu', 'Add row menu', 'Row menu id: 5 of Menu id: 1', '', 1, 1626594312),
(145, 'vi', 'modules', 'Cài lại module \"menu\"', '', '', 1, 1626594359),
(146, 'vi', 'menu', 'Add menu', 'Menu id: 1', '', 1, 1626594365),
(147, 'vi', 'menu', 'Add row menu', 'Row menu id: 1 of Menu id: 1', '', 1, 1626594373),
(148, 'vi', 'menu', 'Add row menu', 'Row menu id: 2 of Menu id: 1', '', 1, 1626594378),
(149, 'vi', 'menu', 'Add row menu', 'Row menu id: 3 of Menu id: 1', '', 1, 1626594382),
(150, 'vi', 'menu', 'Add row menu', 'Row menu id: 4 of Menu id: 1', '', 1, 1626594388),
(151, 'vi', 'menu', 'Add row menu', 'Row menu id: 5 of Menu id: 1', '', 1, 1626594397),
(152, 'vi', 'menu', 'Add menu', 'Menu id: 2', '', 1, 1626594408),
(153, 'vi', 'menu', 'Edit menu', 'Menu id: 2', '', 1, 1626594417),
(154, 'vi', 'page', 'Edit', 'ID: 1', '', 1, 1626594662),
(155, 'vi', 'themes', 'Thêm block', 'Name : Giỏ hàng', '', 1, 1626594720),
(156, 'vi', 'themes', 'Thêm block', 'Name : Thông tin cửa hàng', '', 1, 1626595586),
(157, 'vi', 'themes', 'Thêm block', 'Name : Copyright', '', 1, 1626595789),
(158, 'vi', 'themes', 'Thêm block', 'Name : Mạng xã hội', '', 1, 1626595938),
(159, 'vi', 'contact', 'log_edit_row', 'id: 1 Phòng Chăm sóc khách hàng', '', 1, 1626596063),
(160, 'vi', 'themes', 'Thêm block', 'Name : Hotline đầu trang', '', 1, 1626596140),
(161, 'vi', 'themes', 'Thêm block', 'Name : Menu chính', '', 1, 1626596481),
(162, 'vi', 'themes', 'Thêm block', 'Name : Danh mục sản phẩm', '', 1, 1626596533),
(163, 'vi', 'themes', 'Thêm block', 'Name : Đăng ký nhận tin', '', 1, 1626596698),
(164, 'vi', 'themes', 'Thiết lập layout theme: \"default\"', '', '', 1, 1626600255),
(165, 'vi', 'themes', 'Thêm block', 'Name : Danh mục sản phẩm', '', 1, 1626600858),
(166, 'vi', 'themes', 'Thêm block', 'Name : Lọc sản phẩm', '', 1, 1626601044),
(167, 'vi', 'slider', 'Add Block', 'Home slider', '', 1, 1626601360),
(168, 'vi', 'upload', 'Upload file', 'uploads/slider/image/louis-vuitton-lvxnba-handle-trunk-monogram.png', '', 1, 1626601440),
(169, 'vi', 'slider', 'Add Content', 'Slide 1', '', 1, 1626601457),
(170, 'vi', 'slider', 'Add Content', 'Slider 2', '', 1, 1626601498),
(171, 'vi', 'slider', 'Add Content', 'Slide 3', '', 1, 1626601513),
(172, 'vi', 'slider', 'Edit Block', 'ID: 1', '', 1, 1626601538),
(173, 'vi', 'themes', 'Thêm block', 'Name : Home slider', '', 1, 1626601600),
(174, 'vi', 'contact', 'log_edit_row', 'id: 1 Phòng Chăm sóc khách hàng', '', 1, 1626602801),
(175, 'vi', 'page', 'Edit', 'ID: 2', '', 1, 1626602934),
(176, 'vi', 'page', 'Add', ' ', '', 1, 1626602997),
(177, 'vi', 'menu', 'Edit row menu', 'Row menu id: 5', '', 1, 1626603086),
(178, 'vi', 'page', 'Edit', 'ID: 2', '', 1, 1626603168),
(179, 'vi', 'page', 'Edit', 'ID: 3', '', 1, 1626603262),
(180, 'vi', 'page', 'Edit', 'ID: 2', '', 1, 1626603273),
(181, 'vi', 'menu', 'Add row menu', 'Row menu id: 29 of Menu id: 1', '', 1, 1626603292),
(182, 'vi', 'menu', 'Add row menu', 'Row menu id: 30 of Menu id: 1', '', 1, 1626603298),
(183, 'vi', 'modules', 'Cài lại module \"news\"', '', '', 1, 1626603767),
(184, 'vi', 'news', 'Thêm chuyên mục', 'Thời trang', '', 1, 1626604118),
(185, 'vi', 'news', 'Thêm chuyên mục', 'Thương hiệu', '', 1, 1626604126),
(186, 'vi', 'news', 'Thêm chuyên mục', 'Khuyên dùng', '', 1, 1626604134),
(187, 'vi', 'news', 'Thêm chuyên mục', 'Khuyến mãi', '', 1, 1626604147),
(188, 'vi', 'news', 'Thêm chuyên mục', 'Trong nước', '', 1, 1626604155),
(189, 'vi', 'news', 'Thêm chuyên mục', 'Thế giới', '', 1, 1626604161),
(190, 'vi', 'news', 'Thêm bài viết', 'Tuyển chọn áo khoác nữ Quảng Châu đẹp và ăn khách nhất 2021', '', 1, 1626604290),
(191, 'vi', 'login', '[adminweb] Đăng nhập', ' Client IP:::1', '', 0, 1626609722),
(192, 'vi', 'upload', 'Upload file', 'uploads/avatar.png', '', 1, 1626609806),
(193, 'vi', 'news', 'log_edit_author', 'id 1', '', 1, 1626609809),
(194, 'vi', 'news', 'log_edit_author', 'id 1', '', 1, 1626609850),
(195, 'vi', 'news', 'log_edit_author', 'id 1', '', 1, 1626610750),
(196, 'vi', 'login', '[adminweb] Đăng nhập', ' Client IP:::1', '', 0, 1629083789);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_notification`
--

CREATE TABLE `vuj_notification` (
  `id` int(11) UNSIGNED NOT NULL,
  `admin_view_allowed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Cấp quản trị được xem: 0,1,2',
  `logic_mode` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: Cấp trên xem được cấp dưới, 1: chỉ cấp hoặc người được chỉ định',
  `send_to` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Danh sách id người nhận, phân cách bởi dấu phảy',
  `send_from` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `area` tinyint(1) UNSIGNED NOT NULL,
  `language` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `obid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL,
  `view` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_plugin`
--

CREATE TABLE `vuj_plugin` (
  `pid` tinyint(4) NOT NULL,
  `plugin_file` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plugin_area` tinyint(4) NOT NULL,
  `weight` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_plugin`
--

INSERT INTO `vuj_plugin` (`pid`, `plugin_file`, `plugin_area`, `weight`) VALUES
(1, 'qrcode.php', 1, 1),
(2, 'cdn_js_css_image.php', 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_sessions`
--

CREATE TABLE `vuj_sessions` (
  `session_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `onl_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_setup_extensions`
--

CREATE TABLE `vuj_setup_extensions` (
  `id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_sys` tinyint(1) NOT NULL DEFAULT '0',
  `is_virtual` tinyint(1) NOT NULL DEFAULT '0',
  `basename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_prefix` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `author` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_setup_extensions`
--

INSERT INTO `vuj_setup_extensions` (`id`, `type`, `title`, `is_sys`, `is_virtual`, `basename`, `table_prefix`, `version`, `addtime`, `author`, `note`) VALUES
(0, 'module', 'siteterms', 0, 0, 'page', 'siteterms', '4.5.00 1626512400', 1626587642, 'VINADES <contact@vinades.vn>', ''),
(19, 'module', 'banners', 1, 0, 'banners', 'banners', '4.5.00 1626512400', 1626587642, 'VINADES <contact@vinades.vn>', ''),
(20, 'module', 'contact', 0, 1, 'contact', 'contact', '4.5.00 1626512400', 1626587642, 'VINADES <contact@vinades.vn>', ''),
(1, 'module', 'news', 0, 1, 'news', 'news', '4.5.00 1626512400', 1626587642, 'VINADES <contact@vinades.vn>', ''),
(284, 'module', 'seek', 1, 0, 'seek', 'seek', '4.5.00 1626512400', 1626587642, 'VINADES <contact@vinades.vn>', ''),
(24, 'module', 'users', 1, 1, 'users', 'users', '4.5.00 1626512400', 1626587642, 'VINADES <contact@vinades.vn>', ''),
(29, 'module', 'menu', 0, 0, 'menu', 'menu', '4.5.00 1626512400', 1626587642, 'VINADES <contact@vinades.vn>', ''),
(283, 'module', 'feeds', 1, 0, 'feeds', 'feeds', '4.5.00 1626512400', 1626587642, 'VINADES <contact@vinades.vn>', ''),
(282, 'module', 'page', 1, 1, 'page', 'page', '4.5.00 1626512400', 1626587642, 'VINADES <contact@vinades.vn>', ''),
(281, 'module', 'comment', 1, 0, 'comment', 'comment', '4.5.00 1626512400', 1626587642, 'VINADES <contact@vinades.vn>', ''),
(327, 'module', 'two-step-verification', 1, 0, 'two-step-verification', 'two_step_verification', '4.5.00 1626512400', 1626587642, 'VINADES <contact@vinades.vn>', ''),
(307, 'theme', 'default', 0, 0, 'default', 'default', '4.5.00 1626512400', 1626587642, 'VINADES <contact@vinades.vn>', ''),
(0, 'module', 'newsnotice', 0, 1, 'newsnotice', 'newsnotice', '1.0.00 1395235974', 1626588089, 'mynukeviet (contact@mynukeviet.com)', ''),
(0, 'module', 'shops', 0, 1, 'shops', 'shops', '4.3.00 1492476600', 1626588089, 'VINADES <contact@vinades.vn>', ''),
(0, 'module', 'slider', 0, 1, 'slider', 'slider', '4.3.01 1524070799', 1626588089, 'Việt Tí (quocvietposcovn@gmail.com)', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_setup_language`
--

CREATE TABLE `vuj_setup_language` (
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setup` tinyint(1) NOT NULL DEFAULT '0',
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_setup_language`
--

INSERT INTO `vuj_setup_language` (`lang`, `setup`, `weight`) VALUES
('vi', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_block`
--

CREATE TABLE `vuj_shops_block` (
  `bid` int(11) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_shops_block`
--

INSERT INTO `vuj_shops_block` (`bid`, `id`, `weight`) VALUES
(1, 1, 0),
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(1, 6, 0),
(1, 7, 0),
(1, 8, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_block_cat`
--

CREATE TABLE `vuj_shops_block_cat` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `adddefault` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_bodytext` text COLLATE utf8mb4_unicode_ci,
  `vi_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_tag_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_tag_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_shops_block_cat`
--

INSERT INTO `vuj_shops_block_cat` (`bid`, `adddefault`, `image`, `weight`, `add_time`, `edit_time`, `vi_title`, `vi_alias`, `vi_description`, `vi_bodytext`, `vi_keywords`, `vi_tag_title`, `vi_tag_description`) VALUES
(1, 1, '', 1, 1626590830, 1626590830, 'Sản phẩm mới', 'San-pham-moi', '', '', '', '', ''),
(2, 0, '', 2, 1626590836, 1626590836, 'Sản phẩm bán chạy', 'San-pham-ban-chay', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_carrier`
--

CREATE TABLE `vuj_shops_carrier` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_carrier_config`
--

CREATE TABLE `vuj_shops_carrier_config` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_carrier_config_items`
--

CREATE TABLE `vuj_shops_carrier_config_items` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `cid` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) UNSIGNED NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_carrier_config_location`
--

CREATE TABLE `vuj_shops_carrier_config_location` (
  `cid` tinyint(3) UNSIGNED NOT NULL,
  `iid` smallint(4) UNSIGNED NOT NULL,
  `lid` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_carrier_config_weight`
--

CREATE TABLE `vuj_shops_carrier_config_weight` (
  `iid` smallint(4) UNSIGNED NOT NULL,
  `weight` double UNSIGNED NOT NULL,
  `weight_unit` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carrier_price` double NOT NULL,
  `carrier_price_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_catalogs`
--

CREATE TABLE `vuj_shops_catalogs` (
  `catid` mediumint(8) UNSIGNED NOT NULL,
  `parentid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `sort` mediumint(8) NOT NULL DEFAULT '0',
  `lev` smallint(4) NOT NULL DEFAULT '0',
  `viewcat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` int(11) NOT NULL DEFAULT '0',
  `subcatid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `numlinks` tinyint(2) UNSIGNED NOT NULL DEFAULT '3',
  `newday` tinyint(4) NOT NULL DEFAULT '3',
  `typeprice` tinyint(4) NOT NULL DEFAULT '2',
  `form` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_price` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewdescriptionhtml` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `admins` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `groups_view` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cat_allow_point` tinyint(1) NOT NULL DEFAULT '0',
  `cat_number_point` tinyint(4) NOT NULL DEFAULT '0',
  `cat_number_product` tinyint(4) NOT NULL DEFAULT '0',
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_title_custom` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_descriptionhtml` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_tag_description` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_shops_catalogs`
--

INSERT INTO `vuj_shops_catalogs` (`catid`, `parentid`, `image`, `weight`, `sort`, `lev`, `viewcat`, `numsubcat`, `subcatid`, `inhome`, `numlinks`, `newday`, `typeprice`, `form`, `group_price`, `viewdescriptionhtml`, `admins`, `add_time`, `edit_time`, `groups_view`, `cat_allow_point`, `cat_number_point`, `cat_number_product`, `vi_title`, `vi_title_custom`, `vi_alias`, `vi_description`, `vi_descriptionhtml`, `vi_keywords`, `vi_tag_description`) VALUES
(1, 0, '', 1, 1, 0, 'viewlist', 2, '6,7', 1, 4, 7, 1, '', '0\r\n100000\r\n200000\r\n500000\r\n1000000\r\n2000000\r\n5000000', 0, '', 1626590613, 1626590613, '6', 0, 0, 0, 'Túi xách', '', 'tui-xach', '', '', '', ''),
(2, 0, '', 2, 4, 0, 'viewlist', 4, '8,9,10,11', 1, 4, 7, 1, '', '0\r\n100000\r\n200000\r\n500000\r\n1000000\r\n2000000\r\n5000000', 0, '', 1626590619, 1626590619, '6', 0, 0, 0, 'Ví da', '', 'vi-da', '', '', '', ''),
(3, 0, '', 3, 9, 0, 'viewlist', 3, '12,13,14', 1, 4, 7, 1, '', '0\r\n100000\r\n200000\r\n500000\r\n1000000\r\n2000000\r\n5000000', 0, '', 1626590627, 1626590627, '6', 0, 0, 0, 'Giày dép', '', 'giay-dep', '', '', '', ''),
(4, 0, '', 4, 13, 0, 'viewlist', 6, '15,16,17,18,19,20', 1, 4, 7, 1, '', '0\r\n100000\r\n200000\r\n500000\r\n1000000\r\n2000000\r\n5000000', 0, '', 1626590634, 1626590634, '6', 0, 0, 0, 'Phụ kiện', '', 'phu-kien', '', '', '', ''),
(5, 0, '', 5, 20, 0, 'viewlist', 3, '21,22,23', 1, 4, 7, 1, '', '0\r\n100000\r\n200000\r\n500000\r\n1000000\r\n2000000\r\n5000000', 0, '', 1626590642, 1626590642, '6', 0, 0, 0, 'Đồng hồ', '', 'dong-ho', '', '', '', ''),
(6, 1, '', 1, 2, 1, 'viewlist', 0, '', 1, 4, 7, 1, '', '0\r\n100000\r\n200000\r\n500000\r\n1000000\r\n2000000\r\n5000000', 0, '', 1626590654, 1626590654, '6', 0, 0, 0, 'Túi xách nam', '', 'tui-xach-nam', '', '', '', ''),
(7, 1, '', 2, 3, 1, 'viewlist', 0, '', 1, 4, 7, 1, '', '0\r\n100000\r\n200000\r\n500000\r\n1000000\r\n2000000\r\n5000000', 0, '', 1626590662, 1626590662, '6', 0, 0, 0, 'Túi xách nữ', '', 'tui-xach-nu', '', '', '', ''),
(8, 2, '', 1, 5, 1, 'viewlist', 0, '', 1, 4, 7, 1, '', '0\r\n100000\r\n200000\r\n500000\r\n1000000\r\n2000000\r\n5000000', 0, '', 1626590680, 1626590680, '6', 0, 0, 0, 'Ví dài', '', 'vi-dai', '', '', '', ''),
(9, 2, '', 2, 6, 1, 'viewlist', 0, '', 1, 4, 7, 1, '', '0\r\n100000\r\n200000\r\n500000\r\n1000000\r\n2000000\r\n5000000', 0, '', 1626590688, 1626590688, '6', 0, 0, 0, 'Ví nhỏ gọn', '', 'vi-nho-gon', '', '', '', ''),
(10, 2, '', 3, 7, 1, 'viewlist', 0, '', 1, 4, 7, 1, '', '0\r\n100000\r\n200000\r\n500000\r\n1000000\r\n2000000\r\n5000000', 0, '', 1626590696, 1626590696, '6', 0, 0, 0, 'Ví đựng Card và Passport', '', 'vi-dung-card-va-passport', '', '', '', ''),
(11, 2, '', 4, 8, 1, 'viewlist', 0, '', 1, 4, 7, 1, '', '0\r\n100000\r\n200000\r\n500000\r\n1000000\r\n2000000\r\n5000000', 0, '', 1626590702, 1626590702, '6', 0, 0, 0, 'Ví đựng điện thoại', '', 'vi-dung-dien-thoai', '', '', '', ''),
(12, 3, '', 1, 10, 1, 'viewlist', 0, '', 1, 4, 7, 1, '', '0\r\n100000\r\n200000\r\n500000\r\n1000000\r\n2000000\r\n5000000', 0, '', 1626590716, 1626590716, '6', 0, 0, 0, 'Sneakers', '', 'sneakers', '', '', '', ''),
(13, 3, '', 2, 11, 1, 'viewlist', 0, '', 1, 4, 7, 1, '', '0\r\n100000\r\n200000\r\n500000\r\n1000000\r\n2000000\r\n5000000', 0, '', 1626590723, 1626590723, '6', 0, 0, 0, 'Giày lười và da trơn', '', 'giay-luoi-va-da-tron', '', '', '', ''),
(14, 3, '', 3, 12, 1, 'viewlist', 0, '', 1, 4, 7, 1, '', '0\r\n100000\r\n200000\r\n500000\r\n1000000\r\n2000000\r\n5000000', 0, '', 1626590731, 1626590731, '6', 0, 0, 0, 'Giày sandals', '', 'giay-sandals', '', '', '', ''),
(15, 4, '', 1, 14, 1, 'viewlist', 0, '', 1, 4, 7, 1, '', '0\r\n100000\r\n200000\r\n500000\r\n1000000\r\n2000000\r\n5000000', 0, '', 1626590746, 1626590746, '6', 0, 0, 0, 'Thắt lưng', '', 'that-lung', '', '', '', ''),
(16, 4, '', 2, 15, 1, 'viewlist', 0, '', 1, 4, 7, 1, '', '0\r\n100000\r\n200000\r\n500000\r\n1000000\r\n2000000\r\n5000000', 0, '', 1626590752, 1626590752, '6', 0, 0, 0, 'Phụ kiện công nghệ', '', 'phu-kien-cong-nghe', '', '', '', ''),
(17, 4, '', 3, 16, 1, 'viewlist', 0, '', 1, 4, 7, 1, '', '0\r\n100000\r\n200000\r\n500000\r\n1000000\r\n2000000\r\n5000000', 0, '', 1626590758, 1626590758, '6', 0, 0, 0, 'Khăn quàng cổ', '', 'khan-quang-co', '', '', '', ''),
(18, 4, '', 4, 17, 1, 'viewlist', 0, '', 1, 4, 7, 1, '', '0\r\n100000\r\n200000\r\n500000\r\n1000000\r\n2000000\r\n5000000', 0, '', 1626590766, 1626590766, '6', 0, 0, 0, 'Mũ và Găng tay', '', 'mu-va-gang-tay', '', '', '', ''),
(19, 4, '', 5, 18, 1, 'viewlist', 0, '', 1, 4, 7, 1, '', '0\r\n100000\r\n200000\r\n500000\r\n1000000\r\n2000000\r\n5000000', 0, '', 1626590773, 1626590773, '6', 0, 0, 0, 'Trang sức thời trang', '', 'trang-suc-thoi-trang', '', '', '', ''),
(20, 4, '', 6, 19, 1, 'viewlist', 0, '', 1, 4, 7, 1, '', '0\r\n100000\r\n200000\r\n500000\r\n1000000\r\n2000000\r\n5000000', 0, '', 1626590780, 1626590780, '6', 0, 0, 0, 'Kính mát', '', 'kinh-mat', '', '', '', ''),
(21, 5, '', 1, 21, 1, 'viewlist', 0, '', 1, 4, 7, 1, '', '0\r\n100000\r\n200000\r\n500000\r\n1000000\r\n2000000\r\n5000000', 0, '', 1626590795, 1626590795, '6', 0, 0, 0, 'Đồng hồ truyền thống', '', 'dong-ho-truyen-thong', '', '', '', ''),
(22, 5, '', 2, 22, 1, 'viewlist', 0, '', 1, 4, 7, 1, '', '0\r\n100000\r\n200000\r\n500000\r\n1000000\r\n2000000\r\n5000000', 0, '', 1626590802, 1626590802, '6', 0, 0, 0, 'Đồng hồ thông minh', '', 'dong-ho-thong-minh', '', '', '', ''),
(23, 5, '', 3, 23, 1, 'viewlist', 0, '', 1, 4, 7, 1, '', '0\r\n100000\r\n200000\r\n500000\r\n1000000\r\n2000000\r\n5000000', 0, '', 1626590809, 1626590809, '6', 0, 0, 0, 'Dây đeo và Phụ kiện', '', 'day-deo-va-phu-kien', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_coupons`
--

CREATE TABLE `vuj_shops_coupons` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'p',
  `discount` double NOT NULL DEFAULT '0',
  `total_amount` double NOT NULL DEFAULT '0',
  `date_start` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `date_end` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `uses_per_coupon` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `uses_per_coupon_count` int(11) NOT NULL DEFAULT '0',
  `date_added` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_shops_coupons`
--

INSERT INTO `vuj_shops_coupons` (`id`, `title`, `code`, `type`, `discount`, `total_amount`, `date_start`, `date_end`, `uses_per_coupon`, `uses_per_coupon_count`, `date_added`, `status`) VALUES
(1, 'Thích thì giảm', 'TTG10', 'p', 10, 0, 1626541200, 0, 0, 0, 1626591295, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_coupons_history`
--

CREATE TABLE `vuj_shops_coupons_history` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `date_added` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_coupons_product`
--

CREATE TABLE `vuj_shops_coupons_product` (
  `cid` int(11) UNSIGNED NOT NULL,
  `pid` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_discounts`
--

CREATE TABLE `vuj_shops_discounts` (
  `did` smallint(6) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` smallint(6) NOT NULL DEFAULT '0',
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `begin_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `end_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_shops_discounts`
--

INSERT INTO `vuj_shops_discounts` (`did`, `title`, `weight`, `add_time`, `edit_time`, `begin_time`, `end_time`, `config`, `detail`) VALUES
(1, 'Giảm 80%', 0, 1626591274, 1626591274, 1626541200, 1627750799, 'a:1:{i:0;a:4:{s:13:\"discount_from\";i:1;s:11:\"discount_to\";i:1;s:15:\"discount_number\";d:80;s:13:\"discount_unit\";s:1:\"p\";}}', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_field`
--

CREATE TABLE `vuj_shops_field` (
  `fid` mediumint(8) NOT NULL,
  `field` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `listtemplate` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tab` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `field_type` enum('number','date','textbox','textarea','editor','select','radio','checkbox','multiselect') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'textbox',
  `field_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sql_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `match_type` enum('none','alphanumeric','email','url','regex','callback') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `match_regex` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_callback` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT '0',
  `max_length` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `class` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_field_value_vi`
--

CREATE TABLE `vuj_shops_field_value_vi` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `rows_id` int(11) UNSIGNED NOT NULL,
  `field_id` mediumint(8) NOT NULL,
  `field_value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_files`
--

CREATE TABLE `vuj_shops_files` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `path` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filesize` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `extension` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `download_groups` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-1',
  `status` tinyint(1) UNSIGNED DEFAULT '1',
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_files_rows`
--

CREATE TABLE `vuj_shops_files_rows` (
  `id_rows` int(11) UNSIGNED NOT NULL,
  `id_files` mediumint(8) UNSIGNED NOT NULL,
  `download_hits` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_group`
--

CREATE TABLE `vuj_shops_group` (
  `groupid` mediumint(8) UNSIGNED NOT NULL,
  `parentid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `sort` mediumint(8) NOT NULL DEFAULT '0',
  `lev` smallint(4) NOT NULL DEFAULT '0',
  `viewgroup` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewgrid',
  `numsubgroup` int(11) NOT NULL DEFAULT '0',
  `subgroupid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `indetail` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `numpro` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `in_order` tinyint(2) NOT NULL DEFAULT '0',
  `is_require` tinyint(1) NOT NULL DEFAULT '0',
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_shops_group`
--

INSERT INTO `vuj_shops_group` (`groupid`, `parentid`, `image`, `weight`, `sort`, `lev`, `viewgroup`, `numsubgroup`, `subgroupid`, `inhome`, `indetail`, `add_time`, `edit_time`, `numpro`, `in_order`, `is_require`, `vi_title`, `vi_alias`, `vi_description`, `vi_keywords`) VALUES
(1, 0, '', 1, 1, 0, 'viewgrid', 6, '4,5,6,7,8,9', 1, 0, 1626590893, 1626590893, 0, 1, 0, 'Thương hiệu', 'thuong-hieu', '', ''),
(2, 0, '', 2, 8, 0, 'viewgrid', 18, '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27', 0, 0, 1626590908, 1626590908, 0, 1, 0, 'Size', 'size', '', ''),
(3, 0, '', 3, 27, 0, 'viewgrid', 8, '28,29,30,31,32,33,34,35', 1, 0, 1626590919, 1626590919, 0, 1, 0, 'Màu sắc', 'mau-sac', '', ''),
(4, 1, '', 1, 2, 1, 'viewgrid', 0, '', 1, 0, 1626590954, 1626590954, 8, 1, 0, 'LOUIS VUITTON', 'louis-vuitton', '', ''),
(5, 1, '', 2, 3, 1, 'viewgrid', 0, '', 1, 0, 1626590961, 1626590961, 0, 1, 0, 'GUCCI', 'gucci', '', ''),
(6, 1, '', 3, 4, 1, 'viewgrid', 0, '', 1, 0, 1626590968, 1626590968, 0, 1, 0, 'ZARA', 'zara', '', ''),
(7, 1, '', 4, 5, 1, 'viewgrid', 0, '', 1, 0, 1626590974, 1626590974, 0, 1, 0, 'ARMANI', 'armani', '', ''),
(8, 1, '', 5, 6, 1, 'viewgrid', 0, '', 1, 0, 1626590980, 1626590980, 0, 1, 0, 'VERSACE', 'versace', '', ''),
(9, 1, '', 6, 7, 1, 'viewgrid', 0, '', 1, 0, 1626590985, 1626590985, 0, 1, 0, 'DOLCE &amp; GABBANA', 'dolce-gabbana', '', ''),
(10, 2, '', 1, 9, 1, 'viewgrid', 0, '', 1, 0, 1626591004, 1626591004, 0, 1, 0, 'S', 's', '', ''),
(11, 2, '', 2, 10, 1, 'viewgrid', 0, '', 1, 0, 1626591008, 1626591008, 0, 1, 0, 'M', 'm', '', ''),
(12, 2, '', 3, 11, 1, 'viewgrid', 0, '', 1, 0, 1626591012, 1626591012, 0, 1, 0, 'L', 'l', '', ''),
(13, 2, '', 4, 12, 1, 'viewgrid', 0, '', 1, 0, 1626591017, 1626591017, 0, 1, 0, 'XL', 'xl', '', ''),
(14, 2, '', 5, 13, 1, 'viewgrid', 0, '', 1, 0, 1626591022, 1626591022, 0, 1, 0, 'XXL', 'xxl', '', ''),
(15, 2, '', 6, 14, 1, 'viewgrid', 0, '', 1, 0, 1626591033, 1626591033, 0, 1, 0, 'XXXL', 'xxxl', '', ''),
(16, 2, '', 7, 15, 1, 'viewgrid', 0, '', 1, 0, 1626591037, 1626591037, 0, 1, 0, '34', '34', '', ''),
(17, 2, '', 8, 16, 1, 'viewgrid', 0, '', 1, 0, 1626591041, 1626591041, 0, 1, 0, '35', '35', '', ''),
(18, 2, '', 9, 17, 1, 'viewgrid', 0, '', 1, 0, 1626591045, 1626591045, 0, 1, 0, '36', '36', '', ''),
(19, 2, '', 10, 18, 1, 'viewgrid', 0, '', 1, 0, 1626591049, 1626591049, 0, 1, 0, '37', '37', '', ''),
(20, 2, '', 11, 19, 1, 'viewgrid', 0, '', 1, 0, 1626591061, 1626591061, 0, 1, 0, '38', '38', '', ''),
(21, 2, '', 12, 20, 1, 'viewgrid', 0, '', 1, 0, 1626591066, 1626591066, 0, 1, 0, '39', '39', '', ''),
(22, 2, '', 13, 21, 1, 'viewgrid', 0, '', 1, 0, 1626591070, 1626591070, 0, 1, 0, '40', '40', '', ''),
(23, 2, '', 14, 22, 1, 'viewgrid', 0, '', 1, 0, 1626591076, 1626591076, 0, 1, 0, '41', '41', '', ''),
(24, 2, '', 15, 23, 1, 'viewgrid', 0, '', 1, 0, 1626591082, 1626591082, 0, 1, 0, '42', '42', '', ''),
(25, 2, '', 16, 24, 1, 'viewgrid', 0, '', 1, 0, 1626591090, 1626591090, 0, 1, 0, '43', '43', '', ''),
(26, 2, '', 17, 25, 1, 'viewgrid', 0, '', 1, 0, 1626591098, 1626591098, 0, 1, 0, '44', '44', '', ''),
(27, 2, '', 18, 26, 1, 'viewgrid', 0, '', 1, 0, 1626591104, 1626591104, 0, 1, 0, '45', '45', '', ''),
(28, 3, '2021_07/colors/white.png', 1, 28, 1, 'viewgrid', 0, '', 1, 0, 1626591174, 1626591174, 0, 1, 0, 'Trắng', 'trang', '', ''),
(29, 3, '2021_07/colors/black.png', 2, 29, 1, 'viewgrid', 0, '', 1, 0, 1626591185, 1626591185, 4, 1, 0, 'Đen', 'den', '', ''),
(30, 3, '2021_07/colors/red.png', 3, 30, 1, 'viewgrid', 0, '', 1, 0, 1626591197, 1626591197, 0, 1, 0, 'Đỏ', 'do', '', ''),
(31, 3, '2021_07/colors/blue.png', 4, 31, 1, 'viewgrid', 0, '', 1, 0, 1626591207, 1626591207, 4, 1, 0, 'Xanh biển', 'xanh-bien', '', ''),
(32, 3, '2021_07/colors/green.png', 5, 32, 1, 'viewgrid', 0, '', 1, 0, 1626591215, 1626591215, 0, 1, 0, 'Xanh lục', 'xanh-luc', '', ''),
(33, 3, '2021_07/colors/yellow.png', 6, 33, 1, 'viewgrid', 0, '', 1, 0, 1626591224, 1626591224, 0, 1, 0, 'Vàng', 'vang', '', ''),
(34, 3, '2021_07/colors/pink.png', 7, 34, 1, 'viewgrid', 0, '', 1, 0, 1626591234, 1626591234, 0, 1, 0, 'Hồng', 'hong', '', ''),
(35, 3, '2021_07/colors/orange.png', 8, 35, 1, 'viewgrid', 0, '', 1, 0, 1626591243, 1626591243, 0, 1, 0, 'Cam', 'cam', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_group_cateid`
--

CREATE TABLE `vuj_shops_group_cateid` (
  `groupid` mediumint(8) UNSIGNED NOT NULL,
  `cateid` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_shops_group_cateid`
--

INSERT INTO `vuj_shops_group_cateid` (`groupid`, `cateid`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_group_items`
--

CREATE TABLE `vuj_shops_group_items` (
  `pro_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_shops_group_items`
--

INSERT INTO `vuj_shops_group_items` (`pro_id`, `group_id`) VALUES
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(5, 4),
(5, 29),
(5, 31),
(6, 4),
(6, 29),
(6, 31),
(7, 4),
(7, 29),
(7, 31),
(8, 4),
(8, 29),
(8, 31);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_group_quantity`
--

CREATE TABLE `vuj_shops_group_quantity` (
  `pro_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `listgroup` varchar(247) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_shops_group_quantity`
--

INSERT INTO `vuj_shops_group_quantity` (`pro_id`, `listgroup`, `quantity`) VALUES
(1, '4', 5),
(5, '4,31', 5),
(5, '4,29', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_location`
--

CREATE TABLE `vuj_shops_location` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `parentid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `sort` mediumint(8) NOT NULL DEFAULT '0',
  `lev` smallint(4) NOT NULL DEFAULT '0',
  `numsub` int(11) NOT NULL DEFAULT '0',
  `subid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_money_vi`
--

CREATE TABLE `vuj_shops_money_vi` (
  `id` mediumint(11) NOT NULL,
  `code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `exchange` double NOT NULL DEFAULT '0',
  `round` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_format` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ',||.'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_shops_money_vi`
--

INSERT INTO `vuj_shops_money_vi` (`id`, `code`, `currency`, `symbol`, `exchange`, `round`, `number_format`) VALUES
(704, 'VND', 'Việt Nam Đồng', '₫', 1, '100', ',||.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_orders`
--

CREATE TABLE `vuj_shops_orders` (
  `order_id` int(11) UNSIGNED NOT NULL,
  `order_code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `order_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `shop_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `who_is` int(2) UNSIGNED NOT NULL DEFAULT '0',
  `unit_total` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_total` double UNSIGNED NOT NULL DEFAULT '0',
  `order_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `postip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_view` tinyint(2) NOT NULL DEFAULT '0',
  `transaction_status` tinyint(4) NOT NULL,
  `transaction_id` int(11) NOT NULL DEFAULT '0',
  `transaction_count` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_orders_id`
--

CREATE TABLE `vuj_shops_orders_id` (
  `id` int(11) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `listgroupid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `proid` mediumint(9) NOT NULL,
  `num` mediumint(9) NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `discount_id` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_orders_id_group`
--

CREATE TABLE `vuj_shops_orders_id_group` (
  `order_i` int(11) NOT NULL,
  `group_id` mediumint(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_orders_shipping`
--

CREATE TABLE `vuj_shops_orders_shipping` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `order_id` int(11) UNSIGNED NOT NULL,
  `ship_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_phone` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_location_id` mediumint(8) UNSIGNED NOT NULL,
  `ship_address_extend` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_shops_id` tinyint(3) UNSIGNED NOT NULL,
  `ship_carrier_id` tinyint(3) UNSIGNED NOT NULL,
  `weight` double NOT NULL DEFAULT '0',
  `weight_unit` char(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ship_price` double NOT NULL DEFAULT '0',
  `ship_price_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `add_time` int(11) UNSIGNED NOT NULL,
  `edit_time` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_point`
--

CREATE TABLE `vuj_shops_point` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `point_total` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_point_history`
--

CREATE TABLE `vuj_shops_point_history` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL,
  `point` int(11) NOT NULL DEFAULT '0',
  `time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_point_queue`
--

CREATE TABLE `vuj_shops_point_queue` (
  `order_id` int(11) NOT NULL,
  `point` mediumint(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_review`
--

CREATE TABLE `vuj_shops_review` (
  `review_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `sender` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(1) NOT NULL,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_rows`
--

CREATE TABLE `vuj_shops_rows` (
  `id` int(11) UNSIGNED NOT NULL,
  `listcatid` int(11) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `product_code` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `product_number` int(11) NOT NULL DEFAULT '0',
  `product_price` double NOT NULL DEFAULT '0',
  `price_config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `saleprice` double NOT NULL DEFAULT '0',
  `money_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_unit` smallint(4) NOT NULL,
  `product_weight` double NOT NULL DEFAULT '0',
  `weight_unit` char(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `discount_id` smallint(6) NOT NULL DEFAULT '0',
  `homeimgfile` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `homeimgalt` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otherimage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgposition` tinyint(1) NOT NULL DEFAULT '1',
  `copyright` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `gift_from` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `gift_to` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ratingdetail` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `allowed_send` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_print` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_save` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitslm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `num_sell` mediumint(8) NOT NULL DEFAULT '0',
  `showprice` tinyint(2) NOT NULL DEFAULT '0',
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_bodytext` mediumtext COLLATE utf8mb4_unicode_ci,
  `vi_gift_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_tag_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_tag_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_shops_rows`
--

INSERT INTO `vuj_shops_rows` (`id`, `listcatid`, `user_id`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `product_code`, `product_number`, `product_price`, `price_config`, `saleprice`, `money_unit`, `product_unit`, `product_weight`, `weight_unit`, `discount_id`, `homeimgfile`, `homeimgthumb`, `homeimgalt`, `otherimage`, `imgposition`, `copyright`, `gift_from`, `gift_to`, `inhome`, `allowed_comm`, `allowed_rating`, `ratingdetail`, `allowed_send`, `allowed_print`, `allowed_save`, `hitstotal`, `hitscm`, `hitslm`, `num_sell`, `showprice`, `vi_title`, `vi_alias`, `vi_hometext`, `vi_bodytext`, `vi_gift_content`, `vi_address`, `vi_tag_title`, `vi_tag_description`) VALUES
(1, 6, 1, 1626591494, 1626591494, 1, 1626591494, 0, 2, 'HASP000001', 5, 107000000, '', 0, 'VND', 1, 1, 'kg', 0, '2021_07/louis-vuitton-lvxnba-handle-trunk-monogram-other-bags-m45785_pm2_front-view.png', 1, '', '2021_07/louis-vuitton-lvxnba-handle-trunk-monogram-other-bags-m45785_pm1_back-view.png|2021_07/louis-vuitton-lvxnba-handle-trunk-monogram-other-bags-m45785_pm1_side-view.png|2021_07/louis-vuitton-lvxnba-handle-trunk-monogram-other-bags-m45785_pm1_interior-view.png', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 0, 0, 0, 0, 1, 'LVxNBA Handle Trunk', 'lvxnba-handle-trunk', 'Với hình hộp, các góc kim loại màu vàng và đinh tán, chiếc túi Handle Trunk nhỏ gợi lên những chiếc hòm mang tính biểu tượng của Louis Vuitton. Tay cầm trên cùng bằng da mang lại cảm giác cổ điển hơn trong khi dây da có thể tháo rời cho phép mang theo vai. Hai khóa kéo giúp dễ dàng tiếp cận nội thất đủ rộng cho điện thoại và ví.', '<h4>Detailed Features:</h4><p>21.5 x 15 x 7 cm (Depth x Height x Width)</p><ul>	<li>Monogram coated canvas</li>	<li>Textile lining</li>	<li>Ball Grained leather trim</li>	<li>Gold-color hardware</li>	<li>Front flat pocket</li>	<li>Leather tag</li>	<li>Removable and adjustable strap</li>	<li>Inside flat pocket</li>	<li>Strap: Removable, adjustable</li>	<li>Strap drop: 44.5 cm</li>	<li>Strap drop max: 58.0 cm</li>	<li>Handle: Single</li></ul>', '', '', '', ''),
(2, 6, 1, 1626591494, 1626591494, 1, 1626591574, 0, 2, 'HASP000002', 0, 7000000, '', 0, 'VND', 1, 1, 'kg', 0, '2021_07/louis-vuitton-lvxnba-handle-trunk-monogram-other-bags-m45785_pm2_front-view.png', 1, '', '2021_07/louis-vuitton-lvxnba-handle-trunk-monogram-other-bags-m45785_pm1_back-view.png|2021_07/louis-vuitton-lvxnba-handle-trunk-monogram-other-bags-m45785_pm1_side-view.png|2021_07/louis-vuitton-lvxnba-handle-trunk-monogram-other-bags-m45785_pm1_interior-view.png', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 1, 0, 0, 0, 1, 'LVxNBA Handle Trunk F1', 'lvxnba-handle-trunk-f1', 'Với hình hộp, các góc kim loại màu vàng và đinh tán, chiếc túi Handle Trunk nhỏ gợi lên những chiếc hòm mang tính biểu tượng của Louis Vuitton. Tay cầm trên cùng bằng da mang lại cảm giác cổ điển hơn trong khi dây da có thể tháo rời cho phép mang theo vai. Hai khóa kéo giúp dễ dàng tiếp cận nội thất đủ rộng cho điện thoại và ví.', '<h4>Detailed Features:</h4><p>21.5 x 15 x 7 cm (Depth x Height x Width)</p><ul>	<li>Monogram coated canvas</li>	<li>Textile lining</li>	<li>Ball Grained leather trim</li>	<li>Gold-color hardware</li>	<li>Front flat pocket</li>	<li>Leather tag</li>	<li>Removable and adjustable strap</li>	<li>Inside flat pocket</li>	<li>Strap: Removable, adjustable</li>	<li>Strap drop: 44.5 cm</li>	<li>Strap drop max: 58.0 cm</li>	<li>Handle: Single</li></ul>', '', '', '', ''),
(3, 6, 1, 1626591494, 1626591494, 1, 1626591595, 0, 2, 'HASP000003', 0, 5000000, '', 0, 'VND', 1, 1, 'kg', 0, '2021_07/louis-vuitton-lvxnba-handle-trunk-monogram-other-bags-m45785_pm2_front-view.png', 1, '', '2021_07/louis-vuitton-lvxnba-handle-trunk-monogram-other-bags-m45785_pm1_back-view.png|2021_07/louis-vuitton-lvxnba-handle-trunk-monogram-other-bags-m45785_pm1_side-view.png|2021_07/louis-vuitton-lvxnba-handle-trunk-monogram-other-bags-m45785_pm1_interior-view.png', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 0, 0, 0, 0, 1, 'LVxNBA Handle Trunk F2', 'lvxnba-handle-trunk-f2', 'Với hình hộp, các góc kim loại màu vàng và đinh tán, chiếc túi Handle Trunk nhỏ gợi lên những chiếc hòm mang tính biểu tượng của Louis Vuitton. Tay cầm trên cùng bằng da mang lại cảm giác cổ điển hơn trong khi dây da có thể tháo rời cho phép mang theo vai. Hai khóa kéo giúp dễ dàng tiếp cận nội thất đủ rộng cho điện thoại và ví.', '<h4>Detailed Features:</h4><p>21.5 x 15 x 7 cm (Depth x Height x Width)</p><ul>	<li>Monogram coated canvas</li>	<li>Textile lining</li>	<li>Ball Grained leather trim</li>	<li>Gold-color hardware</li>	<li>Front flat pocket</li>	<li>Leather tag</li>	<li>Removable and adjustable strap</li>	<li>Inside flat pocket</li>	<li>Strap: Removable, adjustable</li>	<li>Strap drop: 44.5 cm</li>	<li>Strap drop max: 58.0 cm</li>	<li>Handle: Single</li></ul>', '', '', '', ''),
(4, 6, 1, 1626591494, 1626591494, 1, 1626591616, 0, 2, 'HASP000004', 0, 50000000, '', 0, 'VND', 1, 1, 'kg', 0, '2021_07/louis-vuitton-lvxnba-handle-trunk-monogram-other-bags-m45785_pm2_front-view.png', 1, '', '2021_07/louis-vuitton-lvxnba-handle-trunk-monogram-other-bags-m45785_pm1_back-view.png|2021_07/louis-vuitton-lvxnba-handle-trunk-monogram-other-bags-m45785_pm1_side-view.png|2021_07/louis-vuitton-lvxnba-handle-trunk-monogram-other-bags-m45785_pm1_interior-view.png', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 0, 0, 0, 0, 1, 'LVxNBA Handle Trunk SF', 'lvxnba-handle-trunk-sf', 'Với hình hộp, các góc kim loại màu vàng và đinh tán, chiếc túi Handle Trunk nhỏ gợi lên những chiếc hòm mang tính biểu tượng của Louis Vuitton. Tay cầm trên cùng bằng da mang lại cảm giác cổ điển hơn trong khi dây da có thể tháo rời cho phép mang theo vai. Hai khóa kéo giúp dễ dàng tiếp cận nội thất đủ rộng cho điện thoại và ví.', '<h4>Detailed Features:</h4><p>21.5 x 15 x 7 cm (Depth x Height x Width)</p><ul>	<li>Monogram coated canvas</li>	<li>Textile lining</li>	<li>Ball Grained leather trim</li>	<li>Gold-color hardware</li>	<li>Front flat pocket</li>	<li>Leather tag</li>	<li>Removable and adjustable strap</li>	<li>Inside flat pocket</li>	<li>Strap: Removable, adjustable</li>	<li>Strap drop: 44.5 cm</li>	<li>Strap drop max: 58.0 cm</li>	<li>Handle: Single</li></ul>', '', '', '', ''),
(5, 6, 1, 1626591713, 1626591713, 1, 1626591713, 0, 2, 'HASP000005', 7, 98900000, '', 0, 'VND', 1, 1, 'g', 1, '2021_07/louis-vuitton-s-lock-messenger-taurillon-monogram-bags-m58488_pm2_front-view.png', 1, '', '2021_07/louis-vuitton-s-lock-messenger-taurillon-monogram-bags-m58488_pm1_side-view.png|2021_07/louis-vuitton-s-lock-messenger-taurillon-monogram-bags-m58489_pm2_front-view.png|2021_07/louis-vuitton-s-lock-messenger-taurillon-monogram-bags-m58489_pm1_side-view.png', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 1, 0, 0, 0, 1, 'S Lock Messenger', 's-lock-messenger', 'Phiên bản S Lock Messenger này được chế tác bằng da Taurillon dẻo dai, nhuộm màu đen sang trọng và in nổi hoa văn Monogram lịch sử của House. Khóa từ tính của nó, một bản cập nhật hiện đại của khóa cốp xe do Georges Vuitton phát minh vào năm 1886, giúp giữ an toàn cho đồ đạc. Và thật dễ dàng để mang theo, với tay cầm lấy cảm hứng từ thân cây và dây đeo đặc trưng của LV.', '<h4>Detailed Features</h4><p>22 x 18 x 8 cm (Depth x Height x Width)</p><ul>	<li>Black</li>	<li>Monogram-embossed</li>	<li>Taurillon cowhide leather</li>	<li>Epi leather trim and lining</li>	<li>Matte black hardware</li>	<li>V stitching and embossed signature on the leather handle</li>	<li>S Lock magnetic closure</li>	<li>Large front pocket</li>	<li>Large zipped compartment Inside flat pocket</li>	<li>Strap: Removable, adjustable</li>	<li>Strap drop: 33.0 cm</li>	<li>Strap drop max: 60.0 cm</li>	<li>Handle: Single</li></ul>', '', '', '', ''),
(6, 6, 1, 1626591713, 1626591713, 1, 1626591776, 0, 2, 'HASP000006', 0, 10800000, '', 0, 'VND', 1, 1, 'g', 1, '2021_07/louis-vuitton-s-lock-messenger-taurillon-monogram-bags-m58488_pm2_front-view.png', 1, '', '2021_07/louis-vuitton-s-lock-messenger-taurillon-monogram-bags-m58488_pm1_side-view.png|2021_07/louis-vuitton-s-lock-messenger-taurillon-monogram-bags-m58489_pm2_front-view.png|2021_07/louis-vuitton-s-lock-messenger-taurillon-monogram-bags-m58489_pm1_side-view.png', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 0, 0, 0, 0, 1, 'S Lock Messenger F1', 's-lock-messenger-f1', 'Phiên bản S Lock Messenger này được chế tác bằng da Taurillon dẻo dai, nhuộm màu đen sang trọng và in nổi hoa văn Monogram lịch sử của House. Khóa từ tính của nó, một bản cập nhật hiện đại của khóa cốp xe do Georges Vuitton phát minh vào năm 1886, giúp giữ an toàn cho đồ đạc. Và thật dễ dàng để mang theo, với tay cầm lấy cảm hứng từ thân cây và dây đeo đặc trưng của LV.', '<h4>Detailed Features</h4><p>22 x 18 x 8 cm (Depth x Height x Width)</p><ul>	<li>Black</li>	<li>Monogram-embossed</li>	<li>Taurillon cowhide leather</li>	<li>Epi leather trim and lining</li>	<li>Matte black hardware</li>	<li>V stitching and embossed signature on the leather handle</li>	<li>S Lock magnetic closure</li>	<li>Large front pocket</li>	<li>Large zipped compartment Inside flat pocket</li>	<li>Strap: Removable, adjustable</li>	<li>Strap drop: 33.0 cm</li>	<li>Strap drop max: 60.0 cm</li>	<li>Handle: Single</li></ul>', '', '', '', ''),
(7, 6, 1, 1626591713, 1626591713, 1, 1626591806, 0, 2, 'HASP000007', 0, 6900000, '', 0, 'VND', 1, 1, 'g', 0, '2021_07/louis-vuitton-s-lock-messenger-taurillon-monogram-bags-m58488_pm2_front-view.png', 1, '', '2021_07/louis-vuitton-s-lock-messenger-taurillon-monogram-bags-m58488_pm1_side-view.png|2021_07/louis-vuitton-s-lock-messenger-taurillon-monogram-bags-m58489_pm2_front-view.png|2021_07/louis-vuitton-s-lock-messenger-taurillon-monogram-bags-m58489_pm1_side-view.png', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 0, 0, 0, 0, 1, 'S Lock Messenger F2', 's-lock-messenger-f2', 'Phiên bản S Lock Messenger này được chế tác bằng da Taurillon dẻo dai, nhuộm màu đen sang trọng và in nổi hoa văn Monogram lịch sử của House. Khóa từ tính của nó, một bản cập nhật hiện đại của khóa cốp xe do Georges Vuitton phát minh vào năm 1886, giúp giữ an toàn cho đồ đạc. Và thật dễ dàng để mang theo, với tay cầm lấy cảm hứng từ thân cây và dây đeo đặc trưng của LV.', '<h4>Detailed Features</h4><p>22 x 18 x 8 cm (Depth x Height x Width)</p><ul>	<li>Black</li>	<li>Monogram-embossed</li>	<li>Taurillon cowhide leather</li>	<li>Epi leather trim and lining</li>	<li>Matte black hardware</li>	<li>V stitching and embossed signature on the leather handle</li>	<li>S Lock magnetic closure</li>	<li>Large front pocket</li>	<li>Large zipped compartment Inside flat pocket</li>	<li>Strap: Removable, adjustable</li>	<li>Strap drop: 33.0 cm</li>	<li>Strap drop max: 60.0 cm</li>	<li>Handle: Single</li></ul>', '', '', '', ''),
(8, 6, 1, 1626591713, 1626591713, 1, 1626591821, 0, 2, 'HASP000008', 0, 42000000, '', 0, 'VND', 1, 1, 'g', 1, '2021_07/louis-vuitton-s-lock-messenger-taurillon-monogram-bags-m58488_pm2_front-view.png', 1, '', '2021_07/louis-vuitton-s-lock-messenger-taurillon-monogram-bags-m58488_pm1_side-view.png|2021_07/louis-vuitton-s-lock-messenger-taurillon-monogram-bags-m58489_pm2_front-view.png|2021_07/louis-vuitton-s-lock-messenger-taurillon-monogram-bags-m58489_pm1_side-view.png', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 0, 0, 0, 0, 1, 'S Lock Messenger SF', 's-lock-messenger-sf', 'Phiên bản S Lock Messenger này được chế tác bằng da Taurillon dẻo dai, nhuộm màu đen sang trọng và in nổi hoa văn Monogram lịch sử của House. Khóa từ tính của nó, một bản cập nhật hiện đại của khóa cốp xe do Georges Vuitton phát minh vào năm 1886, giúp giữ an toàn cho đồ đạc. Và thật dễ dàng để mang theo, với tay cầm lấy cảm hứng từ thân cây và dây đeo đặc trưng của LV.', '<h4>Detailed Features</h4><p>22 x 18 x 8 cm (Depth x Height x Width)</p><ul>	<li>Black</li>	<li>Monogram-embossed</li>	<li>Taurillon cowhide leather</li>	<li>Epi leather trim and lining</li>	<li>Matte black hardware</li>	<li>V stitching and embossed signature on the leather handle</li>	<li>S Lock magnetic closure</li>	<li>Large front pocket</li>	<li>Large zipped compartment Inside flat pocket</li>	<li>Strap: Removable, adjustable</li>	<li>Strap drop: 33.0 cm</li>	<li>Strap drop max: 60.0 cm</li>	<li>Handle: Single</li></ul>', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_shops`
--

CREATE TABLE `vuj_shops_shops` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_shops_carrier`
--

CREATE TABLE `vuj_shops_shops_carrier` (
  `shops_id` tinyint(3) UNSIGNED NOT NULL,
  `carrier_id` tinyint(3) UNSIGNED NOT NULL,
  `config_id` tinyint(3) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_tabs`
--

CREATE TABLE `vuj_shops_tabs` (
  `id` int(3) UNSIGNED NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_shops_tabs`
--

INSERT INTO `vuj_shops_tabs` (`id`, `icon`, `content`, `weight`, `active`, `vi_title`) VALUES
(1, '', 'content_detail', 1, 1, 'Chi tiết sản phẩm');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_tags_id_vi`
--

CREATE TABLE `vuj_shops_tags_id_vi` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_shops_tags_id_vi`
--

INSERT INTO `vuj_shops_tags_id_vi` (`id`, `tid`, `keyword`) VALUES
(1, 1, 'kim loại'),
(1, 2, 'tính biểu'),
(1, 3, 'cảm giác'),
(1, 4, 'cổ điển'),
(1, 5, 'trong khi'),
(1, 6, 'có thể'),
(1, 7, 'cho phép'),
(1, 8, 'dễ dàng'),
(1, 9, 'tiếp cận'),
(2, 3, 'cảm giác'),
(2, 7, 'cho phép'),
(2, 4, 'cổ điển'),
(2, 6, 'có thể'),
(2, 8, 'dễ dàng'),
(2, 1, 'kim loại'),
(2, 9, 'tiếp cận'),
(2, 2, 'tính biểu'),
(2, 5, 'trong khi'),
(3, 3, 'cảm giác'),
(3, 7, 'cho phép'),
(3, 4, 'cổ điển'),
(3, 6, 'có thể'),
(3, 8, 'dễ dàng'),
(3, 1, 'kim loại'),
(3, 9, 'tiếp cận'),
(3, 2, 'tính biểu'),
(3, 5, 'trong khi'),
(4, 3, 'cảm giác'),
(4, 7, 'cho phép'),
(4, 4, 'cổ điển'),
(4, 6, 'có thể'),
(4, 8, 'dễ dàng'),
(4, 1, 'kim loại'),
(4, 9, 'tiếp cận'),
(4, 2, 'tính biểu'),
(4, 5, 'trong khi'),
(5, 10, 'chế tác'),
(5, 11, 'dẻo dai'),
(5, 12, 'sang trọng'),
(5, 13, 'lịch sử'),
(5, 14, 'từ tính'),
(5, 15, 'hiện đại'),
(5, 16, 'phát minh'),
(5, 17, 'an toàn'),
(5, 18, 'đồ đạc'),
(5, 8, 'dễ dàng'),
(5, 19, 'cảm hứng'),
(6, 17, 'an toàn'),
(6, 19, 'cảm hứng'),
(6, 10, 'chế tác'),
(6, 8, 'dễ dàng'),
(6, 11, 'dẻo dai'),
(6, 18, 'đồ đạc'),
(6, 15, 'hiện đại'),
(6, 13, 'lịch sử'),
(6, 16, 'phát minh'),
(6, 12, 'sang trọng'),
(6, 14, 'từ tính'),
(7, 17, 'an toàn'),
(7, 19, 'cảm hứng'),
(7, 10, 'chế tác'),
(7, 8, 'dễ dàng'),
(7, 11, 'dẻo dai'),
(7, 18, 'đồ đạc'),
(7, 15, 'hiện đại'),
(7, 13, 'lịch sử'),
(7, 16, 'phát minh'),
(7, 12, 'sang trọng'),
(7, 14, 'từ tính'),
(8, 17, 'an toàn'),
(8, 19, 'cảm hứng'),
(8, 10, 'chế tác'),
(8, 8, 'dễ dàng'),
(8, 11, 'dẻo dai'),
(8, 18, 'đồ đạc'),
(8, 15, 'hiện đại'),
(8, 13, 'lịch sử'),
(8, 16, 'phát minh'),
(8, 12, 'sang trọng'),
(8, 14, 'từ tính');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_tags_vi`
--

CREATE TABLE `vuj_shops_tags_vi` (
  `tid` mediumint(8) UNSIGNED NOT NULL,
  `numpro` mediumint(8) NOT NULL DEFAULT '0',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` text COLLATE utf8mb4_unicode_ci,
  `keywords` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_shops_tags_vi`
--

INSERT INTO `vuj_shops_tags_vi` (`tid`, `numpro`, `alias`, `image`, `description`, `bodytext`, `keywords`) VALUES
(1, 4, 'kim-loai', '', '', '', 'kim loại'),
(2, 4, 'tinh-bieu', '', '', '', 'tính biểu'),
(3, 4, 'cam-giac', '', '', '', 'cảm giác'),
(4, 4, 'co-dien', '', '', '', 'cổ điển'),
(5, 4, 'trong-khi', '', '', '', 'trong khi'),
(6, 4, 'co-the', '', '', '', 'có thể'),
(7, 4, 'cho-phep', '', '', '', 'cho phép'),
(8, 8, 'de-dang', '', '', '', 'dễ dàng'),
(9, 4, 'tiep-can', '', '', '', 'tiếp cận'),
(10, 4, 'che-tac', '', '', '', 'chế tác'),
(11, 4, 'deo-dai', '', '', '', 'dẻo dai'),
(12, 4, 'sang-trong', '', '', '', 'sang trọng'),
(13, 4, 'lich-su', '', '', '', 'lịch sử'),
(14, 4, 'tu-tinh', '', '', '', 'từ tính'),
(15, 4, 'hien-dai', '', '', '', 'hiện đại'),
(16, 4, 'phat-minh', '', '', '', 'phát minh'),
(17, 4, 'an-toan', '', '', '', 'an toàn'),
(18, 4, 'do-dac', '', '', '', 'đồ đạc'),
(19, 4, 'cam-hung', '', '', '', 'cảm hứng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_template`
--

CREATE TABLE `vuj_shops_template` (
  `id` mediumint(8) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT '1',
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_transaction`
--

CREATE TABLE `vuj_shops_transaction` (
  `transaction_id` int(11) NOT NULL,
  `transaction_time` int(11) NOT NULL DEFAULT '0',
  `transaction_status` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `payment` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `payment_id` varchar(22) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `payment_time` int(11) NOT NULL DEFAULT '0',
  `payment_amount` double NOT NULL DEFAULT '0',
  `payment_data` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_units`
--

CREATE TABLE `vuj_shops_units` (
  `id` int(11) NOT NULL,
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_note` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_shops_units`
--

INSERT INTO `vuj_shops_units` (`id`, `vi_title`, `vi_note`) VALUES
(1, 'cái', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_warehouse`
--

CREATE TABLE `vuj_shops_warehouse` (
  `wid` int(11) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_shops_warehouse`
--

INSERT INTO `vuj_shops_warehouse` (`wid`, `title`, `note`, `user_id`, `addtime`) VALUES
(1, 'Nhập kho ngày 18/07/2021', '', 1, 1626591547),
(2, 'Nhập kho ngày 18/07/2021', '', 1, 1626591749);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_warehouse_logs`
--

CREATE TABLE `vuj_shops_warehouse_logs` (
  `logid` int(11) UNSIGNED NOT NULL,
  `wid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `pro_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `quantity` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `price` double NOT NULL DEFAULT '0',
  `money_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_shops_warehouse_logs`
--

INSERT INTO `vuj_shops_warehouse_logs` (`logid`, `wid`, `pro_id`, `quantity`, `price`, `money_unit`) VALUES
(1, 1, 1, 5, 100000000, 'VND'),
(2, 2, 5, 7, 180000000, 'VND');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_warehouse_logs_group`
--

CREATE TABLE `vuj_shops_warehouse_logs_group` (
  `id` int(11) UNSIGNED NOT NULL,
  `logid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `listgroup` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `price` double NOT NULL DEFAULT '0',
  `money_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_shops_warehouse_logs_group`
--

INSERT INTO `vuj_shops_warehouse_logs_group` (`id`, `logid`, `listgroup`, `quantity`, `price`, `money_unit`) VALUES
(1, 1, '4', 5, 100000000, 'VND'),
(2, 2, '4,31', 5, 90000000, 'VND'),
(3, 2, '4,29', 2, 90000000, 'VND');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_weight_vi`
--

CREATE TABLE `vuj_shops_weight_vi` (
  `id` tinyint(2) UNSIGNED NOT NULL,
  `code` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange` double NOT NULL DEFAULT '0',
  `round` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_shops_weight_vi`
--

INSERT INTO `vuj_shops_weight_vi` (`id`, `code`, `title`, `exchange`, `round`) VALUES
(1, 'g', 'Gram', 1, '0.1'),
(2, 'kg', 'Kilogam', 1000, '0.1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_shops_wishlist`
--

CREATE TABLE `vuj_shops_wishlist` (
  `wid` smallint(6) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `listid` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_upload_dir`
--

CREATE TABLE `vuj_upload_dir` (
  `did` mediumint(8) NOT NULL,
  `dirname` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `thumb_type` tinyint(4) NOT NULL DEFAULT '0',
  `thumb_width` smallint(6) NOT NULL DEFAULT '0',
  `thumb_height` smallint(6) NOT NULL DEFAULT '0',
  `thumb_quality` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_upload_dir`
--

INSERT INTO `vuj_upload_dir` (`did`, `dirname`, `time`, `thumb_type`, `thumb_width`, `thumb_height`, `thumb_quality`) VALUES
(0, '', 0, 1, 320, 0, 80),
(1, 'uploads', 1626588726, 0, 0, 0, 0),
(2, 'uploads/page', 1626594657, 0, 0, 0, 0),
(3, 'uploads/contact', 0, 0, 0, 0, 0),
(4, 'uploads/comment', 0, 0, 0, 0, 0),
(23, 'uploads/shops/2021_07/colors', 1626591155, 0, 0, 0, 0),
(6, 'uploads/banners', 0, 0, 0, 0, 0),
(7, 'uploads/banners/files', 0, 0, 0, 0, 0),
(8, 'uploads/news', 0, 0, 0, 0, 0),
(9, 'uploads/news/source', 0, 0, 0, 0, 0),
(10, 'uploads/news/temp_pic', 0, 0, 0, 0, 0),
(11, 'uploads/news/topics', 0, 0, 0, 0, 0),
(12, 'uploads/users', 0, 0, 0, 0, 0),
(13, 'uploads/users/groups', 0, 0, 0, 0, 0),
(14, 'uploads/menu', 0, 0, 0, 0, 0),
(16, 'uploads/siteterms', 0, 0, 0, 0, 0),
(17, 'uploads/newsnotice', 0, 0, 0, 0, 0),
(18, 'uploads/shops/temp_pic', 0, 0, 0, 0, 0),
(19, 'uploads/shops/2021_07', 1626591151, 0, 0, 0, 0),
(20, 'uploads/shops/files', 0, 0, 0, 0, 0),
(21, 'uploads/slider', 1626601420, 0, 0, 0, 0),
(22, 'uploads/slider/image', 1626601422, 0, 0, 0, 0),
(24, 'uploads/news/2021_07', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_upload_file`
--

CREATE TABLE `vuj_upload_file` (
  `name` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `srcwidth` int(11) NOT NULL DEFAULT '0',
  `srcheight` int(11) NOT NULL DEFAULT '0',
  `sizes` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  `did` int(11) NOT NULL DEFAULT '0',
  `title` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_upload_file`
--

INSERT INTO `vuj_upload_file` (`name`, `ext`, `type`, `filesize`, `src`, `srcwidth`, `srcheight`, `sizes`, `userid`, `mtime`, `did`, `title`, `alt`) VALUES
('banner.jpeg', 'jpeg', 'image', 104893, 'assets/banner.jpeg', 80, 54, '1160|779', 1, 1626588746, 1, 'banner.jpeg', 'banner'),
('logo_op.png', 'png', 'image', 3591, 'assets/logo_op.png', 80, 17, '320|68', 1, 1626588746, 1, 'logo_op.png', 'logo op'),
('logo.png', 'png', 'image', 8395, 'assets/logo.png', 80, 17, '320|68', 1, 1626588746, 1, 'logo.png', 'logo'),
('white.png', 'png', 'image', 2580, 'assets/shops/2021_07/colors/white.png', 80, 80, '50|50', 1, 1626591167, 23, 'white.png', 'white'),
('black.png', 'png', 'image', 2580, 'assets/shops/2021_07/colors/black.png', 80, 80, '50|50', 1, 1626591167, 23, 'black.png', 'black'),
('blue.png', 'png', 'image', 2581, 'assets/shops/2021_07/colors/blue.png', 80, 80, '50|50', 1, 1626591167, 23, 'blue.png', 'blue'),
('green.png', 'png', 'image', 2573, 'assets/shops/2021_07/colors/green.png', 80, 80, '50|50', 1, 1626591168, 23, 'green.png', 'green'),
('orange.png', 'png', 'image', 2581, 'assets/shops/2021_07/colors/orange.png', 80, 80, '50|50', 1, 1626591168, 23, 'orange.png', 'orange'),
('pink.png', 'png', 'image', 2582, 'assets/shops/2021_07/colors/pink.png', 80, 80, '50|50', 1, 1626591168, 23, 'pink.png', 'pink'),
('red.png', 'png', 'image', 2582, 'assets/shops/2021_07/colors/red.png', 80, 80, '50|50', 1, 1626591168, 23, 'red.png', 'red'),
('yellow.png', 'png', 'image', 2582, 'assets/shops/2021_07/colors/yellow.png', 80, 80, '50|50', 1, 1626591168, 23, 'yellow.png', 'yellow'),
('louis-vuit...png', 'png', 'image', 55305, 'assets/shops/2021_07/louis-vuitton-lvxnba-handle-trunk-monogram-other-bags-m45785_pm2_front-view.png', 80, 80, '600|600', 1, 1626591401, 19, 'louis-vuitton-lvxnba-handle-trunk-monogram-other-bags-m45785_pm2_front-view.png', 'louis vuitton lvxnba handle trunk monogram other bags m45785 pm2 front view'),
('louis-vuit...png', 'png', 'image', 32548, 'assets/shops/2021_07/louis-vuitton-s-lock-messenger-taurillon-monogram-bags-m58488_pm1_side-view.png', 80, 80, '600|600', 1, 1626591402, 19, 'louis-vuitton-s-lock-messenger-taurillon-monogram-bags-m58488_pm1_side-view.png', 'louis vuitton s lock messenger taurillon monogram bags m58488 pm1 side view'),
('louis-vuit...png', 'png', 'image', 50920, 'assets/shops/2021_07/louis-vuitton-s-lock-messenger-taurillon-monogram-bags-m58488_pm2_front-view.png', 80, 80, '600|600', 1, 1626591402, 19, 'louis-vuitton-s-lock-messenger-taurillon-monogram-bags-m58488_pm2_front-view.png', 'louis vuitton s lock messenger taurillon monogram bags m58488 pm2 front view'),
('louis-vuit...png', 'png', 'image', 27891, 'assets/shops/2021_07/louis-vuitton-s-lock-messenger-taurillon-monogram-bags-m58489_pm1_side-view.png', 80, 80, '600|600', 1, 1626591402, 19, 'louis-vuitton-s-lock-messenger-taurillon-monogram-bags-m58489_pm1_side-view.png', 'louis vuitton s lock messenger taurillon monogram bags m58489 pm1 side view'),
('louis-vuit...png', 'png', 'image', 45253, 'assets/shops/2021_07/louis-vuitton-s-lock-messenger-taurillon-monogram-bags-m58489_pm2_front-view.png', 80, 80, '600|600', 1, 1626591402, 19, 'louis-vuitton-s-lock-messenger-taurillon-monogram-bags-m58489_pm2_front-view.png', 'louis vuitton s lock messenger taurillon monogram bags m58489 pm2 front view'),
('louis-vuit...png', 'png', 'image', 36374, 'assets/shops/2021_07/louis-vuitton-lvxnba-handle-trunk-monogram-other-bags-m45785_pm1_back-view.png', 80, 80, '600|600', 1, 1626591403, 19, 'louis-vuitton-lvxnba-handle-trunk-monogram-other-bags-m45785_pm1_back-view.png', 'louis vuitton lvxnba handle trunk monogram other bags m45785 pm1 back view'),
('louis-vuit...png', 'png', 'image', 24651, 'assets/shops/2021_07/louis-vuitton-lvxnba-handle-trunk-monogram-other-bags-m45785_pm1_interior-view.png', 80, 80, '600|600', 1, 1626591403, 19, 'louis-vuitton-lvxnba-handle-trunk-monogram-other-bags-m45785_pm1_interior-view.png', 'louis vuitton lvxnba handle trunk monogram other bags m45785 pm1 interior view'),
('louis-vuit...png', 'png', 'image', 28113, 'assets/shops/2021_07/louis-vuitton-lvxnba-handle-trunk-monogram-other-bags-m45785_pm1_side-view.png', 80, 80, '600|600', 1, 1626591403, 19, 'louis-vuitton-lvxnba-handle-trunk-monogram-other-bags-m45785_pm1_side-view.png', 'louis vuitton lvxnba handle trunk monogram other bags m45785 pm1 side view'),
('louis-vuit...png', 'png', 'image', 289333, 'assets/slider/image/louis-vuitton-lvxnba-handle-trunk-monogram.png', 80, 80, '1000|1000', 1, 1626601440, 22, 'louis-vuitton-lvxnba-handle-trunk-monogram.png', 'louis vuitton lvxnba handle trunk monogram'),
('avatar.png', 'png', 'image', 2127, 'assets/avatar.png', 80, 80, '64|64', 1, 1626609806, 1, 'avatar.png', 'avatar');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_users`
--

CREATE TABLE `vuj_users` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text COLLATE utf8mb4_unicode_ci,
  `regdate` int(11) NOT NULL DEFAULT '0',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `passlostkey` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `view_mail` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `remember` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `in_groups` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `active2step` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `secretkey` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `checknum` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_openid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_update` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Thời điểm cập nhật thông tin lần cuối',
  `idsite` int(11) NOT NULL DEFAULT '0',
  `safemode` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `safekey` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `email_verification_time` int(11) NOT NULL DEFAULT '-1' COMMENT '-3: Tài khoản sys, -2: Admin kích hoạt, -1 không cần kích hoạt, 0: Chưa xác minh, > 0 thời gian xác minh',
  `active_obj` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'SYSTEM' COMMENT 'SYSTEM, EMAIL, OAUTH:xxxx, quản trị kích hoạt thì lưu userid'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_users`
--

INSERT INTO `vuj_users` (`userid`, `group_id`, `username`, `md5username`, `password`, `email`, `first_name`, `last_name`, `gender`, `photo`, `birthday`, `sig`, `regdate`, `question`, `answer`, `passlostkey`, `view_mail`, `remember`, `in_groups`, `active`, `active2step`, `secretkey`, `checknum`, `last_login`, `last_ip`, `last_agent`, `last_openid`, `last_update`, `idsite`, `safemode`, `safekey`, `email_verification_time`, `active_obj`) VALUES
(1, 1, 'adminweb', 'af03798e4f9010c54d2eb6f386124f7e', '{SSHA512}JeO6CsCJ1XNuvZnEPh+r7MHRR7uMaIPQp7aBbR1wwaYNL7ha3V3wyTjb34Wuugk31tVEC4onWsE3mW0NtktDkzkzYWU=', 'im@vuji.tech', 'adminweb', '', 'M', '', 946659600, '', 1626587681, 'Ban la ai', 'Vuji Tech', '', 0, 1, '1,4', 1, 0, '', '', 1626587681, '', '', '', 1626589112, 0, 0, '', 0, 'SYSTEM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_users_backupcodes`
--

CREATE TABLE `vuj_users_backupcodes` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_used` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `time_used` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `time_creat` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_users_config`
--

CREATE TABLE `vuj_users_config` (
  `config` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_users_config`
--

INSERT INTO `vuj_users_config` (`config`, `content`, `edit_time`) VALUES
('access_admin', 'a:8:{s:15:\"access_viewlist\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:12:\"access_addus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:14:\"access_waiting\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:17:\"access_editcensor\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_editus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:12:\"access_delus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_passus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_groups\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}}', 1352873462),
('password_simple', '000000|1234|2000|12345|111111|123123|123456|11223344|654321|696969|1234567|12345678|87654321|123456789|23456789|1234567890|66666666|68686868|66668888|88888888|99999999|999999999|1234569|12345679|aaaaaa|abc123|abc123@|abc@123|admin123|admin123@|admin@123|nuke123|nuke123@|nuke@123|adobe1|adobe123|azerty|baseball|dragon|football|harley|iloveyou|jennifer|jordan|letmein|macromedia|master|michael|monkey|mustang|password|photoshop|pussy|qwerty|shadow|superman|hoilamgi|khongbiet|khongco|khongcopass', 1626587642),
('deny_email', 'yoursite.com|mysite.com|localhost|xxx', 1626587642),
('deny_name', 'anonimo|anonymous|god|linux|nobody|operator|root', 1626587642),
('avatar_width', '80', 1626587642),
('avatar_height', '80', 1626587642),
('active_group_newusers', '0', 1626587642),
('active_editinfo_censor', '0', 1626587642),
('active_user_logs', '1', 1626587642),
('min_old_user', '16', 1626587642),
('register_active_time', '86400', 1626587642),
('auto_assign_oauthuser', '0', 1626587642),
('siteterms_vi', '<p> Để trở thành thành viên, bạn phải cam kết đồng ý với các điều khoản dưới đây. Chúng tôi có thể thay đổi lại những điều khoản này vào bất cứ lúc nào và chúng tôi sẽ cố gắng thông báo đến bạn kịp thời.<br /> <br /> Bạn cam kết không gửi bất cứ bài viết có nội dung lừa đảo, thô tục, thiếu văn hoá; vu khống, khiêu khích, đe doạ người khác; liên quan đến các vấn đề tình dục hay bất cứ nội dung nào vi phạm luật pháp của quốc gia mà bạn đang sống, luật pháp của quốc gia nơi đặt máy chủ của website này hay luật pháp quốc tế. Nếu vẫn cố tình vi phạm, ngay lập tức bạn sẽ bị cấm tham gia vào website. Địa chỉ IP của tất cả các bài viết đều được ghi nhận lại để bảo vệ các điều khoản cam kết này trong trường hợp bạn không tuân thủ.<br /> <br /> Bạn đồng ý rằng website có quyền gỡ bỏ, sửa, di chuyển hoặc khoá bất kỳ bài viết nào trong website vào bất cứ lúc nào tuỳ theo nhu cầu công việc.<br /> <br /> Đăng ký làm thành viên của chúng tôi, bạn cũng phải đồng ý rằng, bất kỳ thông tin cá nhân nào mà bạn cung cấp đều được lưu trữ trong cơ sở dữ liệu của hệ thống. Mặc dù những thông tin này sẽ không được cung cấp cho bất kỳ người thứ ba nào khác mà không được sự đồng ý của bạn, chúng tôi không chịu trách nhiệm về việc những thông tin cá nhân này của bạn bị lộ ra bên ngoài từ những kẻ phá hoại có ý đồ xấu tấn công vào cơ sở dữ liệu của hệ thống.</p>', 1274757129);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_users_edit`
--

CREATE TABLE `vuj_users_edit` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `lastedit` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `info_basic` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `info_custom` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_users_field`
--

CREATE TABLE `vuj_users_field` (
  `fid` mediumint(8) NOT NULL,
  `field` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `field_type` enum('number','date','textbox','textarea','editor','select','radio','checkbox','multiselect') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'textbox',
  `field_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sql_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `match_type` enum('none','alphanumeric','unicodename','email','url','regex','callback') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `match_regex` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_callback` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT '0',
  `max_length` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `required` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `show_register` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `user_editable` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `show_profile` tinyint(4) NOT NULL DEFAULT '1',
  `class` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_system` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_users_field`
--

INSERT INTO `vuj_users_field` (`fid`, `field`, `weight`, `field_type`, `field_choices`, `sql_choices`, `match_type`, `match_regex`, `func_callback`, `min_length`, `max_length`, `required`, `show_register`, `user_editable`, `show_profile`, `class`, `language`, `default_value`, `is_system`) VALUES
(1, 'first_name', 1, 'textbox', '', '', 'unicodename', '', '', 0, 100, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:4:\"Tên\";i:1;s:0:\"\";}}', '', 1),
(2, 'last_name', 2, 'textbox', '', '', 'unicodename', '', '', 0, 100, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:20:\"Họ và tên đệm\";i:1;s:0:\"\";}}', '', 1),
(3, 'gender', 3, 'select', 'a:3:{s:1:\"N\";s:0:\"\";s:1:\"M\";s:0:\"\";s:1:\"F\";s:0:\"\";}', '', 'none', '', '', 0, 1, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:12:\"Giới tính\";i:1;s:0:\"\";}}', '2', 1),
(4, 'birthday', 4, 'date', 'a:1:{s:12:\"current_date\";i:0;}', '', 'none', '', '', 0, 0, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Ngày tháng năm sinh\";i:1;s:0:\"\";}}', '0', 1),
(5, 'sig', 5, 'textarea', '', '', 'none', '', '', 0, 1000, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:9:\"Chữ ký\";i:1;s:0:\"\";}}', '', 1),
(6, 'question', 6, 'textbox', '', '', 'none', '', '', 3, 255, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Câu hỏi bảo mật\";i:1;s:0:\"\";}}', '', 1),
(7, 'answer', 7, 'textbox', '', '', 'none', '', '', 3, 255, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Trả lời câu hỏi\";i:1;s:0:\"\";}}', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_users_groups`
--

CREATE TABLE `vuj_users_groups` (
  `group_id` smallint(5) UNSIGNED NOT NULL,
  `alias` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `group_type` tinyint(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0:Sys, 1:approval, 2:public',
  `group_color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `require_2step_admin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `require_2step_site` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL,
  `exp_time` int(11) NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL,
  `idsite` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `numbers` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `siteus` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `config` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_users_groups`
--

INSERT INTO `vuj_users_groups` (`group_id`, `alias`, `email`, `group_type`, `group_color`, `group_avatar`, `require_2step_admin`, `require_2step_site`, `is_default`, `add_time`, `exp_time`, `weight`, `act`, `idsite`, `numbers`, `siteus`, `config`) VALUES
(1, 'Super-Admin', '', 0, '', '', 0, 0, 0, 1626587642, 0, 1, 1, 0, 1, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(2, 'General-Admin', '', 0, '', '', 0, 0, 0, 1626587642, 0, 2, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(3, 'Module-Admin', '', 0, '', '', 0, 0, 0, 1626587642, 0, 3, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(4, 'Users', '', 0, '', '', 0, 0, 0, 1626587642, 0, 4, 1, 0, 1, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(7, 'New-Users', '', 0, '', '', 0, 0, 0, 1626587642, 0, 5, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(5, 'Guest', '', 0, '', '', 0, 0, 0, 1626587642, 0, 6, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(6, 'All', '', 0, '', '', 0, 0, 0, 1626587642, 0, 7, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_users_groups_detail`
--

CREATE TABLE `vuj_users_groups_detail` (
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_users_groups_detail`
--

INSERT INTO `vuj_users_groups_detail` (`group_id`, `lang`, `title`, `description`, `content`) VALUES
(1, 'vi', 'Super Admin', '', ''),
(2, 'vi', 'General Admin', '', ''),
(3, 'vi', 'Module Admin', '', ''),
(4, 'vi', 'Users', '', ''),
(7, 'vi', 'New Users', '', ''),
(5, 'vi', 'Guest', '', ''),
(6, 'vi', 'All', '', ''),
(10, 'vi', 'Người hâm mộ', 'Nhóm những người hâm mộ hệ thống NukeViet', ''),
(11, 'vi', 'Người quản lý', 'Nhóm những người quản lý website xây dựng bằng hệ thống NukeViet', ''),
(12, 'vi', 'Lập trình viên', 'Nhóm Lập trình viên hệ thống NukeViet', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_users_groups_users`
--

CREATE TABLE `vuj_users_groups_users` (
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `is_leader` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `approved` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_requested` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Thời gian yêu cầu tham gia',
  `time_approved` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Thời gian duyệt yêu cầu tham gia'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_users_groups_users`
--

INSERT INTO `vuj_users_groups_users` (`group_id`, `userid`, `is_leader`, `approved`, `data`, `time_requested`, `time_approved`) VALUES
(1, 1, 1, 1, '0', 1626587681, 1626587681);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_users_info`
--

CREATE TABLE `vuj_users_info` (
  `userid` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_users_info`
--

INSERT INTO `vuj_users_info` (`userid`) VALUES
(1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_users_openid`
--

CREATE TABLE `vuj_users_openid` (
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `openid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `opid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_users_question`
--

CREATE TABLE `vuj_users_question` (
  `qid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_users_question`
--

INSERT INTO `vuj_users_question` (`qid`, `title`, `lang`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Bạn thích môn thể thao nào nhất', 'vi', 1, 1274840238, 1274840238),
(2, 'Món ăn mà bạn yêu thích', 'vi', 2, 1274840250, 1274840250),
(3, 'Thần tượng điện ảnh của bạn', 'vi', 3, 1274840257, 1274840257),
(4, 'Bạn thích nhạc sỹ nào nhất', 'vi', 4, 1274840264, 1274840264),
(5, 'Quê ngoại của bạn ở đâu', 'vi', 5, 1274840270, 1274840270),
(6, 'Tên cuốn sách &quot;gối đầu giường&quot;', 'vi', 6, 1274840278, 1274840278),
(7, 'Ngày lễ mà bạn luôn mong đợi', 'vi', 7, 1274840285, 1274840285);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_users_reg`
--

CREATE TABLE `vuj_users_reg` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text COLLATE utf8mb4_unicode_ci,
  `regdate` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checknum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `users_info` text COLLATE utf8mb4_unicode_ci,
  `openid_info` text COLLATE utf8mb4_unicode_ci,
  `idsite` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_blocks_groups`
--

CREATE TABLE `vuj_vi_blocks_groups` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `theme` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp_time` int(11) DEFAULT '0',
  `active` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `all_func` tinyint(4) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `config` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_vi_blocks_groups`
--

INSERT INTO `vuj_vi_blocks_groups` (`bid`, `theme`, `module`, `file_name`, `title`, `link`, `template`, `position`, `exp_time`, `active`, `act`, `groups_view`, `all_func`, `weight`, `config`) VALUES
(31, 'default', 'shops', 'global.block_cart.php', 'Giỏ hàng', '', 'no_title', '[CART]', 0, '1', 1, '6', 1, 1, ''),
(32, 'default', 'theme', 'global.company_info.php', 'Thông tin cửa hàng', '', 'no_title', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:13:{s:12:\"company_name\";s:15:\"Hải Âu Store\";s:16:\"company_sortname\";s:0:\"\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:31:\"100.000₫ đến 30.000.000₫\";s:15:\"company_address\";s:22:\"Nha Trang, Khánh Hòa\";s:15:\"company_showmap\";i:0;s:14:\"company_mapurl\";s:326:\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2634.116366996857!2d105.79399620326203!3d20.9844946314258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac93055e2f2f%3A0x91f4b423089193dd!2zQ8O0bmcgdHkgQ-G7lSBwaOG6p24gUGjDoXQgdHJp4buDbiBOZ3Xhu5NuIG3hu58gVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1558315703646!5m2!1svi!2s\";s:13:\"company_phone\";s:74:\"+84-24-85872007&#91;+842485872007&#93;|+84-904762534&#91;+84904762534&#93;\";s:11:\"company_fax\";s:0:\"\";s:13:\"company_email\";s:17:\"im@haiaustore.com\";s:15:\"company_website\";s:0:\"\";}'),
(33, 'default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[COPYRIGHT]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"copyright_by\";s:14:\"Haiaustore.com\";s:13:\"copyright_url\";s:1:\"/\";s:9:\"design_by\";s:9:\"Vuji.Tech\";s:10:\"design_url\";s:18:\"https://vuji.tech/\";s:13:\"siteterms_url\";s:35:\"/index.php?language=vi&nv=siteterms\";}'),
(34, 'default', 'theme', 'global.social.php', 'Mạng xã hội', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, 'a:5:{s:8:\"facebook\";s:24:\"https://www.facebook.com\";s:7:\"youtube\";s:23:\"https://www.youtube.com\";s:7:\"twitter\";s:19:\"https://twitter.com\";s:9:\"instagram\";s:25:\"https://www.instagram.com\";s:4:\"zalo\";s:10:\"0123456789\";}'),
(35, 'default', 'contact', 'global.contact_topbar.php', 'Hotline đầu trang', '', 'no_title', '[CONTACT_TOPBAR]', 0, '1', 1, '6', 1, 1, 'a:1:{s:12:\"departmentid\";i:1;}'),
(36, 'default', 'menu', 'global.bootstrap.php', 'Menu chính', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(37, 'default', 'menu', 'global.superfish.php', 'Danh mục sản phẩm', '', 'menu_product', '[PRODUCT_MENU]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:2;s:12:\"title_length\";i:0;}'),
(38, 'default', 'newsnotice', 'global.newsnotice_reg_email.php', 'Đăng ký nhận tin', '', 'no_title', '[NEWSNOTICE]', 0, '1', 1, '6', 1, 1, 'a:1:{s:4:\"text\";s:98:\"Đăng ký để nhận những tin tức khuyến mãi, giảm giá hấp dẫn từ chúng tôi.\";}'),
(39, 'default', 'shops', 'global.block_catalogs.php', 'Danh mục sản phẩm', '', 'widget_shop_categories', '[LEFT]', 0, '1', 1, '6', 0, 1, 'a:1:{s:7:\"cut_num\";i:24;}'),
(40, 'default', 'shops', 'module.block_filter_product.php', 'Lọc sản phẩm', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 2, 'a:1:{s:19:\"display_group_price\";i:1;}'),
(41, 'default', 'slider', 'global.slider.php', 'Home slider', '', 'no_title', '[HOME_SLIDER]', 0, '1', 1, '6', 0, 1, 'a:3:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:3;s:6:\"plugin\";s:16:\"tiny-slider-home\";}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_blocks_weight`
--

CREATE TABLE `vuj_vi_blocks_weight` (
  `bid` mediumint(8) NOT NULL DEFAULT '0',
  `func_id` mediumint(8) NOT NULL DEFAULT '0',
  `weight` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_vi_blocks_weight`
--

INSERT INTO `vuj_vi_blocks_weight` (`bid`, `func_id`, `weight`) VALUES
(31, 52, 1),
(31, 80, 1),
(31, 96, 1),
(31, 75, 1),
(31, 89, 1),
(31, 71, 1),
(31, 81, 1),
(31, 82, 1),
(31, 78, 1),
(31, 77, 1),
(31, 90, 1),
(31, 73, 1),
(31, 97, 1),
(31, 95, 1),
(31, 83, 1),
(31, 93, 1),
(31, 76, 1),
(31, 70, 1),
(31, 69, 1),
(31, 4, 1),
(31, 5, 1),
(31, 6, 1),
(31, 7, 1),
(31, 8, 1),
(31, 9, 1),
(31, 10, 1),
(31, 11, 1),
(31, 12, 1),
(31, 13, 1),
(31, 32, 1),
(31, 41, 1),
(31, 42, 1),
(31, 43, 1),
(31, 44, 1),
(31, 68, 1),
(31, 67, 1),
(31, 50, 1),
(31, 20, 1),
(31, 21, 1),
(31, 22, 1),
(31, 23, 1),
(31, 24, 1),
(31, 25, 1),
(31, 26, 1),
(31, 27, 1),
(31, 28, 1),
(31, 29, 1),
(31, 30, 1),
(31, 60, 1),
(31, 61, 1),
(31, 63, 1),
(31, 64, 1),
(31, 65, 1),
(32, 52, 1),
(32, 80, 1),
(32, 96, 1),
(32, 75, 1),
(32, 89, 1),
(32, 71, 1),
(32, 81, 1),
(32, 82, 1),
(32, 78, 1),
(32, 77, 1),
(32, 90, 1),
(32, 73, 1),
(32, 97, 1),
(32, 95, 1),
(32, 83, 1),
(32, 93, 1),
(32, 76, 1),
(32, 70, 1),
(32, 69, 1),
(32, 4, 1),
(32, 5, 1),
(32, 6, 1),
(32, 7, 1),
(32, 8, 1),
(32, 9, 1),
(32, 10, 1),
(32, 11, 1),
(32, 12, 1),
(32, 13, 1),
(32, 32, 1),
(32, 41, 1),
(32, 42, 1),
(32, 43, 1),
(32, 44, 1),
(32, 68, 1),
(32, 67, 1),
(32, 50, 1),
(32, 20, 1),
(32, 21, 1),
(32, 22, 1),
(32, 23, 1),
(32, 24, 1),
(32, 25, 1),
(32, 26, 1),
(32, 27, 1),
(32, 28, 1),
(32, 29, 1),
(32, 30, 1),
(32, 60, 1),
(32, 61, 1),
(32, 63, 1),
(32, 64, 1),
(32, 65, 1),
(33, 52, 1),
(33, 80, 1),
(33, 96, 1),
(33, 75, 1),
(33, 89, 1),
(33, 71, 1),
(33, 81, 1),
(33, 82, 1),
(33, 78, 1),
(33, 77, 1),
(33, 90, 1),
(33, 73, 1),
(33, 97, 1),
(33, 95, 1),
(33, 83, 1),
(33, 93, 1),
(33, 76, 1),
(33, 70, 1),
(33, 69, 1),
(33, 4, 1),
(33, 5, 1),
(33, 6, 1),
(33, 7, 1),
(33, 8, 1),
(33, 9, 1),
(33, 10, 1),
(33, 11, 1),
(33, 12, 1),
(33, 13, 1),
(33, 32, 1),
(33, 41, 1),
(33, 42, 1),
(33, 43, 1),
(33, 44, 1),
(33, 68, 1),
(33, 67, 1),
(33, 50, 1),
(33, 20, 1),
(33, 21, 1),
(33, 22, 1),
(33, 23, 1),
(33, 24, 1),
(33, 25, 1),
(33, 26, 1),
(33, 27, 1),
(33, 28, 1),
(33, 29, 1),
(33, 30, 1),
(33, 60, 1),
(33, 61, 1),
(33, 63, 1),
(33, 64, 1),
(33, 65, 1),
(34, 52, 1),
(34, 80, 1),
(34, 96, 1),
(34, 75, 1),
(34, 89, 1),
(34, 71, 1),
(34, 81, 1),
(34, 82, 1),
(34, 78, 1),
(34, 77, 1),
(34, 90, 1),
(34, 73, 1),
(34, 97, 1),
(34, 95, 1),
(34, 83, 1),
(34, 93, 1),
(34, 76, 1),
(34, 70, 1),
(34, 69, 1),
(34, 4, 1),
(34, 5, 1),
(34, 6, 1),
(34, 7, 1),
(34, 8, 1),
(34, 9, 1),
(34, 10, 1),
(34, 11, 1),
(34, 12, 1),
(34, 13, 1),
(34, 32, 1),
(34, 41, 1),
(34, 42, 1),
(34, 43, 1),
(34, 44, 1),
(34, 68, 1),
(34, 67, 1),
(34, 50, 1),
(34, 20, 1),
(34, 21, 1),
(34, 22, 1),
(34, 23, 1),
(34, 24, 1),
(34, 25, 1),
(34, 26, 1),
(34, 27, 1),
(34, 28, 1),
(34, 29, 1),
(34, 30, 1),
(34, 60, 1),
(34, 61, 1),
(34, 63, 1),
(34, 64, 1),
(34, 65, 1),
(35, 52, 1),
(35, 80, 1),
(35, 96, 1),
(35, 75, 1),
(35, 89, 1),
(35, 71, 1),
(35, 81, 1),
(35, 82, 1),
(35, 78, 1),
(35, 77, 1),
(35, 90, 1),
(35, 73, 1),
(35, 97, 1),
(35, 95, 1),
(35, 83, 1),
(35, 93, 1),
(35, 76, 1),
(35, 70, 1),
(35, 69, 1),
(35, 4, 1),
(35, 5, 1),
(35, 6, 1),
(35, 7, 1),
(35, 8, 1),
(35, 9, 1),
(35, 10, 1),
(35, 11, 1),
(35, 12, 1),
(35, 13, 1),
(35, 32, 1),
(35, 41, 1),
(35, 42, 1),
(35, 43, 1),
(35, 44, 1),
(35, 68, 1),
(35, 67, 1),
(35, 50, 1),
(35, 20, 1),
(35, 21, 1),
(35, 22, 1),
(35, 23, 1),
(35, 24, 1),
(35, 25, 1),
(35, 26, 1),
(35, 27, 1),
(35, 28, 1),
(35, 29, 1),
(35, 30, 1),
(35, 60, 1),
(35, 61, 1),
(35, 63, 1),
(35, 64, 1),
(35, 65, 1),
(36, 52, 1),
(36, 80, 1),
(36, 96, 1),
(36, 75, 1),
(36, 89, 1),
(36, 71, 1),
(36, 81, 1),
(36, 82, 1),
(36, 78, 1),
(36, 77, 1),
(36, 90, 1),
(36, 73, 1),
(36, 97, 1),
(36, 95, 1),
(36, 83, 1),
(36, 93, 1),
(36, 76, 1),
(36, 70, 1),
(36, 69, 1),
(36, 4, 1),
(36, 5, 1),
(36, 6, 1),
(36, 7, 1),
(36, 8, 1),
(36, 9, 1),
(36, 10, 1),
(36, 11, 1),
(36, 12, 1),
(36, 13, 1),
(36, 32, 1),
(36, 41, 1),
(36, 42, 1),
(36, 43, 1),
(36, 44, 1),
(36, 68, 1),
(36, 67, 1),
(36, 50, 1),
(36, 20, 1),
(36, 21, 1),
(36, 22, 1),
(36, 23, 1),
(36, 24, 1),
(36, 25, 1),
(36, 26, 1),
(36, 27, 1),
(36, 28, 1),
(36, 29, 1),
(36, 30, 1),
(36, 60, 1),
(36, 61, 1),
(36, 63, 1),
(36, 64, 1),
(36, 65, 1),
(37, 52, 1),
(37, 80, 1),
(37, 96, 1),
(37, 75, 1),
(37, 89, 1),
(37, 71, 1),
(37, 81, 1),
(37, 82, 1),
(37, 78, 1),
(37, 77, 1),
(37, 90, 1),
(37, 73, 1),
(37, 97, 1),
(37, 95, 1),
(37, 83, 1),
(37, 93, 1),
(37, 76, 1),
(37, 70, 1),
(37, 69, 1),
(37, 4, 1),
(37, 5, 1),
(37, 6, 1),
(37, 7, 1),
(37, 8, 1),
(37, 9, 1),
(37, 10, 1),
(37, 11, 1),
(37, 12, 1),
(37, 13, 1),
(37, 32, 1),
(37, 41, 1),
(37, 42, 1),
(37, 43, 1),
(37, 44, 1),
(37, 68, 1),
(37, 67, 1),
(37, 50, 1),
(37, 20, 1),
(37, 21, 1),
(37, 22, 1),
(37, 23, 1),
(37, 24, 1),
(37, 25, 1),
(37, 26, 1),
(37, 27, 1),
(37, 28, 1),
(37, 29, 1),
(37, 30, 1),
(37, 60, 1),
(37, 61, 1),
(37, 63, 1),
(37, 64, 1),
(37, 65, 1),
(38, 52, 1),
(38, 80, 1),
(38, 96, 1),
(38, 75, 1),
(38, 89, 1),
(38, 71, 1),
(38, 81, 1),
(38, 82, 1),
(38, 78, 1),
(38, 77, 1),
(38, 90, 1),
(38, 73, 1),
(38, 97, 1),
(38, 95, 1),
(38, 83, 1),
(38, 93, 1),
(38, 76, 1),
(38, 70, 1),
(38, 69, 1),
(38, 4, 1),
(38, 5, 1),
(38, 6, 1),
(38, 7, 1),
(38, 8, 1),
(38, 9, 1),
(38, 10, 1),
(38, 11, 1),
(38, 12, 1),
(38, 13, 1),
(38, 32, 1),
(38, 41, 1),
(38, 42, 1),
(38, 43, 1),
(38, 44, 1),
(38, 68, 1),
(38, 67, 1),
(38, 50, 1),
(38, 20, 1),
(38, 21, 1),
(38, 22, 1),
(38, 23, 1),
(38, 24, 1),
(38, 25, 1),
(38, 26, 1),
(38, 27, 1),
(38, 28, 1),
(38, 29, 1),
(38, 30, 1),
(38, 60, 1),
(38, 61, 1),
(38, 63, 1),
(38, 64, 1),
(38, 65, 1),
(39, 80, 1),
(39, 96, 1),
(39, 75, 1),
(39, 89, 1),
(39, 71, 1),
(39, 81, 1),
(39, 82, 1),
(39, 78, 1),
(39, 77, 1),
(39, 90, 1),
(39, 73, 1),
(39, 97, 1),
(39, 95, 1),
(39, 83, 1),
(39, 93, 1),
(39, 76, 1),
(39, 70, 1),
(39, 69, 1),
(40, 80, 2),
(40, 96, 2),
(40, 75, 2),
(40, 89, 2),
(40, 71, 2),
(40, 81, 2),
(40, 82, 2),
(40, 78, 2),
(40, 77, 2),
(40, 90, 2),
(40, 73, 2),
(40, 97, 2),
(40, 95, 2),
(40, 83, 2),
(40, 93, 2),
(40, 76, 2),
(40, 70, 2),
(40, 69, 2),
(41, 52, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_comment`
--

CREATE TABLE `vuj_vi_comment` (
  `cid` mediumint(8) UNSIGNED NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` int(11) NOT NULL DEFAULT '0',
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `pid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attach` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `post_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `dislikes` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_contact_department`
--

CREATE TABLE `vuj_vi_contact_department` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `full_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cats` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admins` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` smallint(5) NOT NULL,
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_vi_contact_department`
--

INSERT INTO `vuj_vi_contact_department` (`id`, `full_name`, `alias`, `image`, `phone`, `fax`, `email`, `address`, `note`, `others`, `cats`, `admins`, `act`, `weight`, `is_default`) VALUES
(1, 'Phòng Chăm sóc khách hàng', 'Cham-soc-khach-hang', '', '&#40;08&#41; 38.000.000&#91;+84838000000&#93;', '08 38.000.001', 'customer@mysite.com', 'Nha Trang, Khánh Hòa', 'Bộ phận tiếp nhận và giải quyết các yêu cầu, đề nghị, ý kiến liên quan đến hoạt động chính của doanh nghiệp', '{\"maps\":\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d53357.14257194912!2d-73.07268695801845!3d40.78017062807504!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89e8483b8bffed93%3A0x53467ceb834b7397!2s396+Lillian+Blvd%2C+Holbrook%2C+NY+11741%2C+USA!5e0!3m2!1sen!2sua!4v1558703206875!5m2!1sen!2sua\"}', 'Tư vấn|Khiếu nại, phản ánh|Đề nghị hợp tác', '1/1/1/0', 1, 1, 1),
(2, 'Phòng Kỹ thuật', 'Ky-thuat', '', '(08) 38.000.002[+84838000002]', '08 38.000.003', 'technical@mysite.com', '', 'Bộ phận tiếp nhận và giải quyết các câu hỏi liên quan đến kỹ thuật', '{\"viber\":\"myViber2\",\"skype\":\"mySkype2\",\"yahoo\":\"myYahoo2\"}', 'Thông báo lỗi|Góp ý cải tiến', '1/1/1/0;', 1, 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_contact_reply`
--

CREATE TABLE `vuj_vi_contact_reply` (
  `rid` mediumint(8) UNSIGNED NOT NULL,
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `reply_content` text COLLATE utf8mb4_unicode_ci,
  `reply_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `reply_aid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_contact_send`
--

CREATE TABLE `vuj_vi_contact_send` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `cid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `sender_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `sender_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sender_ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_read` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_reply` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_processed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `processed_by` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `processed_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_contact_supporter`
--

CREATE TABLE `vuj_vi_contact_supporter` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `departmentid` smallint(5) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `weight` smallint(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_menu`
--

CREATE TABLE `vuj_vi_menu` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_vi_menu`
--

INSERT INTO `vuj_vi_menu` (`id`, `title`) VALUES
(1, 'Main Menu'),
(2, 'Danh mục sản phẩm');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_menu_rows`
--

CREATE TABLE `vuj_vi_menu_rows` (
  `id` mediumint(5) NOT NULL,
  `parentid` mediumint(5) UNSIGNED NOT NULL,
  `mid` smallint(5) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `lev` int(11) NOT NULL DEFAULT '0',
  `subitem` text COLLATE utf8mb4_unicode_ci,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `module_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `op` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` tinyint(4) DEFAULT '0',
  `css` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_vi_menu_rows`
--

INSERT INTO `vuj_vi_menu_rows` (`id`, `parentid`, `mid`, `title`, `link`, `icon`, `image`, `note`, `weight`, `sort`, `lev`, `subitem`, `groups_view`, `module_name`, `op`, `target`, `css`, `active_type`, `status`) VALUES
(1, 0, 1, 'Trang chủ', '/', '', '', '', 1, 1, 0, '', '6', '0', '', 1, '', 0, 1),
(2, 0, 1, 'Cửa hàng', '/index.php?language=vi&nv=shops', '', '', '', 2, 2, 0, '', '6', 'shops', '', 1, '', 0, 1),
(3, 0, 1, 'Tin Tức', '/index.php?language=vi&nv=news', '', '', '', 3, 3, 0, '', '6', 'news', '', 1, '', 0, 1),
(4, 0, 1, 'Liên hệ', '/index.php?language=vi&nv=contact', '', '', '', 4, 4, 0, '', '6', 'contact', '', 1, '', 0, 1),
(5, 0, 1, 'Thông tin thêm', '#', '', '', '', 5, 5, 0, '29,30', '6', '0', '', 1, '', 0, 1),
(29, 5, 1, 'Chính sách bảo mật', '/index.php?language=vi&nv=page&op=privacy.html', '', '', '', 1, 6, 1, '', '6', 'page', '', 1, '', 0, 1),
(6, 0, 2, 'Túi xách', '/index.php?language=vi&nv=shops&amp;op=tui-xach', '', '', '', 1, 1, 0, '7,8', '6', 'shops', 'tui-xach', 1, '', 1, 1),
(7, 6, 2, 'Túi xách nam', '/index.php?language=vi&nv=shops&amp;op=tui-xach-nam', '', '', '', 1, 2, 1, '', '6', 'shops', 'tui-xach-nam', 1, '', 1, 1),
(8, 6, 2, 'Túi xách nữ', '/index.php?language=vi&nv=shops&amp;op=tui-xach-nu', '', '', '', 2, 3, 1, '', '6', 'shops', 'tui-xach-nu', 1, '', 1, 1),
(9, 0, 2, 'Ví da', '/index.php?language=vi&nv=shops&amp;op=vi-da', '', '', '', 2, 4, 0, '10,11,12,13', '6', 'shops', 'vi-da', 1, '', 1, 1),
(10, 9, 2, 'Ví dài', '/index.php?language=vi&nv=shops&amp;op=vi-dai', '', '', '', 1, 5, 1, '', '6', 'shops', 'vi-dai', 1, '', 1, 1),
(11, 9, 2, 'Ví nhỏ gọn', '/index.php?language=vi&nv=shops&amp;op=vi-nho-gon', '', '', '', 2, 6, 1, '', '6', 'shops', 'vi-nho-gon', 1, '', 1, 1),
(12, 9, 2, 'Ví đựng Card và Passport', '/index.php?language=vi&nv=shops&amp;op=vi-dung-card-va-passport', '', '', '', 3, 7, 1, '', '6', 'shops', 'vi-dung-card-va-passport', 1, '', 1, 1),
(13, 9, 2, 'Ví đựng điện thoại', '/index.php?language=vi&nv=shops&amp;op=vi-dung-dien-thoai', '', '', '', 4, 8, 1, '', '6', 'shops', 'vi-dung-dien-thoai', 1, '', 1, 1),
(14, 0, 2, 'Giày dép', '/index.php?language=vi&nv=shops&amp;op=giay-dep', '', '', '', 3, 9, 0, '15,16,17', '6', 'shops', 'giay-dep', 1, '', 1, 1),
(15, 14, 2, 'Sneakers', '/index.php?language=vi&nv=shops&amp;op=sneakers', '', '', '', 1, 10, 1, '', '6', 'shops', 'sneakers', 1, '', 1, 1),
(16, 14, 2, 'Giày lười và da trơn', '/index.php?language=vi&nv=shops&amp;op=giay-luoi-va-da-tron', '', '', '', 2, 11, 1, '', '6', 'shops', 'giay-luoi-va-da-tron', 1, '', 1, 1),
(17, 14, 2, 'Giày sandals', '/index.php?language=vi&nv=shops&amp;op=giay-sandals', '', '', '', 3, 12, 1, '', '6', 'shops', 'giay-sandals', 1, '', 1, 1),
(18, 0, 2, 'Phụ kiện', '/index.php?language=vi&nv=shops&amp;op=phu-kien', '', '', '', 4, 13, 0, '19,20,21,22,23,24', '6', 'shops', 'phu-kien', 1, '', 1, 1),
(19, 18, 2, 'Thắt lưng', '/index.php?language=vi&nv=shops&amp;op=that-lung', '', '', '', 1, 14, 1, '', '6', 'shops', 'that-lung', 1, '', 1, 1),
(20, 18, 2, 'Phụ kiện công nghệ', '/index.php?language=vi&nv=shops&amp;op=phu-kien-cong-nghe', '', '', '', 2, 15, 1, '', '6', 'shops', 'phu-kien-cong-nghe', 1, '', 1, 1),
(21, 18, 2, 'Khăn quàng cổ', '/index.php?language=vi&nv=shops&amp;op=khan-quang-co', '', '', '', 3, 16, 1, '', '6', 'shops', 'khan-quang-co', 1, '', 1, 1),
(22, 18, 2, 'Mũ và Găng tay', '/index.php?language=vi&nv=shops&amp;op=mu-va-gang-tay', '', '', '', 4, 17, 1, '', '6', 'shops', 'mu-va-gang-tay', 1, '', 1, 1),
(23, 18, 2, 'Trang sức thời trang', '/index.php?language=vi&nv=shops&amp;op=trang-suc-thoi-trang', '', '', '', 5, 18, 1, '', '6', 'shops', 'trang-suc-thoi-trang', 1, '', 1, 1),
(24, 18, 2, 'Kính mát', '/index.php?language=vi&nv=shops&amp;op=kinh-mat', '', '', '', 6, 19, 1, '', '6', 'shops', 'kinh-mat', 1, '', 1, 1),
(25, 0, 2, 'Đồng hồ', '/index.php?language=vi&nv=shops&amp;op=dong-ho', '', '', '', 5, 20, 0, '26,27,28', '6', 'shops', 'dong-ho', 1, '', 1, 1),
(26, 25, 2, 'Đồng hồ truyền thống', '/index.php?language=vi&nv=shops&amp;op=dong-ho-truyen-thong', '', '', '', 1, 21, 1, '', '6', 'shops', 'dong-ho-truyen-thong', 1, '', 1, 1),
(27, 25, 2, 'Đồng hồ thông minh', '/index.php?language=vi&nv=shops&amp;op=dong-ho-thong-minh', '', '', '', 2, 22, 1, '', '6', 'shops', 'dong-ho-thong-minh', 1, '', 1, 1),
(28, 25, 2, 'Dây đeo và Phụ kiện', '/index.php?language=vi&nv=shops&amp;op=day-deo-va-phu-kien', '', '', '', 3, 23, 1, '', '6', 'shops', 'day-deo-va-phu-kien', 1, '', 1, 1),
(30, 5, 1, 'Điều khoản sử dụng', '/index.php?language=vi&nv=page&op=terms.html', '', '', '', 2, 7, 1, '', '6', 'page', '', 1, '', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_modfuncs`
--

CREATE TABLE `vuj_vi_modfuncs` (
  `func_id` mediumint(8) UNSIGNED NOT NULL,
  `func_name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_custom_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `func_site_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `in_module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_func` tinyint(4) NOT NULL DEFAULT '0',
  `in_submenu` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subweight` smallint(2) UNSIGNED NOT NULL DEFAULT '1',
  `setting` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_vi_modfuncs`
--

INSERT INTO `vuj_vi_modfuncs` (`func_id`, `func_name`, `alias`, `func_custom_name`, `func_site_title`, `in_module`, `show_func`, `in_submenu`, `subweight`, `setting`) VALUES
(4, 'main', 'main', 'Main', '', 'news', 1, 0, 1, ''),
(5, 'viewcat', 'viewcat', 'Viewcat', '', 'news', 1, 0, 2, ''),
(6, 'topic', 'topic', 'Topic', '', 'news', 1, 0, 3, ''),
(7, 'content', 'content', 'Content', '', 'news', 1, 1, 8, ''),
(8, 'detail', 'detail', 'Detail', '', 'news', 1, 0, 6, ''),
(9, 'tag', 'tag', 'Tag', '', 'news', 1, 0, 9, ''),
(10, 'rss', 'rss', 'Rss', '', 'news', 1, 1, 10, ''),
(11, 'search', 'search', 'Search', '', 'news', 1, 1, 7, ''),
(12, 'groups', 'groups', 'Groups', '', 'news', 1, 0, 4, ''),
(13, 'author', 'author', 'Author', '', 'news', 1, 0, 5, ''),
(14, 'sitemap', 'sitemap', 'Sitemap', '', 'news', 0, 0, 0, ''),
(15, 'print', 'print', 'Print', '', 'news', 0, 0, 0, ''),
(16, 'rating', 'rating', 'Rating', '', 'news', 0, 0, 0, ''),
(17, 'savefile', 'savefile', 'Savefile', '', 'news', 0, 0, 0, ''),
(18, 'sendmail', 'sendmail', 'Sendmail', '', 'news', 0, 0, 0, ''),
(19, 'instant-rss', 'instant-rss', 'Instant Articles RSS', '', 'news', 0, 0, 0, ''),
(20, 'main', 'main', 'Main', '', 'users', 1, 0, 1, ''),
(21, 'login', 'login', 'Đăng nhập', '', 'users', 1, 1, 2, ''),
(22, 'register', 'register', 'Đăng ký', '', 'users', 1, 1, 3, ''),
(23, 'lostpass', 'lostpass', 'Khôi phục mật khẩu', '', 'users', 1, 1, 4, ''),
(24, 'active', 'active', 'Kích hoạt tài khoản', '', 'users', 1, 0, 5, ''),
(25, 'lostactivelink', 'lostactivelink', 'Lostactivelink', '', 'users', 1, 0, 6, ''),
(26, 'editinfo', 'editinfo', 'Thiết lập tài khoản', '', 'users', 1, 1, 7, ''),
(27, 'memberlist', 'memberlist', 'Danh sách thành viên', '', 'users', 1, 1, 8, ''),
(28, 'groups', 'groups', 'Quản lý nhóm', '', 'users', 1, 1, 9, ''),
(29, 'avatar', 'avatar', 'Avatar', '', 'users', 1, 0, 10, ''),
(30, 'logout', 'logout', 'Thoát', '', 'users', 1, 1, 11, ''),
(31, 'oauth', 'oauth', 'Oauth', '', 'users', 0, 0, 0, ''),
(32, 'main', 'main', 'Main', '', 'contact', 1, 0, 1, ''),
(41, 'main', 'main', 'Main', '', 'banners', 1, 0, 1, ''),
(42, 'addads', 'addads', 'Addads', '', 'banners', 1, 0, 2, ''),
(43, 'clientinfo', 'clientinfo', 'Clientinfo', '', 'banners', 1, 0, 3, ''),
(44, 'stats', 'stats', 'Stats', '', 'banners', 1, 0, 4, ''),
(45, 'cledit', 'cledit', 'Cledit', '', 'banners', 0, 0, 0, ''),
(46, 'click', 'click', 'Click', '', 'banners', 0, 0, 0, ''),
(47, 'clinfo', 'clinfo', 'Clinfo', '', 'banners', 0, 0, 0, ''),
(48, 'logininfo', 'logininfo', 'Logininfo', '', 'banners', 0, 0, 0, ''),
(49, 'viewmap', 'viewmap', 'Viewmap', '', 'banners', 0, 0, 0, ''),
(50, 'main', 'main', 'Main', '', 'seek', 1, 0, 1, ''),
(51, 'main', 'main', 'Main', '', 'feeds', 1, 0, 1, ''),
(52, 'main', 'main', 'Main', '', 'page', 1, 0, 1, ''),
(53, 'sitemap', 'sitemap', 'Sitemap', '', 'page', 0, 0, 0, ''),
(54, 'rss', 'rss', 'Rss', '', 'page', 0, 0, 0, ''),
(55, 'main', 'main', 'Main', '', 'comment', 1, 0, 1, ''),
(56, 'post', 'post', 'Post', '', 'comment', 1, 0, 2, ''),
(57, 'like', 'like', 'Like', '', 'comment', 1, 0, 3, ''),
(58, 'delete', 'delete', 'Delete', '', 'comment', 1, 0, 4, ''),
(59, 'down', 'down', 'Down', '', 'comment', 1, 0, 5, ''),
(60, 'main', 'main', 'Main', '', 'siteterms', 1, 0, 1, ''),
(61, 'rss', 'rss', 'Rss', '', 'siteterms', 1, 0, 2, ''),
(62, 'sitemap', 'sitemap', 'Sitemap', '', 'siteterms', 0, 0, 0, ''),
(63, 'main', 'main', 'Main', '', 'two-step-verification', 1, 0, 1, ''),
(64, 'confirm', 'confirm', 'Confirm', '', 'two-step-verification', 1, 0, 2, ''),
(65, 'setup', 'setup', 'Setup', '', 'two-step-verification', 1, 0, 3, ''),
(99, 'main', 'main', 'Main', '', 'menu', 0, 0, 0, ''),
(67, 'checkmail', 'checkmail', 'Checkmail', '', 'newsnotice', 1, 0, 2, ''),
(68, 'main', 'main', 'Main', '', 'newsnotice', 1, 1, 1, ''),
(69, 'ajax', 'ajax', 'Ajax', '', 'shops', 1, 0, 18, ''),
(70, 'blockcat', 'blockcat', 'Blockcat', '', 'shops', 1, 0, 17, ''),
(71, 'cart', 'cart', 'Cart', '', 'shops', 1, 0, 5, ''),
(72, 'checkorder', 'checkorder', 'Checkorder', '', 'shops', 0, 0, 0, ''),
(73, 'compare', 'compare', 'Compare', '', 'shops', 1, 0, 11, ''),
(74, 'delhis', 'delhis', 'Delhis', '', 'shops', 0, 0, 0, ''),
(75, 'detail', 'detail', 'Detail', '', 'shops', 1, 0, 3, ''),
(76, 'download', 'download', 'Download', '', 'shops', 1, 0, 16, ''),
(77, 'group', 'group', 'Group', '', 'shops', 1, 0, 9, ''),
(78, 'history', 'history', 'History', '', 'shops', 1, 0, 8, ''),
(79, 'loadcart', 'loadcart', 'Loadcart', '', 'shops', 0, 0, 0, ''),
(80, 'main', 'main', 'Main', '', 'shops', 1, 0, 1, ''),
(81, 'order', 'order', 'Order', '', 'shops', 1, 0, 6, ''),
(82, 'payment', 'payment', 'Payment', '', 'shops', 1, 0, 7, ''),
(83, 'point', 'point', 'Point', '', 'shops', 1, 0, 14, ''),
(84, 'print', 'print', 'Print', '', 'shops', 0, 0, 0, ''),
(85, 'print_pro', 'print_pro', 'Print_pro', '', 'shops', 0, 0, 0, ''),
(86, 'remove', 'remove', 'Remove', '', 'shops', 0, 0, 0, ''),
(87, 'review', 'review', 'Review', '', 'shops', 0, 0, 0, ''),
(88, 'rss', 'rss', 'Rss', '', 'shops', 0, 0, 0, ''),
(89, 'search', 'search', 'Search', '', 'shops', 1, 0, 4, ''),
(90, 'search_result', 'search_result', 'Search_result', '', 'shops', 1, 0, 10, ''),
(91, 'sendmail', 'sendmail', 'Sendmail', '', 'shops', 0, 0, 0, ''),
(92, 'setcart', 'setcart', 'Setcart', '', 'shops', 0, 0, 0, ''),
(93, 'shippingajax', 'shippingajax', 'Shippingajax', '', 'shops', 1, 0, 15, ''),
(94, 'sitemap', 'sitemap', 'Sitemap', '', 'shops', 0, 0, 0, ''),
(95, 'tag', 'tag', 'Tag', '', 'shops', 1, 0, 13, ''),
(96, 'viewcat', 'viewcat', 'Viewcat', '', 'shops', 1, 0, 2, ''),
(97, 'wishlist', 'wishlist', 'Wishlist', '', 'shops', 1, 0, 12, ''),
(98, 'wishlist_update', 'wishlist_update', 'Wishlist_update', '', 'shops', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_modthemes`
--

CREATE TABLE `vuj_vi_modthemes` (
  `func_id` mediumint(8) DEFAULT NULL,
  `layout` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_vi_modthemes`
--

INSERT INTO `vuj_vi_modthemes` (`func_id`, `layout`, `theme`) VALUES
(0, 'main', 'default'),
(4, 'blog-page', 'default'),
(5, 'blog-page', 'default'),
(6, 'blog-page', 'default'),
(7, 'blog-page', 'default'),
(8, 'blog-page', 'default'),
(9, 'blog-page', 'default'),
(10, 'blog-page', 'default'),
(11, 'blog-page', 'default'),
(12, 'blog-page', 'default'),
(13, 'blog-page', 'default'),
(20, 'main', 'default'),
(21, 'main', 'default'),
(22, 'main', 'default'),
(23, 'main', 'default'),
(24, 'main', 'default'),
(25, 'main', 'default'),
(26, 'main', 'default'),
(27, 'main', 'default'),
(28, 'main', 'default'),
(29, 'main', 'default'),
(30, 'main', 'default'),
(32, 'contact-page', 'default'),
(41, 'main', 'default'),
(42, 'main', 'default'),
(43, 'main', 'default'),
(44, 'main', 'default'),
(50, 'main', 'default'),
(51, 'main', 'default'),
(52, 'blog-page', 'default'),
(55, 'main', 'default'),
(56, 'main', 'default'),
(57, 'main', 'default'),
(58, 'main', 'default'),
(59, 'main', 'default'),
(60, 'main', 'default'),
(61, 'main', 'default'),
(63, 'main', 'default'),
(64, 'main', 'default'),
(65, 'main', 'default'),
(67, 'main', 'default'),
(68, 'main', 'default'),
(69, 'left-main', 'default'),
(70, 'left-main', 'default'),
(71, 'shop-cart-checkout', 'default'),
(72, 'left-main-right', 'default'),
(73, 'left-main', 'default'),
(74, 'left-main-right', 'default'),
(75, 'shop-detail', 'default'),
(76, 'left-main', 'default'),
(77, 'left-main', 'default'),
(78, 'left-main', 'default'),
(79, 'left-main-right', 'default'),
(80, 'left-main', 'default'),
(81, 'shop-cart-checkout', 'default'),
(82, 'shop-cart-checkout', 'default'),
(83, 'left-main', 'default'),
(84, 'left-main-right', 'default'),
(85, 'left-main-right', 'default'),
(86, 'left-main-right', 'default'),
(87, 'left-main-right', 'default'),
(88, 'left-main-right', 'default'),
(89, 'left-main', 'default'),
(90, 'left-main', 'default'),
(91, 'left-main-right', 'default'),
(92, 'left-main-right', 'default'),
(93, 'left-main', 'default'),
(94, 'left-main-right', 'default'),
(95, 'left-main', 'default'),
(96, 'left-main', 'default'),
(97, 'left-main', 'default'),
(98, 'left-main-right', 'default'),
(99, 'main', 'default');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_modules`
--

CREATE TABLE `vuj_vi_modules` (
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_file` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_data` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_upload` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_theme` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `set_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `main_file` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `admin_file` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `admins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `rss` tinyint(4) NOT NULL DEFAULT '1',
  `sitemap` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_vi_modules`
--

INSERT INTO `vuj_vi_modules` (`title`, `module_file`, `module_data`, `module_upload`, `module_theme`, `custom_title`, `site_title`, `admin_title`, `set_time`, `main_file`, `admin_file`, `theme`, `mobile`, `description`, `keywords`, `groups_view`, `weight`, `act`, `admins`, `rss`, `sitemap`) VALUES
('news', 'news', 'news', 'news', 'news', 'Tin Tức', '', '', 1626587642, 1, 1, '', '', '', '', '6', 3, 1, '', 1, 1),
('users', 'users', 'users', 'users', 'users', 'Thành viên', '', 'Tài khoản', 1626587642, 1, 1, '', '', '', '', '6', 10, 1, '', 0, 1),
('contact', 'contact', 'contact', 'contact', 'contact', 'Liên hệ', '', '', 1626587642, 1, 1, '', '', '', '', '6', 4, 1, '', 0, 1),
('banners', 'banners', 'banners', 'banners', 'banners', 'Quảng cáo', '', '', 1626587642, 1, 1, '', '', '', '', '6', 5, 1, '', 0, 1),
('seek', 'seek', 'seek', 'seek', 'seek', 'Tìm kiếm', '', '', 1626587642, 1, 0, '', '', '', '', '6', 9, 1, '', 0, 1),
('menu', 'menu', 'menu', 'menu', 'menu', 'Menu Site', '', '', 1626587642, 0, 1, '', '', '', '', '6', 8, 1, '', 0, 1),
('feeds', 'feeds', 'feeds', 'feeds', 'feeds', 'RSS-feeds', '', '', 1626587642, 1, 1, '', '', '', '', '6', 13, 0, '', 0, 1),
('page', 'page', 'page', 'page', 'page', 'Trang', '', 'Quản lý trang', 1626587642, 1, 1, '', '', '', '', '6', 1, 1, '', 1, 0),
('comment', 'comment', 'comment', 'comment', 'comment', 'Bình luận', '', 'Quản lý bình luận', 1626587642, 0, 1, '', '', '', '', '6', 14, 0, '', 0, 1),
('siteterms', 'page', 'siteterms', 'siteterms', 'page', 'Điều khoản sử dụng', '', '', 1626587642, 1, 1, '', '', '', '', '6', 11, 1, '', 1, 1),
('two-step-verification', 'two-step-verification', 'two_step_verification', 'two_step_verification', 'two-step-verification', 'Xác thực hai bước', '', '', 1626587642, 1, 0, '', '', '', '', '6', 12, 1, '', 0, 1),
('newsnotice', 'newsnotice', 'newsnotice', 'newsnotice', 'newsnotice', 'Đăng ký nhận tin', '', '', 1626588129, 1, 1, '', '', '', '', '6', 7, 1, '', 0, 0),
('shops', 'shops', 'shops', 'shops', 'shops', 'Cửa hàng', '', '', 1626588166, 1, 1, '', '', '', '', '6', 2, 1, '', 1, 1),
('slider', 'slider', 'slider', 'slider', 'slider', 'Slider', '', '', 1626588185, 0, 1, '', '', '', '', '6', 6, 1, '', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_newsnotice`
--

CREATE TABLE `vuj_vi_newsnotice` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `listid` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_stacked` int(11) NOT NULL DEFAULT '0',
  `time_sended` int(11) DEFAULT '0',
  `listsended` mediumtext COLLATE utf8mb4_unicode_ci,
  `totalsended` int(4) DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_vi_newsnotice`
--

INSERT INTO `vuj_vi_newsnotice` (`id`, `listid`, `time_stacked`, `time_sended`, `listsended`, `totalsended`, `status`) VALUES
(1, '1', 1626610048, 0, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_newsnotice_config`
--

CREATE TABLE `vuj_vi_newsnotice_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_vi_newsnotice_config`
--

INSERT INTO `vuj_vi_newsnotice_config` (`config_name`, `config_value`) VALUES
('active', '1'),
('title_email', ''),
('numperpage', '20'),
('active_required', '1'),
('active_thank', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_newsnotice_emaillist`
--

CREATE TABLE `vuj_vi_newsnotice_emaillist` (
  `id` int(11) NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_reg` int(11) NOT NULL DEFAULT '0',
  `time_active` int(11) NOT NULL,
  `check_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_news_1`
--

CREATE TABLE `vuj_vi_news_1` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_vi_news_1`
--

INSERT INTO `vuj_vi_news_1` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(1, 1, '1', 0, 1, '', 0, 1626604290, 1626604290, 1, 1, 1626604140, 0, 2, 'Tuyển chọn áo khoác nữ Quảng Châu đẹp và ăn khách nhất 2021', 'tuyen-chon-ao-khoac-nu-quang-chau-dep-va-an-khach-nhat-2021', 'Áo khoác nữ mùa đông năm 2018 ăn điểm với những item áo khoác dáng dài thời thượng, sang trọng và độc đáo đậm phong cách thời trang Quảng Châu.', 'https://i.vietgiaitri.com/2018/9/14/tuyen-chon-ao-khoac-nu-quang-chau-dep-va-an-khach-nhat-2018-f8c63e.jpg', '', 3, 1, '4', 1, 0, 1, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_news_2`
--

CREATE TABLE `vuj_vi_news_2` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_news_3`
--

CREATE TABLE `vuj_vi_news_3` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_news_4`
--

CREATE TABLE `vuj_vi_news_4` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_news_5`
--

CREATE TABLE `vuj_vi_news_5` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_news_6`
--

CREATE TABLE `vuj_vi_news_6` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_news_admins`
--

CREATE TABLE `vuj_vi_news_admins` (
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `catid` smallint(5) NOT NULL DEFAULT '0',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `add_content` tinyint(4) NOT NULL DEFAULT '0',
  `pub_content` tinyint(4) NOT NULL DEFAULT '0',
  `edit_content` tinyint(4) NOT NULL DEFAULT '0',
  `del_content` tinyint(4) NOT NULL DEFAULT '0',
  `app_content` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_news_author`
--

CREATE TABLE `vuj_vi_news_author` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `uid` int(11) UNSIGNED NOT NULL,
  `alias` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pseudonym` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `numnews` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_vi_news_author`
--

INSERT INTO `vuj_vi_news_author` (`id`, `uid`, `alias`, `pseudonym`, `image`, `description`, `add_time`, `edit_time`, `active`, `numnews`) VALUES
(1, 1, 'adminweb', 'adminweb', '', '', 1626604012, 1626610750, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_news_authorlist`
--

CREATE TABLE `vuj_vi_news_authorlist` (
  `id` int(11) NOT NULL,
  `aid` mediumint(8) NOT NULL,
  `alias` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pseudonym` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_vi_news_authorlist`
--

INSERT INTO `vuj_vi_news_authorlist` (`id`, `aid`, `alias`, `pseudonym`) VALUES
(1, 1, 'adminweb', 'adminweb');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_news_block`
--

CREATE TABLE `vuj_vi_news_block` (
  `bid` smallint(5) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_news_block_cat`
--

CREATE TABLE `vuj_vi_news_block_cat` (
  `bid` smallint(5) UNSIGNED NOT NULL,
  `adddefault` tinyint(4) NOT NULL DEFAULT '0',
  `numbers` smallint(5) NOT NULL DEFAULT '10',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_news_cat`
--

CREATE TABLE `vuj_vi_news_cat` (
  `catid` smallint(5) UNSIGNED NOT NULL,
  `parentid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titlesite` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `descriptionhtml` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `viewdescription` tinyint(2) NOT NULL DEFAULT '0',
  `weight` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `sort` smallint(5) NOT NULL DEFAULT '0',
  `lev` smallint(5) NOT NULL DEFAULT '0',
  `viewcat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` smallint(5) NOT NULL DEFAULT '0',
  `subcatid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `numlinks` tinyint(2) UNSIGNED NOT NULL DEFAULT '3',
  `newday` tinyint(2) UNSIGNED NOT NULL DEFAULT '2',
  `featured` int(11) NOT NULL DEFAULT '0',
  `ad_block_cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `admins` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` smallint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_vi_news_cat`
--

INSERT INTO `vuj_vi_news_cat` (`catid`, `parentid`, `title`, `titlesite`, `alias`, `description`, `descriptionhtml`, `image`, `viewdescription`, `weight`, `sort`, `lev`, `viewcat`, `numsubcat`, `subcatid`, `numlinks`, `newday`, `featured`, `ad_block_cat`, `keywords`, `admins`, `add_time`, `edit_time`, `groups_view`, `status`) VALUES
(1, 0, 'Thời trang', '', 'thoi-trang', '', '', '', 0, 1, 1, 0, 'viewcat_page_new', 2, '5,6', 3, 2, 0, '', '', '', 1626604118, 1626604118, '6', 1),
(2, 0, 'Thương hiệu', '', 'thuong-hieu', '', '', '', 0, 2, 4, 0, 'viewcat_page_new', 0, '', 3, 2, 0, '', '', '', 1626604126, 1626604126, '6', 1),
(3, 0, 'Khuyên dùng', '', 'khuyen-dung', '', '', '', 0, 3, 5, 0, 'viewcat_page_new', 0, '', 3, 2, 0, '', '', '', 1626604134, 1626604134, '6', 1),
(4, 0, 'Khuyến mãi', '', 'khuyen-mai', '', '', '', 0, 4, 6, 0, 'viewcat_page_new', 0, '', 3, 2, 0, '', '', '', 1626604147, 1626604147, '6', 1),
(5, 1, 'Trong nước', '', 'trong-nuoc', '', '', '', 0, 1, 2, 1, 'viewcat_page_new', 0, '', 3, 2, 0, '', '', '', 1626604155, 1626604155, '6', 1),
(6, 1, 'Thế giới', '', 'the-gioi', '', '', '', 0, 2, 3, 1, 'viewcat_page_new', 0, '', 3, 2, 0, '', '', '', 1626604161, 1626604161, '6', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_news_config_post`
--

CREATE TABLE `vuj_vi_news_config_post` (
  `group_id` smallint(5) NOT NULL,
  `addcontent` tinyint(4) NOT NULL,
  `postcontent` tinyint(4) NOT NULL,
  `editcontent` tinyint(4) NOT NULL,
  `delcontent` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_vi_news_config_post`
--

INSERT INTO `vuj_vi_news_config_post` (`group_id`, `addcontent`, `postcontent`, `editcontent`, `delcontent`) VALUES
(4, 0, 0, 0, 0),
(7, 0, 0, 0, 0),
(5, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_news_detail`
--

CREATE TABLE `vuj_vi_news_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `titlesite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bodyhtml` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourcetext` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `files` text COLLATE utf8mb4_unicode_ci,
  `imgposition` tinyint(1) NOT NULL DEFAULT '1',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `copyright` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_send` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_print` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_save` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_vi_news_detail`
--

INSERT INTO `vuj_vi_news_detail` (`id`, `titlesite`, `description`, `bodyhtml`, `keywords`, `sourcetext`, `files`, `imgposition`, `layout_func`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`) VALUES
(1, '', '', '<p>Áo khoác dáng dài với nhiều kiểu dáng, chất liệu cũng như màu sắc khác nhau giúp các quý cô sành điệu tự tin hơn nhiều trong mọi hoàn cảnh cũng như sự kiện khác nhau.</p>\r\n\r\n<p>Hãy cùng chiêm ngưỡng những chiếc&nbsp;<strong>áo khoác nữ&nbsp;</strong>Quảng Châu đẹp và ăn khách nhất 2018 nhé các cô nàng sành mốt!</p>\r\n\r\n<p><a data-index=\"0\" href=\"https://i.vietgiaitri.com/2018/9/14/tuyen-chon-ao-khoac-nu-quang-chau-dep-va-an-khach-nhat-2018-f8c63e.jpg\" id=\"img-ad-1\" target=\"_blank\"><img alt=\"Tuyển chọn áo khoác nữ Quảng Châu đẹp và ăn khách nhất 2018 - Hình 1\" data-height=\"1011\" data-p=\"128%\" data-width=\"790\" loading=\"lazy\" src=\"https://i.vietgiaitri.com/2018/9/14/tuyen-chon-ao-khoac-nu-quang-chau-dep-va-an-khach-nhat-2018-f8c63e.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://vietgiaitri.com/thoi-trang/\">Thời trang&nbsp;</a>áo khoác nữ Quảng Châu đẹp và hút mắt với thiết kế hoa thêu tinh tế</p>\r\n\r\n<p><a data-index=\"1\" href=\"https://i.vietgiaitri.com/2018/9/14/tuyen-chon-ao-khoac-nu-quang-chau-dep-va-an-khach-nhat-2018-26ff06.jpg\" id=\"img-ad-2\" target=\"_blank\"><img alt=\"Tuyển chọn áo khoác nữ Quảng Châu đẹp và ăn khách nhất 2018 - Hình 2\" data-height=\"1011\" data-p=\"128%\" data-width=\"790\" loading=\"lazy\" src=\"https://i.vietgiaitri.com/2018/9/14/tuyen-chon-ao-khoac-nu-quang-chau-dep-va-an-khach-nhat-2018-26ff06.jpg\" /></a></p>\r\n\r\n<p>Gam màu ghi xám nhã nhặn, sang trọng và không kém phần trẻ trung được các quý cô rất&nbsp;<a href=\"https://vietgiaitri.com/yeu/\">yêu&nbsp;</a>thích trong mùa đông năm 2018 này</p>\r\n\r\n<p><a data-index=\"2\" href=\"https://i.vietgiaitri.com/2018/9/14/tuyen-chon-ao-khoac-nu-quang-chau-dep-va-an-khach-nhat-2018-61d6e2.jpg\" id=\"img-ad-3\" target=\"_blank\"><img alt=\"Tuyển chọn áo khoác nữ Quảng Châu đẹp và ăn khách nhất 2018 - Hình 3\" data-height=\"1011\" data-p=\"128%\" data-width=\"790\" loading=\"lazy\" src=\"https://i.vietgiaitri.com/2018/9/14/tuyen-chon-ao-khoac-nu-quang-chau-dep-va-an-khach-nhat-2018-61d6e2.jpg\" /></a></p>\r\n\r\n<p><a data-index=\"3\" href=\"https://i.vietgiaitri.com/2018/9/14/tuyen-chon-ao-khoac-nu-quang-chau-dep-va-an-khach-nhat-2018-274043.jpg\" id=\"img-ad-4\" target=\"_blank\"><img alt=\"Tuyển chọn áo khoác nữ Quảng Châu đẹp và ăn khách nhất 2018 - Hình 4\" data-height=\"847\" data-p=\"111%\" data-width=\"764\" loading=\"lazy\" src=\"https://i.vietgiaitri.com/2018/9/14/tuyen-chon-ao-khoac-nu-quang-chau-dep-va-an-khach-nhat-2018-274043.jpg\" /></a></p>\r\n\r\n<p>Áo khoác nữ Quảng Châu mùa đông 2018 gây ấn tượng với những họa tiết hoa thêu tinh tế, chất liệu vải cao cấp và đường may tỉ mỉ cẩn thận là yếu tố tiên quyết tạo ra những sản phẩm hoàn hảo.&nbsp;<strong>Áo khoác dáng dài&nbsp;</strong>được thiết kế sang trọng, lịch sự là món đồ không thể thiếu trong tủ đồ mùa đông của những cô nàng sành mốt!</p>', '', '', '', 2, '', 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_news_logs`
--

CREATE TABLE `vuj_vi_news_logs` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `sid` mediumint(8) NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `set_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_news_rows`
--

CREATE TABLE `vuj_vi_news_rows` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_vi_news_rows`
--

INSERT INTO `vuj_vi_news_rows` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(1, 1, '1', 0, 1, '', 0, 1626604290, 1626604290, 1, 1, 1626604140, 0, 2, 'Tuyển chọn áo khoác nữ Quảng Châu đẹp và ăn khách nhất 2021', 'tuyen-chon-ao-khoac-nu-quang-chau-dep-va-an-khach-nhat-2021', 'Áo khoác nữ mùa đông năm 2018 ăn điểm với những item áo khoác dáng dài thời thượng, sang trọng và độc đáo đậm phong cách thời trang Quảng Châu.', 'https://i.vietgiaitri.com/2018/9/14/tuyen-chon-ao-khoac-nu-quang-chau-dep-va-an-khach-nhat-2018-f8c63e.jpg', '', 3, 1, '4', 1, 0, 1, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_news_sources`
--

CREATE TABLE `vuj_vi_news_sources` (
  `sourceid` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) UNSIGNED NOT NULL,
  `edit_time` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_news_tags`
--

CREATE TABLE `vuj_vi_news_tags` (
  `tid` mediumint(8) UNSIGNED NOT NULL,
  `numnews` mediumint(8) NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_news_tags_id`
--

CREATE TABLE `vuj_vi_news_tags_id` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_news_tmp`
--

CREATE TABLE `vuj_vi_news_tmp` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT '0',
  `time_edit` int(11) NOT NULL,
  `time_late` int(11) NOT NULL,
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_news_topics`
--

CREATE TABLE `vuj_vi_news_topics` (
  `topicid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_page`
--

CREATE TABLE `vuj_vi_page` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hot_post` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_vi_page`
--

INSERT INTO `vuj_vi_page` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`, `hitstotal`, `hot_post`) VALUES
(1, 'Trang chủ', 'trang-chu', '', '', 0, '', '<h2>This is the home page.</h2>\r\n\r\n<h2><span style=\"color:rgb(231, 76, 60);\">Do not Delete or Deactivate this page.</span></h2>\r\n\r\n<h2>Thanks you!</h2>\r\n\r\n<h2>Đây là trang chủ của website.</h2>\r\n\r\n<h2><span style=\"color:rgb(231, 76, 60);\">Vui lòng Không xóa hoặc Ngừng kích hoạt trang này.</span></h2>\r\n\r\n<h2>Xin cảm ơn!</h2>', '', 1, '4', 'home-page', 1, 1, 1626593744, 1626594662, 1, 1, 0),
(2, 'Chính sách bảo mật', 'privacy', '', '', 0, 'Tài liệu này cung cấp cho bạn (người truy cập và sử dụng website) chính sách liên quan đến bảo mật và quyền riêng tư của bạn', '<strong><a id=\"index\" name=\"index\"></a>Danh mục</strong><br />\r\n<a href=\"#1\">Điều 1: Thu thập thông tin</a><br />\r\n<a href=\"#2\">Điều 2: Lưu trữ &amp; Bảo vệ thông tin</a><br />\r\n<a href=\"#3\">Điều 3: Sử dụng thông tin </a><br />\r\n<a href=\"#4\">Điều 4: Tiếp nhận thông tin từ các đối tác </a><br />\r\n<a href=\"#5\">Điều 5: Chia sẻ thông tin với bên thứ ba</a><br />\r\n<a href=\"#6\">Điều 6: Thay đổi chính sách bảo mật</a>\r\n<hr />\r\n<h2 style=\"text-align: justify;\"><a id=\"1\" name=\"1\"></a>Điều 1: Thu thập thông tin</h2>\r\n\r\n<h3 style=\"text-align: justify;\">1.1. Thu thập tự động:</h3>\r\n\r\n<div style=\"text-align: justify;\">Hệ thống này được xây dựng bằng mã nguồn NukeViet. Như mọi website hiện đại khác, chúng tôi sẽ thu thập địa chỉ IP và các thông tin web tiêu chuẩn khác của bạn như: loại trình duyệt, các trang bạn truy cập trong quá trình sử dụng dịch vụ, thông tin về máy tính &amp; thiết bị mạng v.v… cho mục đích phân tích thông tin phục vụ việc bảo mật và giữ an toàn cho hệ thống.</div>\r\n\r\n<h3 style=\"text-align: justify;\">1.2. Thu thập từ các khai báo của chính bạn:</h3>\r\n\r\n<div style=\"text-align: justify;\">Các thông tin do bạn khai báo cho chúng tôi trong quá trình làm việc như: đăng ký tài khoản, liên hệ với chúng tôi... cũng sẽ được chúng tôi lưu trữ phục vụ công việc chăm sóc khách hàng sau này.</div>\r\n\r\n<h3 style=\"text-align: justify;\">1.3. Thu thập thông tin thông qua việc đặt cookies:</h3>\r\n\r\n<p style=\"text-align: justify;\">Như mọi website hiện đại khác, khi bạn truy cập website, chúng tôi (hoặc các công cụ theo dõi hoặc thống kê hoạt động của website do các đối tác cung cấp) sẽ đặt một số File dữ liệu gọi là Cookies lên đĩa cứng hoặc bộ nhớ máy tính của bạn.</p>\r\n\r\n<p style=\"text-align: justify;\">Một trong số những Cookies này có thể tồn tại lâu để thuận tiện cho bạn trong quá trình sử dụng, ví dụ như: lưu Email của bạn trong trang đăng nhập để bạn không phải nhập lại v.v…</p>\r\n\r\n<h3 style=\"text-align: justify;\">1.4. Thu thập và lưu trữ thông tin trong quá khứ:</h3>\r\n\r\n<p style=\"text-align: justify;\">Bạn có thể thay đổi thông tin cá nhân của mình bất kỳ lúc nào bằng cách sử dụng chức năng tương ứng. Tuy nhiên chúng tôi sẽ lưu lại những thông tin bị thay đổi để chống các hành vi xóa dấu vết gian lận.</p>\r\n\r\n<p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>\r\n\r\n<h2 style=\"text-align: justify;\"><a id=\"2\" name=\"2\"></a>Điều 2: Lưu trữ &amp; Bảo vệ thông tin</h2>\r\n\r\n<div style=\"text-align: justify;\">Hầu hết các thông tin được thu thập sẽ được lưu trữ tại cơ sở dữ liệu của chúng tôi.<br />\r\n<br />\r\nChúng tôi bảo vệ dữ liệu cá nhân của các bạn bằng các hình thức như: mật khẩu, tường lửa, mã hóa cùng các hình thức thích hợp khác và chỉ cấp phép việc truy cập và xử lý dữ liệu cho các đối tượng phù hợp, ví dụ chính bạn hoặc các nhân viên có trách nhiệm xử lý thông tin với bạn thông qua các bước xác định danh tính phù hợp.<br />\r\n<br />\r\nMật khẩu của bạn được lưu trữ và bảo vệ bằng phương pháp mã hoá trong cơ sở dữ liệu của hệ thống, vì thế nó rất an toàn. Tuy nhiên, chúng tôi khuyên bạn không nên dùng lại mật khẩu này trên các website khác. Mật khẩu của bạn là cách duy nhất để bạn đăng nhập vào tài khoản thành viên của mình trong website này, vì thế hãy cất giữ nó cẩn thận. Trong mọi trường hợp bạn không nên cung cấp thông tin mật khẩu cho bất kỳ người nào dù là người của chúng tôi, người của NukeViet hay bất kỳ người thứ ba nào khác trừ khi bạn hiểu rõ các rủi ro khi để lộ mật khẩu. Nếu quên mật khẩu, bạn có thể sử dụng chức năng “<a href=\"/users/lostpass/\">Quên mật khẩu</a>” trên website. Để thực hiện việc này, bạn cần phải cung cấp cho hệ thống biết tên thành viên hoặc địa chỉ Email đang sử dụng của mình trong tài khoản, sau đó hệ thống sẽ tạo ra cho bạn mật khẩu mới và gửi đến cho bạn để bạn vẫn có thể đăng nhập vào tài khoản thành viên của mình.\r\n\r\n<p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>\r\n</div>\r\n\r\n<h2 style=\"text-align: justify;\"><a id=\"3\" name=\"3\"></a>Điều 3: Sử dụng thông tin</h2>\r\n\r\n<p style=\"text-align: justify;\">Thông tin thu thập được sẽ được chúng tôi sử dụng để:</p>\r\n\r\n<div style=\"text-align: justify;\">- Cung cấp các dịch vụ hỗ trợ &amp; chăm sóc khách hàng.</div>\r\n\r\n<div style=\"text-align: justify;\">- Thực hiện giao dịch thanh toán &amp; gửi các thông báo trong quá trình giao dịch.</div>\r\n\r\n<div style=\"text-align: justify;\">- Xử lý khiếu nại, thu phí &amp; giải quyết sự cố.</div>\r\n\r\n<div style=\"text-align: justify;\">- Ngăn chặn các hành vi có nguy cơ rủi ro, bị cấm hoặc bất hợp pháp và đảm bảo tuân thủ đúng chính sách “Thỏa thuận người dùng”.</div>\r\n\r\n<div style=\"text-align: justify;\">- Đo đạc, tùy biến &amp; cải tiến dịch vụ, nội dung và hình thức của website.</div>\r\n\r\n<div style=\"text-align: justify;\">- Gửi bạn các thông tin về chương trình Marketing, các thông báo &amp; chương trình khuyến mại.</div>\r\n\r\n<div style=\"text-align: justify;\">- So sánh độ chính xác của thông tin cá nhân của bạn trong quá trình kiểm tra với bên thứ ba.</div>\r\n\r\n<p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>\r\n\r\n<h2 style=\"text-align: justify;\"><a id=\"4\" name=\"4\"></a>Điều 4: Tiếp nhận thông tin từ các đối tác</h2>\r\n\r\n<div style=\"text-align: justify;\">Khi sử dụng các công cụ giao dịch và thanh toán thông qua internet, chúng tôi có thể tiếp nhận thêm các thông tin về bạn như địa chỉ username, Email, số tài khoản ngân hàng... Chúng tôi kiểm tra những thông tin này với cơ sở dữ liệu người dùng của mình nhằm xác nhận rằng bạn có phải là khách hàng của chúng tôi hay không nhằm giúp việc thực hiện các dịch vụ cho bạn được thuận lợi.<br />\r\n<br />\r\nCác thông tin tiếp nhận được sẽ được chúng tôi bảo mật như những thông tin mà chúng tôi thu thập được trực tiếp từ bạn.</div>\r\n\r\n<p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>\r\n\r\n<h2><a id=\"5\" name=\"5\"></a>Điều 5: Chia sẻ thông tin với bên thứ ba</h2>\r\n\r\n<p style=\"text-align: justify;\">Chúng tôi sẽ không chia sẻ thông tin cá nhân, thông tin tài chính... của bạn cho các bên thứ 3 trừ khi được sự đồng ý của chính bạn hoặc khi chúng tôi buộc phải tuân thủ theo các quy định pháp luật hoặc khi có yêu cầu từ cơ quan công quyền có thẩm quyền.</p>\r\n\r\n<p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>\r\n\r\n<h2><a id=\"6\" name=\"6\"></a>Điều 6: Thay đổi chính sách bảo mật</h2>\r\n\r\n<p style=\"text-align: justify;\">Chính sách Bảo mật này có thể thay đổi theo thời gian. Chúng tôi sẽ không giảm quyền của bạn theo Chính sách Bảo mật này mà không có sự đồng ý rõ ràng của bạn. Chúng tôi sẽ đăng bất kỳ thay đổi Chính sách Bảo mật nào trên trang này và, nếu những thay đổi này quan trọng, chúng tôi sẽ cung cấp thông báo nổi bật hơn (bao gồm, đối với một số dịch vụ nhất định, thông báo bằng email về các thay đổi của Chính sách Bảo mật).</p>\r\n\r\n<p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>\r\n\r\n<p style=\"text-align: right;\">Chính sách bảo mật mặc định này được xây dựng cho <a href=\"http://nukeviet.vn\" target=\"_blank\">NukeViet CMS</a>, được tham khảo từ website <a href=\"http://webnhanh.vn/vi/thiet-ke-web/detail/Chinh-sach-bao-mat-Quyen-rieng-tu-Privacy-Policy-2147/\">webnhanh.vn</a></p>', '', 1, '4', '', 2, 1, 1626594154, 1626603273, 1, 1, 0),
(3, 'Điều khoản sử dụng', 'terms', '', '', 0, 'Đây là các điều khoản và điều kiện áp dụng cho website này. Truy cập và sử dụng website tức là bạn đã đồng ý với các quy định này.', '<div style=\"text-align: justify;\">Cảm ơn bạn đã sử dụng. Xin vui lòng đọc các Điều khoản một cách cẩn thận, và <a href=\"/contact/\">liên hệ</a> với chúng tôi nếu bạn có bất kỳ câu hỏi. Bằng việc truy cập hoặc sử dụng website của chúng tôi, bạn đồng ý bị ràng buộc bởi các <a href=\"/siteterms/terms-and-conditions.html\">Điều khoản và điều kiện</a> sử dụng cũng như <a href=\"/siteterms/privacy.html\">Chính sách bảo mật</a> của chúng tôi. Nếu không đồng ý với các quy định này, bạn vui lòng ngưng sử dụng website.<br />\r\n<br />\r\n<strong><a id=\"index\" name=\"index\"></a>Danh mục</strong><br />\r\n<a href=\"#1\">Điều 1: Điều khoản liên quan đến phần mềm vận hành website</a><br />\r\n<a href=\"#2\">Điều 2: Giới hạn cho việc sử dụng Website và các tài liệu trên website</a><br />\r\n<a href=\"#3\">Điều 3: Sử dụng thương hiệu</a><br />\r\n<a href=\"#4\">Điều 4: Các hành vi bị nghiêm cấm</a><br />\r\n<a href=\"#5\">Điều 5: Các đường liên kết đến các website khác</a><br />\r\n<a href=\"#6\">Điều 6: Từ chối bảo đảm</a><br />\r\n<a href=\"#7\">Điều 7: Luật áp dụng và cơ quan giải quyết tranh chấp</a><br />\r\n<a href=\"#8\">Điều 8: Thay đổi điều khoản và điều kiện sử dụng</a></div>\r\n\r\n<hr />\r\n<h2 style=\"text-align: justify;\"><a id=\"1\" name=\"1\"></a>Điều khoản liên quan đến phần mềm vận hành website</h2>\r\n\r\n<p style=\"text-align: justify;\">- Website của chúng tôi sử dụng hệ thống NukeViet, là giải pháp về website/ cổng thông tin nguồn mở được phát hành theo giấy phép bản quyền phần mềm tự do nguồn mở “<a href=\"http://www.gnu.org/licenses/old-licenses/gpl-2.0.html\" target=\"_blank\">GNU General Public License</a>” (viết tắt là GNU/GPL hay GPL) và có thể tải về miễn phí tại trang web <a href=\"http://www.nukeviet.vn\" target=\"_blank\">www.nukeviet.vn</a>.<br />\r\n- Website này do chúng tôi sở hữu, điều hành và duy trì. NukeViet (hiểu ở đây là “hệ thống NukeViet” (bao gồm nhân hệ thống NukeViet và các sản phẩm phái sinh như NukeViet CMS, NukeViet Portal, <a href=\"http://edu.nukeviet.vn\" target=\"_blank\">NukeViet Edu Gate</a>...), “www.nukeviet.vn”, “tổ chức NukeViet”, “ban điều hành NukeViet”, &quot;Ban Quản Trị NukeViet&quot; và nói chung là những gì liên quan đến NukeViet...) không liên quan gì đến việc chúng tôi điều hành website cũng như quy định bạn được phép làm và không được phép làm gì trên website này.<br />\r\n- Hệ thống NukeViet là bộ mã nguồn được phát triển để xây dựng các website/ cổng thông tin trên mạng. Chúng tôi (chủ sở hữu, điều hành và duy trì website này) không hỗ trợ và khẳng định hay ngụ ý về việc có liên quan đến NukeViet. Để biết thêm nhiều thông tin về NukeViet, hãy ghé thăm website của NukeViet tại địa chỉ: <a href=\"http://nukeviet.vn\" target=\"_blank\">http://nukeviet.vn</a>.</p>\r\n\r\n<p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>\r\n\r\n<h2 style=\"text-align: justify;\"><a id=\"2\" name=\"2\"></a>Giới hạn cho việc sử dụng Website và các tài liệu trên website</h2>\r\n\r\n<p style=\"text-align: justify;\">- Tất cả các quyền liên quan đến tất cả tài liệu và thông tin được hiển thị và/ hoặc được tạo ra sẵn cho Website này (ví dụ như những tài liệu được cung cấp để tải về) được quản lý, sở hữu hoặc được cho phép sử dụng bởi chúng tôi hoặc chủ sở hữu tương ứng với giấy phép tương ứng. Việc sử dụng các tài liệu và thông tin phải được tuân thủ theo giấy phép tương ứng được áp dụng cho chúng.<br />\r\n- Ngoại trừ các tài liệu được cấp phép rõ ràng dưới dạng giấy phép tư liệu mở&nbsp;Creative Commons (gọi là giấy phép CC) cho phép bạn khai thác và chia sẻ theo quy định của giấy phép tư liệu mở, đối với các loại tài liệu không ghi giấy phép rõ ràng thì bạn không được phép sử dụng (bao gồm nhưng không giới hạn việc sao chép, chỉnh sửa toàn bộ hay một phần, đăng tải, phân phối, cấp phép, bán và xuất bản) bất cứ tài liệu nào mà không có sự cho phép trước bằng văn bản của chúng tôi ngoại trừ việc sử dụng cho mục đích cá nhân, nội bộ, phi thương mại.<br />\r\n- Một số tài liệu hoặc thông tin có những điều khoản và điều kiện áp dụng riêng cho chúng không phải là giấy phép tư liệu mở, trong trường hợp như vậy, bạn được yêu cầu phải chấp nhận các điều khoản và điều kiện đó khi truy cập vào các tài liệu và thông tin này.</p>\r\n\r\n<p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>\r\n\r\n<h2 style=\"text-align: justify;\"><a id=\"3\" name=\"3\"></a>Sử dụng thương hiệu</h2>\r\n\r\n<p style=\"text-align: justify;\">- VINADES.,JSC, NukeViet và thương hiệu gắn với NukeViet (ví dụ NukeViet CMS, NukeViet Portal, NukeViet Edu Gate...), logo công ty VINADES thuộc sở hữu của Công ty cổ phần phát triển nguồn mở Việt Nam.<br />\r\n- Những tên sản phẩm, tên dịch vụ khác, logo và/ hoặc những tên công ty được sử dụng trong Website này là những tài sản đã được đăng ký độc quyền và được giữ bản quyền bởi những người sở hữu và/ hoặc người cấp phép tương ứng.</p>\r\n\r\n<p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>\r\n\r\n<h2 style=\"text-align: justify;\"><a id=\"4\" name=\"4\"></a>Các hành vi bị nghiêm cấm</h2>\r\n\r\n<p style=\"text-align: justify;\">Người truy cập website này không được thực hiện những hành vi dưới đây khi sử dụng website:<br />\r\n- Xâm phạm các quyền hợp pháp (bao gồm nhưng không giới hạn đối với các quyền riêng tư và chung) của người khác.<br />\r\n- Gây ra sự thiệt hại hoặc bất lợi cho người khác.<br />\r\n- Làm xáo trộn trật tự công cộng.<br />\r\n- Hành vi liên quan đến tội phạm.<br />\r\n- Tải lên hoặc phát tán thông tin riêng tư của tổ chức, cá nhân khác mà không được sự chấp thuận của họ.<br />\r\n- Sử dụng Website này vào mục đích thương mại mà chưa được sự cho phép của chúng tôi.<br />\r\n- Nói xấu, làm nhục, phỉ báng người khác.<br />\r\n- Tải lên các tập tin chứa virus hoặc các tập tin bị hư mà có thể gây thiệt hại đến sự vận hành của máy tính khác.<br />\r\n- Những hoạt động có khả năng ảnh hưởng đến hoạt động bình thường của website.<br />\r\n- Những hoạt động mà chúng tôi cho là không thích hợp.<br />\r\n- Những hoạt động bất hợp pháp hoặc bị cấm bởi pháp luật hiện hành.</p>\r\n\r\n<p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>\r\n\r\n<h2 style=\"text-align: justify;\"><a id=\"5\" name=\"5\"></a>Các đường liên kết đến các website khác</h2>\r\n\r\n<p style=\"text-align: justify;\">- Các website của các bên thứ ba (không phải các trang do chúng tôi quản lý) được liên kết đến hoặc từ website này (&quot;Các website khác&quot;) được điều hành và duy trì hoàn toàn độc lập bởi các bên thứ ba đó và không nằm trong quyền điều khiển và/hoặc giám sát của chúng tôi. Việc truy cập các website khác phải được tuân thủ theo các điều khoản và điều kiện quy định bởi ban điều hành của website đó.<br />\r\n- Chúng tôi không chịu trách nhiệm cho sự mất mát hoặc thiệt hại do việc truy cập và sử dụng các website bên ngoài, và bạn phải chịu mọi rủi ro khi truy cập các website đó.<br />\r\n- Không có nội dung nào trong Website này thể hiện như một sự đảm bảo của chúng tôi về nội dung của các website khác và các sản phẩm và/ hoặc các dịch vụ xuất hiện và/ hoặc được cung cấp tại các website khác.</p>\r\n\r\n<p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>\r\n\r\n<h2 style=\"text-align: justify;\"><a id=\"6\" name=\"6\"></a>Từ chối bảo đảm</h2>\r\n\r\n<p style=\"text-align: justify;\">NGOẠI TRỪ PHẠM VI BỊ CẤM THEO LUẬT PHÁP HIỆN HÀNH, CHÚNG TÔI SẼ:<br />\r\n- KHÔNG CHỊU TRÁCH NHIỆM HAY BẢO ĐẢM, MỘT CÁCH RÕ RÀNG HAY NGỤ Ý, BAO GỒM SỰ BẢO ĐẢM VỀ TÍNH CHÍNH XÁC, MỨC ĐỘ TIN CẬY, HOÀN THIỆN, PHÙ HỢP CHO MỤC ĐÍCH CỤ THỂ, SỰ KHÔNG XÂM PHẠM QUYỀN CỦA BÊN THỨ 3 VÀ/HOẶC TÍNH AN TOÀN CỦA NỘI DỤNG WEBSITE NÀY, VÀ NHỮNG TUYÊN BỐ, ĐẢM BẢO CÓ LIÊN QUAN.<br />\r\n- KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT KỲ SỰ THIỆT HẠI HAY MẤT MÁT PHÁT SINH TỪ VIỆC TRUY CẬP VÀ SỬ DỤNG WEBSITE HAY VIỆC KHÔNG THỂ SỬ DỤNG WEBSITE.<br />\r\n- CHÚNG TÔI CÓ THỂ THAY ĐỔI VÀ/HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE NÀY, HOẶC TẠM HOÃN HOẶC NGƯNG CUNG CẤP CÁC DỊCH VỤ QUA WEBSITE NÀY VÀO BẤT KỲ THỜI ĐIỂM NÀO MÀ KHÔNG CẦN THÔNG BÁO TRƯỚC. CHÚNG TÔI SẼ KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT CỨ THIỆT HẠI NÀO PHÁT SINH DO SỰ THAY ĐỔI HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE.</p>\r\n\r\n<p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>\r\n\r\n<h2 style=\"text-align: justify;\"><a id=\"7\" name=\"7\"></a>Luật áp dụng và cơ quan giải quyết tranh chấp</h2>\r\n\r\n<p style=\"text-align: justify;\">- Các Điều Khoản và Điều Kiện này được điều chỉnh và giải thích theo luật của Việt Nam trừ khi có điều khoản khác được cung cấp thêm. Tất cả tranh chấp phát sinh liên quan đến website này và các Điều Khoản và Điều Kiện sử dụng này sẽ được giải quyết tại các tòa án ở Việt Nam.<br />\r\n- Nếu một phần nào đó của các Điều Khoản và Điều Kiện bị xem là không có giá trị, vô hiệu, hoặc không áp dụng được vì lý do nào đó, phần đó được xem như là phần riêng biệt và không ảnh hưởng đến tính hiệu lực của phần còn lại.<br />\r\n- Trong trường hợp có sự mâu thuẫn giữa bản Tiếng Anh và bản Tiếng Việt của bản Điều Khoản và Điều Kiện này, bản Tiếng Việt sẽ được ưu tiên áp dụng.</p>\r\n\r\n<p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>\r\n\r\n<h2 style=\"text-align: justify;\"><a id=\"8\" name=\"8\"></a>Thay đổi điều khoản và điều kiện sử dụng</h2>\r\n\r\n<div style=\"text-align: justify;\">Điều khoản và điều kiện sử dụng có thể thay đổi theo thời gian. Chúng tôi bảo lưu quyền thay đổi hoặc sửa đổi bất kỳ điều khoản và điều kiện cũng như các quy định khác, bất cứ lúc nào và theo ý mình. Chúng tôi sẽ có thông báo trên website khi có sự thay đổi. Tiếp tục sử dụng trang web này sau khi đăng các thay đổi tức là bạn đã chấp nhận các thay đổi đó.\r\n<p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>\r\n</div>', 'bảo mật', 1, '4', '', 3, 1, 1626602997, 1626603262, 1, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_page_config`
--

CREATE TABLE `vuj_vi_page_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_vi_page_config`
--

INSERT INTO `vuj_vi_page_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5'),
('copy_page', '0'),
('alias_lower', '1'),
('socialbutton', 'facebook,twitter');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_referer_stats`
--

CREATE TABLE `vuj_vi_referer_stats` (
  `host` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `month01` int(11) NOT NULL DEFAULT '0',
  `month02` int(11) NOT NULL DEFAULT '0',
  `month03` int(11) NOT NULL DEFAULT '0',
  `month04` int(11) NOT NULL DEFAULT '0',
  `month05` int(11) NOT NULL DEFAULT '0',
  `month06` int(11) NOT NULL DEFAULT '0',
  `month07` int(11) NOT NULL DEFAULT '0',
  `month08` int(11) NOT NULL DEFAULT '0',
  `month09` int(11) NOT NULL DEFAULT '0',
  `month10` int(11) NOT NULL DEFAULT '0',
  `month11` int(11) NOT NULL DEFAULT '0',
  `month12` int(11) NOT NULL DEFAULT '0',
  `last_update` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_searchkeys`
--

CREATE TABLE `vuj_vi_searchkeys` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `skey` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `search_engine` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_siteterms`
--

CREATE TABLE `vuj_vi_siteterms` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hot_post` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_vi_siteterms`
--

INSERT INTO `vuj_vi_siteterms` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`, `hitstotal`, `hot_post`) VALUES
(1, 'Chính sách bảo mật (Quyền riêng tư)', 'privacy', '', '', 0, 'Tài liệu này cung cấp cho bạn (người truy cập và sử dụng website) chính sách liên quan đến bảo mật và quyền riêng tư của bạn', '<strong><a id=\"index\" name=\"index\"></a>Danh mục</strong><br /> <a href=\"#1\">Điều 1: Thu thập thông tin</a><br /> <a href=\"#2\">Điều 2: Lưu trữ &amp; Bảo vệ thông tin</a><br /> <a href=\"#3\">Điều 3: Sử dụng thông tin </a><br /> <a href=\"#4\">Điều 4: Tiếp nhận thông tin từ các đối tác </a><br /> <a href=\"#5\">Điều 5: Chia sẻ thông tin với bên thứ ba</a><br /> <a href=\"#6\">Điều 6: Thay đổi chính sách bảo mật</a>  <hr  /> <h2><a id=\"1\" name=\"1\"></a>Điều 1: Thu thập thông tin</h2>  <h3>1.1. Thu thập tự động:</h3>  <div>Hệ thống này được xây dựng bằng mã nguồn NukeViet. Như mọi website hiện đại khác, chúng tôi sẽ thu thập địa chỉ IP và các thông tin web tiêu chuẩn khác của bạn như: loại trình duyệt, các trang bạn truy cập trong quá trình sử dụng dịch vụ, thông tin về máy tính &amp; thiết bị mạng v.v… cho mục đích phân tích thông tin phục vụ việc bảo mật và giữ an toàn cho hệ thống.</div>  <h3>1.2. Thu thập từ các khai báo của chính bạn:</h3>  <div>Các thông tin do bạn khai báo cho chúng tôi trong quá trình làm việc như: đăng ký tài khoản, liên hệ với chúng tôi... cũng sẽ được chúng tôi lưu trữ phục vụ công việc chăm sóc khách hàng sau này.</div>  <h3>1.3. Thu thập thông tin thông qua việc đặt cookies:</h3>  <p>Như mọi website hiện đại khác, khi bạn truy cập website, chúng tôi (hoặc các công cụ theo dõi hoặc thống kê hoạt động của website do các đối tác cung cấp) sẽ đặt một số File dữ liệu gọi là Cookies lên đĩa cứng hoặc bộ nhớ máy tính của bạn.</p>  <p>Một trong số những Cookies này có thể tồn tại lâu để thuận tiện cho bạn trong quá trình sử dụng, ví dụ như: lưu Email của bạn trong trang đăng nhập để bạn không phải nhập lại v.v…</p>  <h3>1.4. Thu thập và lưu trữ thông tin trong quá khứ:</h3>  <p>Bạn có thể thay đổi thông tin cá nhân của mình bất kỳ lúc nào bằng cách sử dụng chức năng tương ứng. Tuy nhiên chúng tôi sẽ lưu lại những thông tin bị thay đổi để chống các hành vi xóa dấu vết gian lận.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"2\" name=\"2\"></a>Điều 2: Lưu trữ &amp; Bảo vệ thông tin</h2>  <div>Hầu hết các thông tin được thu thập sẽ được lưu trữ tại cơ sở dữ liệu của chúng tôi.<br /> <br /> Chúng tôi bảo vệ dữ liệu cá nhân của các bạn bằng các hình thức như: mật khẩu, tường lửa, mã hóa cùng các hình thức thích hợp khác và chỉ cấp phép việc truy cập và xử lý dữ liệu cho các đối tượng phù hợp, ví dụ chính bạn hoặc các nhân viên có trách nhiệm xử lý thông tin với bạn thông qua các bước xác định danh tính phù hợp.<br /> <br /> Mật khẩu của bạn được lưu trữ và bảo vệ bằng phương pháp mã hoá trong cơ sở dữ liệu của hệ thống, vì thế nó rất an toàn. Tuy nhiên, chúng tôi khuyên bạn không nên dùng lại mật khẩu này trên các website khác. Mật khẩu của bạn là cách duy nhất để bạn đăng nhập vào tài khoản thành viên của mình trong website này, vì thế hãy cất giữ nó cẩn thận. Trong mọi trường hợp bạn không nên cung cấp thông tin mật khẩu cho bất kỳ người nào dù là người của chúng tôi, người của NukeViet hay bất kỳ người thứ ba nào khác trừ khi bạn hiểu rõ các rủi ro khi để lộ mật khẩu. Nếu quên mật khẩu, bạn có thể sử dụng chức năng “<a href=\"/users/lostpass/\">Quên mật khẩu</a>” trên website. Để thực hiện việc này, bạn cần phải cung cấp cho hệ thống biết tên thành viên hoặc địa chỉ Email đang sử dụng của mình trong tài khoản, sau đó hệ thống sẽ tạo ra cho bạn mật khẩu mới và gửi đến cho bạn để bạn vẫn có thể đăng nhập vào tài khoản thành viên của mình.  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p> </div>  <h2><a id=\"3\" name=\"3\"></a>Điều 3: Sử dụng thông tin</h2>  <p>Thông tin thu thập được sẽ được chúng tôi sử dụng để:</p>  <div>- Cung cấp các dịch vụ hỗ trợ &amp; chăm sóc khách hàng.</div>  <div>- Thực hiện giao dịch thanh toán &amp; gửi các thông báo trong quá trình giao dịch.</div>  <div>- Xử lý khiếu nại, thu phí &amp; giải quyết sự cố.</div>  <div>- Ngăn chặn các hành vi có nguy cơ rủi ro, bị cấm hoặc bất hợp pháp và đảm bảo tuân thủ đúng chính sách “Thỏa thuận người dùng”.</div>  <div>- Đo đạc, tùy biến &amp; cải tiến dịch vụ, nội dung và hình thức của website.</div>  <div>- Gửi bạn các thông tin về chương trình Marketing, các thông báo &amp; chương trình khuyến mại.</div>  <div>- So sánh độ chính xác của thông tin cá nhân của bạn trong quá trình kiểm tra với bên thứ ba.</div>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"4\" name=\"4\"></a>Điều 4: Tiếp nhận thông tin từ các đối tác</h2>  <div>Khi sử dụng các công cụ giao dịch và thanh toán thông qua internet, chúng tôi có thể tiếp nhận thêm các thông tin về bạn như địa chỉ username, Email, số tài khoản ngân hàng... Chúng tôi kiểm tra những thông tin này với cơ sở dữ liệu người dùng của mình nhằm xác nhận rằng bạn có phải là khách hàng của chúng tôi hay không nhằm giúp việc thực hiện các dịch vụ cho bạn được thuận lợi.<br /> <br /> Các thông tin tiếp nhận được sẽ được chúng tôi bảo mật như những thông tin mà chúng tôi thu thập được trực tiếp từ bạn.</div>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"5\" name=\"5\"></a>Điều 5: Chia sẻ thông tin với bên thứ ba</h2>  <p>Chúng tôi sẽ không chia sẻ thông tin cá nhân, thông tin tài chính... của bạn cho các bên thứ 3 trừ khi được sự đồng ý của chính bạn hoặc khi chúng tôi buộc phải tuân thủ theo các quy định pháp luật hoặc khi có yêu cầu từ cơ quan công quyền có thẩm quyền.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"6\" name=\"6\"></a>Điều 6: Thay đổi chính sách bảo mật</h2>  <p>Chính sách Bảo mật này có thể thay đổi theo thời gian. Chúng tôi sẽ không giảm quyền của bạn theo Chính sách Bảo mật này mà không có sự đồng ý rõ ràng của bạn. Chúng tôi sẽ đăng bất kỳ thay đổi Chính sách Bảo mật nào trên trang này và, nếu những thay đổi này quan trọng, chúng tôi sẽ cung cấp thông báo nổi bật hơn (bao gồm, đối với một số dịch vụ nhất định, thông báo bằng email về các thay đổi của Chính sách Bảo mật).</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <p style=\"text-align: right;\">Chính sách bảo mật mặc định này được xây dựng cho <a href=\"http://nukeviet.vn\" target=\"_blank\">NukeViet CMS</a>, được tham khảo từ website <a href=\"http://webnhanh.vn/vi/thiet-ke-web/detail/Chinh-sach-bao-mat-Quyen-rieng-tu-Privacy-Policy-2147/\">webnhanh.vn</a></p>', '', 0, '4', '', 1, 1, 1626587642, 1626587642, 1, 0, 0),
(2, 'Điều khoản và điều kiện sử dụng', 'terms-and-conditions', '', '', 0, 'Đây là các điều khoản và điều kiện áp dụng cho website này. Truy cập và sử dụng website tức là bạn đã đồng ý với các quy định này.', '<div>Cảm ơn bạn đã sử dụng. Xin vui lòng đọc các Điều khoản một cách cẩn thận, và <a href=\"/contact/\">liên hệ</a> với chúng tôi nếu bạn có bất kỳ câu hỏi. Bằng việc truy cập hoặc sử dụng website của chúng tôi, bạn đồng ý bị ràng buộc bởi các <a href=\"/siteterms/terms-and-conditions.html\">Điều khoản và điều kiện</a> sử dụng cũng như <a href=\"/siteterms/privacy.html\">Chính sách bảo mật</a> của chúng tôi. Nếu không đồng ý với các quy định này, bạn vui lòng ngưng sử dụng website.<br /> <br /> <strong><a id=\"index\" name=\"index\"></a>Danh mục</strong><br /> <a href=\"#1\">Điều 1: Điều khoản liên quan đến phần mềm vận hành website</a><br /> <a href=\"#2\">Điều 2: Giới hạn cho việc sử dụng Website và các tài liệu trên website</a><br /> <a href=\"#3\">Điều 3: Sử dụng thương hiệu</a><br /> <a href=\"#4\">Điều 4: Các hành vi bị nghiêm cấm</a><br /> <a href=\"#5\">Điều 5: Các đường liên kết đến các website khác</a><br /> <a href=\"#6\">Điều 6: Từ chối bảo đảm</a><br /> <a href=\"#7\">Điều 7: Luật áp dụng và cơ quan giải quyết tranh chấp</a><br /> <a href=\"#8\">Điều 8: Thay đổi điều khoản và điều kiện sử dụng</a></div>  <hr  /> <h2><a id=\"1\" name=\"1\"></a>Điều khoản liên quan đến phần mềm vận hành website</h2>  <p>- Website của chúng tôi sử dụng hệ thống NukeViet, là giải pháp về website/ cổng thông tin nguồn mở được phát hành theo giấy phép bản quyền phần mềm tự do nguồn mở “<a href=\"http://www.gnu.org/licenses/old-licenses/gpl-2.0.html\" target=\"_blank\">GNU General Public License</a>” (viết tắt là GNU/GPL hay GPL) và có thể tải về miễn phí tại trang web <a href=\"http://www.nukeviet.vn\" target=\"_blank\">www.nukeviet.vn</a>.<br /> - Website này do chúng tôi sở hữu, điều hành và duy trì. NukeViet (hiểu ở đây là “hệ thống NukeViet” (bao gồm nhân hệ thống NukeViet và các sản phẩm phái sinh như NukeViet CMS, NukeViet Portal, <a href=\"http://edu.nukeviet.vn\" target=\"_blank\">NukeViet Edu Gate</a>...), “www.nukeviet.vn”, “tổ chức NukeViet”, “ban điều hành NukeViet”, &quot;Ban Quản Trị NukeViet&quot; và nói chung là những gì liên quan đến NukeViet...) không liên quan gì đến việc chúng tôi điều hành website cũng như quy định bạn được phép làm và không được phép làm gì trên website này.<br /> - Hệ thống NukeViet là bộ mã nguồn được phát triển để xây dựng các website/ cổng thông tin trên mạng. Chúng tôi (chủ sở hữu, điều hành và duy trì website này) không hỗ trợ và khẳng định hay ngụ ý về việc có liên quan đến NukeViet. Để biết thêm nhiều thông tin về NukeViet, hãy ghé thăm website của NukeViet tại địa chỉ: <a href=\"http://nukeviet.vn\" target=\"_blank\">http://nukeviet.vn</a>.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"2\" name=\"2\"></a>Giới hạn cho việc sử dụng Website và các tài liệu trên website</h2>  <p>- Tất cả các quyền liên quan đến tất cả tài liệu và thông tin được hiển thị và/ hoặc được tạo ra sẵn cho Website này (ví dụ như những tài liệu được cung cấp để tải về) được quản lý, sở hữu hoặc được cho phép sử dụng bởi chúng tôi hoặc chủ sở hữu tương ứng với giấy phép tương ứng. Việc sử dụng các tài liệu và thông tin phải được tuân thủ theo giấy phép tương ứng được áp dụng cho chúng.<br /> - Ngoại trừ các tài liệu được cấp phép rõ ràng dưới dạng giấy phép tư liệu mở&nbsp;Creative Commons (gọi là giấy phép CC) cho phép bạn khai thác và chia sẻ theo quy định của giấy phép tư liệu mở, đối với các loại tài liệu không ghi giấy phép rõ ràng thì bạn không được phép sử dụng (bao gồm nhưng không giới hạn việc sao chép, chỉnh sửa toàn bộ hay một phần, đăng tải, phân phối, cấp phép, bán và xuất bản) bất cứ tài liệu nào mà không có sự cho phép trước bằng văn bản của chúng tôi ngoại trừ việc sử dụng cho mục đích cá nhân, nội bộ, phi thương mại.<br /> - Một số tài liệu hoặc thông tin có những điều khoản và điều kiện áp dụng riêng cho chúng không phải là giấy phép tư liệu mở, trong trường hợp như vậy, bạn được yêu cầu phải chấp nhận các điều khoản và điều kiện đó khi truy cập vào các tài liệu và thông tin này.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"3\" name=\"3\"></a>Sử dụng thương hiệu</h2>  <p>- VINADES.,JSC, NukeViet và thương hiệu gắn với NukeViet (ví dụ NukeViet CMS, NukeViet Portal, NukeViet Edu Gate...), logo công ty VINADES thuộc sở hữu của Công ty cổ phần phát triển nguồn mở Việt Nam.<br /> - Những tên sản phẩm, tên dịch vụ khác, logo và/ hoặc những tên công ty được sử dụng trong Website này là những tài sản đã được đăng ký độc quyền và được giữ bản quyền bởi những người sở hữu và/ hoặc người cấp phép tương ứng.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"4\" name=\"4\"></a>Các hành vi bị nghiêm cấm</h2>  <p>Người truy cập website này không được thực hiện những hành vi dưới đây khi sử dụng website:<br /> - Xâm phạm các quyền hợp pháp (bao gồm nhưng không giới hạn đối với các quyền riêng tư và chung) của người khác.<br /> - Gây ra sự thiệt hại hoặc bất lợi cho người khác.<br /> - Làm xáo trộn trật tự công cộng.<br /> - Hành vi liên quan đến tội phạm.<br /> - Tải lên hoặc phát tán thông tin riêng tư của tổ chức, cá nhân khác mà không được sự chấp thuận của họ.<br /> - Sử dụng Website này vào mục đích thương mại mà chưa được sự cho phép của chúng tôi.<br /> - Nói xấu, làm nhục, phỉ báng người khác.<br /> - Tải lên các tập tin chứa virus hoặc các tập tin bị hư mà có thể gây thiệt hại đến sự vận hành của máy tính khác.<br /> - Những hoạt động có khả năng ảnh hưởng đến hoạt động bình thường của website.<br /> - Những hoạt động mà chúng tôi cho là không thích hợp.<br /> - Những hoạt động bất hợp pháp hoặc bị cấm bởi pháp luật hiện hành.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"5\" name=\"5\"></a>Các đường liên kết đến các website khác</h2>  <p>- Các website của các bên thứ ba (không phải các trang do chúng tôi quản lý) được liên kết đến hoặc từ website này (&quot;Các website khác&quot;) được điều hành và duy trì hoàn toàn độc lập bởi các bên thứ ba đó và không nằm trong quyền điều khiển và/hoặc giám sát của chúng tôi. Việc truy cập các website khác phải được tuân thủ theo các điều khoản và điều kiện quy định bởi ban điều hành của website đó.<br /> - Chúng tôi không chịu trách nhiệm cho sự mất mát hoặc thiệt hại do việc truy cập và sử dụng các website bên ngoài, và bạn phải chịu mọi rủi ro khi truy cập các website đó.<br /> - Không có nội dung nào trong Website này thể hiện như một sự đảm bảo của chúng tôi về nội dung của các website khác và các sản phẩm và/ hoặc các dịch vụ xuất hiện và/ hoặc được cung cấp tại các website khác.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"6\" name=\"6\"></a>Từ chối bảo đảm</h2>  <p>NGOẠI TRỪ PHẠM VI BỊ CẤM THEO LUẬT PHÁP HIỆN HÀNH, CHÚNG TÔI SẼ:<br /> - KHÔNG CHỊU TRÁCH NHIỆM HAY BẢO ĐẢM, MỘT CÁCH RÕ RÀNG HAY NGỤ Ý, BAO GỒM SỰ BẢO ĐẢM VỀ TÍNH CHÍNH XÁC, MỨC ĐỘ TIN CẬY, HOÀN THIỆN, PHÙ HỢP CHO MỤC ĐÍCH CỤ THỂ, SỰ KHÔNG XÂM PHẠM QUYỀN CỦA BÊN THỨ 3 VÀ/HOẶC TÍNH AN TOÀN CỦA NỘI DỤNG WEBSITE NÀY, VÀ NHỮNG TUYÊN BỐ, ĐẢM BẢO CÓ LIÊN QUAN.<br /> - KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT KỲ SỰ THIỆT HẠI HAY MẤT MÁT PHÁT SINH TỪ VIỆC TRUY CẬP VÀ SỬ DỤNG WEBSITE HAY VIỆC KHÔNG THỂ SỬ DỤNG WEBSITE.<br /> - CHÚNG TÔI CÓ THỂ THAY ĐỔI VÀ/HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE NÀY, HOẶC TẠM HOÃN HOẶC NGƯNG CUNG CẤP CÁC DỊCH VỤ QUA WEBSITE NÀY VÀO BẤT KỲ THỜI ĐIỂM NÀO MÀ KHÔNG CẦN THÔNG BÁO TRƯỚC. CHÚNG TÔI SẼ KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT CỨ THIỆT HẠI NÀO PHÁT SINH DO SỰ THAY ĐỔI HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"7\" name=\"7\"></a>Luật áp dụng và cơ quan giải quyết tranh chấp</h2>  <p>- Các Điều Khoản và Điều Kiện này được điều chỉnh và giải thích theo luật của Việt Nam trừ khi có điều khoản khác được cung cấp thêm. Tất cả tranh chấp phát sinh liên quan đến website này và các Điều Khoản và Điều Kiện sử dụng này sẽ được giải quyết tại các tòa án ở Việt Nam.<br /> - Nếu một phần nào đó của các Điều Khoản và Điều Kiện bị xem là không có giá trị, vô hiệu, hoặc không áp dụng được vì lý do nào đó, phần đó được xem như là phần riêng biệt và không ảnh hưởng đến tính hiệu lực của phần còn lại.<br /> - Trong trường hợp có sự mâu thuẫn giữa bản Tiếng Anh và bản Tiếng Việt của bản Điều Khoản và Điều Kiện này, bản Tiếng Việt sẽ được ưu tiên áp dụng.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"8\" name=\"8\"></a>Thay đổi điều khoản và điều kiện sử dụng</h2>  <div>Điều khoản và điều kiện sử dụng có thể thay đổi theo thời gian. Chúng tôi bảo lưu quyền thay đổi hoặc sửa đổi bất kỳ điều khoản và điều kiện cũng như các quy định khác, bất cứ lúc nào và theo ý mình. Chúng tôi sẽ có thông báo trên website khi có sự thay đổi. Tiếp tục sử dụng trang web này sau khi đăng các thay đổi tức là bạn đã chấp nhận các thay đổi đó. <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p> </div>', '', 0, '4', '', 2, 1, 1626587642, 1626587642, 1, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_siteterms_config`
--

CREATE TABLE `vuj_vi_siteterms_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_vi_siteterms_config`
--

INSERT INTO `vuj_vi_siteterms_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5'),
('copy_page', '0'),
('alias_lower', '1'),
('socialbutton', 'facebook,twitter');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_slider_blocks`
--

CREATE TABLE `vuj_vi_slider_blocks` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_vi_slider_blocks`
--

INSERT INTO `vuj_vi_slider_blocks` (`bid`, `title`, `description`) VALUES
(1, 'Home slider (Do not remove)', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuj_vi_slider_rows`
--

CREATE TABLE `vuj_vi_slider_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `bid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '_blank|_self|_parent|_top',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: In-Active, 1: Active, 2: Expired'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vuj_vi_slider_rows`
--

INSERT INTO `vuj_vi_slider_rows` (`id`, `bid`, `title`, `description`, `link`, `target`, `image`, `start_time`, `end_time`, `status`) VALUES
(1, 1, 'Slide 1', '<h2 class=\"fw-light pb-1 from-bottom\">World of music with</h2>\n\n<h1 class=\"display-4 from-bottom delay-1\">Headphones</h1>\n\n<h5 class=\"fw-light pb-3 from-bottom delay-2\">Choose between top brands</h5>', 'http://haiaustore.io', '_blank', 'image/louis-vuitton-lvxnba-handle-trunk-monogram.png', 1626601457, 0, 1),
(2, 1, 'Slider 2', '<h2 class=\"fw-light pb-1 from-bottom\">World of music with</h2>\n\n<h1 class=\"display-4 from-bottom delay-1\">Headphones</h1>\n\n<h5 class=\"fw-light pb-3 from-bottom delay-2\">Choose between top brands</h5>', 'http://haiaustore.io', '_blank', '', 1626601498, 0, 1),
(3, 1, 'Slide 3', '<h2 class=\"fw-light pb-1 from-bottom\">World of music with</h2>\n\n<h1 class=\"display-4 from-bottom delay-1\">Headphones</h1>\n\n<h5 class=\"fw-light pb-3 from-bottom delay-2\">Choose between top brands</h5>', 'http://haiaustore.io', '', '', 1626601513, 0, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `vuj_authors`
--
ALTER TABLE `vuj_authors`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `vuj_authors_api_credential`
--
ALTER TABLE `vuj_authors_api_credential`
  ADD UNIQUE KEY `credential_ident` (`credential_ident`),
  ADD UNIQUE KEY `credential_secret` (`credential_secret`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Chỉ mục cho bảng `vuj_authors_api_role`
--
ALTER TABLE `vuj_authors_api_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Chỉ mục cho bảng `vuj_authors_config`
--
ALTER TABLE `vuj_authors_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keyname` (`keyname`);

--
-- Chỉ mục cho bảng `vuj_authors_module`
--
ALTER TABLE `vuj_authors_module`
  ADD PRIMARY KEY (`mid`),
  ADD UNIQUE KEY `module` (`module`);

--
-- Chỉ mục cho bảng `vuj_authors_oauth`
--
ALTER TABLE `vuj_authors_oauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`,`oauth_server`,`oauth_uid`),
  ADD KEY `oauth_email` (`oauth_email`);

--
-- Chỉ mục cho bảng `vuj_banners_click`
--
ALTER TABLE `vuj_banners_click`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bid` (`bid`),
  ADD KEY `click_day` (`click_day`),
  ADD KEY `click_ip` (`click_ip`),
  ADD KEY `click_country` (`click_country`),
  ADD KEY `click_browse_key` (`click_browse_key`),
  ADD KEY `click_os_key` (`click_os_key`);

--
-- Chỉ mục cho bảng `vuj_banners_plans`
--
ALTER TABLE `vuj_banners_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- Chỉ mục cho bảng `vuj_banners_rows`
--
ALTER TABLE `vuj_banners_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `clid` (`clid`);

--
-- Chỉ mục cho bảng `vuj_config`
--
ALTER TABLE `vuj_config`
  ADD UNIQUE KEY `lang` (`lang`,`module`,`config_name`);

--
-- Chỉ mục cho bảng `vuj_cookies`
--
ALTER TABLE `vuj_cookies`
  ADD UNIQUE KEY `cookiename` (`name`,`domain`,`path`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `vuj_counter`
--
ALTER TABLE `vuj_counter`
  ADD UNIQUE KEY `c_type` (`c_type`,`c_val`);

--
-- Chỉ mục cho bảng `vuj_cronjobs`
--
ALTER TABLE `vuj_cronjobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_sys` (`is_sys`);

--
-- Chỉ mục cho bảng `vuj_extension_files`
--
ALTER TABLE `vuj_extension_files`
  ADD PRIMARY KEY (`idfile`);

--
-- Chỉ mục cho bảng `vuj_ips`
--
ALTER TABLE `vuj_ips`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip` (`ip`,`type`);

--
-- Chỉ mục cho bảng `vuj_language`
--
ALTER TABLE `vuj_language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filelang` (`idfile`,`lang_key`,`langtype`);

--
-- Chỉ mục cho bảng `vuj_language_file`
--
ALTER TABLE `vuj_language_file`
  ADD PRIMARY KEY (`idfile`),
  ADD UNIQUE KEY `module` (`module`,`admin_file`);

--
-- Chỉ mục cho bảng `vuj_logs`
--
ALTER TABLE `vuj_logs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vuj_notification`
--
ALTER TABLE `vuj_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `send_to` (`send_to`),
  ADD KEY `admin_view_allowed` (`admin_view_allowed`),
  ADD KEY `logic_mode` (`logic_mode`);

--
-- Chỉ mục cho bảng `vuj_plugin`
--
ALTER TABLE `vuj_plugin`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `plugin_file` (`plugin_file`);

--
-- Chỉ mục cho bảng `vuj_sessions`
--
ALTER TABLE `vuj_sessions`
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `onl_time` (`onl_time`);

--
-- Chỉ mục cho bảng `vuj_setup_extensions`
--
ALTER TABLE `vuj_setup_extensions`
  ADD UNIQUE KEY `title` (`type`,`title`),
  ADD KEY `id` (`id`),
  ADD KEY `type` (`type`);

--
-- Chỉ mục cho bảng `vuj_setup_language`
--
ALTER TABLE `vuj_setup_language`
  ADD PRIMARY KEY (`lang`);

--
-- Chỉ mục cho bảng `vuj_shops_block`
--
ALTER TABLE `vuj_shops_block`
  ADD UNIQUE KEY `bid` (`bid`,`id`);

--
-- Chỉ mục cho bảng `vuj_shops_block_cat`
--
ALTER TABLE `vuj_shops_block_cat`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `vi_alias` (`vi_alias`);

--
-- Chỉ mục cho bảng `vuj_shops_carrier`
--
ALTER TABLE `vuj_shops_carrier`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vuj_shops_carrier_config`
--
ALTER TABLE `vuj_shops_carrier_config`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vuj_shops_carrier_config_items`
--
ALTER TABLE `vuj_shops_carrier_config_items`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vuj_shops_carrier_config_location`
--
ALTER TABLE `vuj_shops_carrier_config_location`
  ADD UNIQUE KEY `cid` (`cid`,`lid`);

--
-- Chỉ mục cho bảng `vuj_shops_catalogs`
--
ALTER TABLE `vuj_shops_catalogs`
  ADD PRIMARY KEY (`catid`),
  ADD UNIQUE KEY `vi_alias` (`vi_alias`),
  ADD KEY `parentid` (`parentid`);

--
-- Chỉ mục cho bảng `vuj_shops_coupons`
--
ALTER TABLE `vuj_shops_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vuj_shops_coupons_history`
--
ALTER TABLE `vuj_shops_coupons_history`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vuj_shops_coupons_product`
--
ALTER TABLE `vuj_shops_coupons_product`
  ADD UNIQUE KEY `cid` (`cid`,`pid`);

--
-- Chỉ mục cho bảng `vuj_shops_discounts`
--
ALTER TABLE `vuj_shops_discounts`
  ADD PRIMARY KEY (`did`),
  ADD KEY `begin_time` (`begin_time`,`end_time`);

--
-- Chỉ mục cho bảng `vuj_shops_field`
--
ALTER TABLE `vuj_shops_field`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `field` (`field`);

--
-- Chỉ mục cho bảng `vuj_shops_field_value_vi`
--
ALTER TABLE `vuj_shops_field_value_vi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rows_id` (`rows_id`,`field_id`);

--
-- Chỉ mục cho bảng `vuj_shops_files`
--
ALTER TABLE `vuj_shops_files`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vuj_shops_files_rows`
--
ALTER TABLE `vuj_shops_files_rows`
  ADD UNIQUE KEY `id_files` (`id_files`,`id_rows`);

--
-- Chỉ mục cho bảng `vuj_shops_group`
--
ALTER TABLE `vuj_shops_group`
  ADD PRIMARY KEY (`groupid`),
  ADD UNIQUE KEY `vi_alias` (`vi_alias`),
  ADD KEY `parentid` (`parentid`);

--
-- Chỉ mục cho bảng `vuj_shops_group_cateid`
--
ALTER TABLE `vuj_shops_group_cateid`
  ADD UNIQUE KEY `groupid` (`groupid`,`cateid`);

--
-- Chỉ mục cho bảng `vuj_shops_group_items`
--
ALTER TABLE `vuj_shops_group_items`
  ADD PRIMARY KEY (`pro_id`,`group_id`),
  ADD KEY `pro_id` (`pro_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Chỉ mục cho bảng `vuj_shops_group_quantity`
--
ALTER TABLE `vuj_shops_group_quantity`
  ADD UNIQUE KEY `pro_id` (`pro_id`,`listgroup`);

--
-- Chỉ mục cho bảng `vuj_shops_location`
--
ALTER TABLE `vuj_shops_location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentid` (`parentid`);

--
-- Chỉ mục cho bảng `vuj_shops_money_vi`
--
ALTER TABLE `vuj_shops_money_vi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Chỉ mục cho bảng `vuj_shops_orders`
--
ALTER TABLE `vuj_shops_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `order_code` (`order_code`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `order_time` (`order_time`),
  ADD KEY `shop_id` (`shop_id`);

--
-- Chỉ mục cho bảng `vuj_shops_orders_id`
--
ALTER TABLE `vuj_shops_orders_id`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orderid` (`order_id`,`id`);

--
-- Chỉ mục cho bảng `vuj_shops_orders_id_group`
--
ALTER TABLE `vuj_shops_orders_id_group`
  ADD UNIQUE KEY `orderid` (`order_i`,`group_id`);

--
-- Chỉ mục cho bảng `vuj_shops_orders_shipping`
--
ALTER TABLE `vuj_shops_orders_shipping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `add_time` (`add_time`);

--
-- Chỉ mục cho bảng `vuj_shops_point`
--
ALTER TABLE `vuj_shops_point`
  ADD PRIMARY KEY (`userid`);

--
-- Chỉ mục cho bảng `vuj_shops_point_history`
--
ALTER TABLE `vuj_shops_point_history`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vuj_shops_review`
--
ALTER TABLE `vuj_shops_review`
  ADD PRIMARY KEY (`review_id`);

--
-- Chỉ mục cho bảng `vuj_shops_rows`
--
ALTER TABLE `vuj_shops_rows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vi_alias` (`vi_alias`),
  ADD KEY `listcatid` (`listcatid`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`);

--
-- Chỉ mục cho bảng `vuj_shops_shops`
--
ALTER TABLE `vuj_shops_shops`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vuj_shops_shops_carrier`
--
ALTER TABLE `vuj_shops_shops_carrier`
  ADD UNIQUE KEY `shops_id` (`shops_id`,`carrier_id`);

--
-- Chỉ mục cho bảng `vuj_shops_tabs`
--
ALTER TABLE `vuj_shops_tabs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vuj_shops_tags_id_vi`
--
ALTER TABLE `vuj_shops_tags_id_vi`
  ADD UNIQUE KEY `sid` (`id`,`tid`),
  ADD KEY `tid` (`tid`);

--
-- Chỉ mục cho bảng `vuj_shops_tags_vi`
--
ALTER TABLE `vuj_shops_tags_vi`
  ADD PRIMARY KEY (`tid`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `vuj_shops_template`
--
ALTER TABLE `vuj_shops_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `vuj_shops_transaction`
--
ALTER TABLE `vuj_shops_transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Chỉ mục cho bảng `vuj_shops_units`
--
ALTER TABLE `vuj_shops_units`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vuj_shops_warehouse`
--
ALTER TABLE `vuj_shops_warehouse`
  ADD PRIMARY KEY (`wid`);

--
-- Chỉ mục cho bảng `vuj_shops_warehouse_logs`
--
ALTER TABLE `vuj_shops_warehouse_logs`
  ADD PRIMARY KEY (`logid`),
  ADD KEY `wid` (`wid`);

--
-- Chỉ mục cho bảng `vuj_shops_warehouse_logs_group`
--
ALTER TABLE `vuj_shops_warehouse_logs_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logid` (`logid`);

--
-- Chỉ mục cho bảng `vuj_shops_weight_vi`
--
ALTER TABLE `vuj_shops_weight_vi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Chỉ mục cho bảng `vuj_shops_wishlist`
--
ALTER TABLE `vuj_shops_wishlist`
  ADD PRIMARY KEY (`wid`);

--
-- Chỉ mục cho bảng `vuj_upload_dir`
--
ALTER TABLE `vuj_upload_dir`
  ADD PRIMARY KEY (`did`),
  ADD UNIQUE KEY `name` (`dirname`);

--
-- Chỉ mục cho bảng `vuj_upload_file`
--
ALTER TABLE `vuj_upload_file`
  ADD UNIQUE KEY `did` (`did`,`title`),
  ADD KEY `userid` (`userid`),
  ADD KEY `type` (`type`);

--
-- Chỉ mục cho bảng `vuj_users`
--
ALTER TABLE `vuj_users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `md5username` (`md5username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idsite` (`idsite`);

--
-- Chỉ mục cho bảng `vuj_users_backupcodes`
--
ALTER TABLE `vuj_users_backupcodes`
  ADD UNIQUE KEY `userid` (`userid`,`code`);

--
-- Chỉ mục cho bảng `vuj_users_config`
--
ALTER TABLE `vuj_users_config`
  ADD PRIMARY KEY (`config`);

--
-- Chỉ mục cho bảng `vuj_users_edit`
--
ALTER TABLE `vuj_users_edit`
  ADD PRIMARY KEY (`userid`);

--
-- Chỉ mục cho bảng `vuj_users_field`
--
ALTER TABLE `vuj_users_field`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `field` (`field`);

--
-- Chỉ mục cho bảng `vuj_users_groups`
--
ALTER TABLE `vuj_users_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `kalias` (`alias`,`idsite`),
  ADD KEY `exp_time` (`exp_time`);

--
-- Chỉ mục cho bảng `vuj_users_groups_detail`
--
ALTER TABLE `vuj_users_groups_detail`
  ADD UNIQUE KEY `group_id_lang` (`lang`,`group_id`);

--
-- Chỉ mục cho bảng `vuj_users_groups_users`
--
ALTER TABLE `vuj_users_groups_users`
  ADD PRIMARY KEY (`group_id`,`userid`);

--
-- Chỉ mục cho bảng `vuj_users_info`
--
ALTER TABLE `vuj_users_info`
  ADD PRIMARY KEY (`userid`);

--
-- Chỉ mục cho bảng `vuj_users_openid`
--
ALTER TABLE `vuj_users_openid`
  ADD PRIMARY KEY (`opid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `email` (`email`);

--
-- Chỉ mục cho bảng `vuj_users_question`
--
ALTER TABLE `vuj_users_question`
  ADD PRIMARY KEY (`qid`),
  ADD UNIQUE KEY `title` (`title`,`lang`);

--
-- Chỉ mục cho bảng `vuj_users_reg`
--
ALTER TABLE `vuj_users_reg`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `login` (`username`),
  ADD UNIQUE KEY `md5username` (`md5username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `vuj_vi_blocks_groups`
--
ALTER TABLE `vuj_vi_blocks_groups`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `theme` (`theme`),
  ADD KEY `module` (`module`),
  ADD KEY `position` (`position`),
  ADD KEY `exp_time` (`exp_time`);

--
-- Chỉ mục cho bảng `vuj_vi_blocks_weight`
--
ALTER TABLE `vuj_vi_blocks_weight`
  ADD UNIQUE KEY `bid` (`bid`,`func_id`);

--
-- Chỉ mục cho bảng `vuj_vi_comment`
--
ALTER TABLE `vuj_vi_comment`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `mod_id` (`module`,`area`,`id`),
  ADD KEY `post_time` (`post_time`);

--
-- Chỉ mục cho bảng `vuj_vi_contact_department`
--
ALTER TABLE `vuj_vi_contact_department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `full_name` (`full_name`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `vuj_vi_contact_reply`
--
ALTER TABLE `vuj_vi_contact_reply`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `vuj_vi_contact_send`
--
ALTER TABLE `vuj_vi_contact_send`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_name` (`sender_name`);

--
-- Chỉ mục cho bảng `vuj_vi_contact_supporter`
--
ALTER TABLE `vuj_vi_contact_supporter`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vuj_vi_menu`
--
ALTER TABLE `vuj_vi_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Chỉ mục cho bảng `vuj_vi_menu_rows`
--
ALTER TABLE `vuj_vi_menu_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentid` (`parentid`,`mid`);

--
-- Chỉ mục cho bảng `vuj_vi_modfuncs`
--
ALTER TABLE `vuj_vi_modfuncs`
  ADD PRIMARY KEY (`func_id`),
  ADD UNIQUE KEY `func_name` (`func_name`,`in_module`),
  ADD UNIQUE KEY `alias` (`alias`,`in_module`);

--
-- Chỉ mục cho bảng `vuj_vi_modthemes`
--
ALTER TABLE `vuj_vi_modthemes`
  ADD UNIQUE KEY `func_id` (`func_id`,`layout`,`theme`);

--
-- Chỉ mục cho bảng `vuj_vi_modules`
--
ALTER TABLE `vuj_vi_modules`
  ADD PRIMARY KEY (`title`);

--
-- Chỉ mục cho bảng `vuj_vi_newsnotice`
--
ALTER TABLE `vuj_vi_newsnotice`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vuj_vi_newsnotice_config`
--
ALTER TABLE `vuj_vi_newsnotice_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Chỉ mục cho bảng `vuj_vi_newsnotice_emaillist`
--
ALTER TABLE `vuj_vi_newsnotice_emaillist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `vuj_vi_news_1`
--
ALTER TABLE `vuj_vi_news_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `vuj_vi_news_2`
--
ALTER TABLE `vuj_vi_news_2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `vuj_vi_news_3`
--
ALTER TABLE `vuj_vi_news_3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `vuj_vi_news_4`
--
ALTER TABLE `vuj_vi_news_4`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `vuj_vi_news_5`
--
ALTER TABLE `vuj_vi_news_5`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `vuj_vi_news_6`
--
ALTER TABLE `vuj_vi_news_6`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `vuj_vi_news_admins`
--
ALTER TABLE `vuj_vi_news_admins`
  ADD UNIQUE KEY `userid` (`userid`,`catid`);

--
-- Chỉ mục cho bảng `vuj_vi_news_author`
--
ALTER TABLE `vuj_vi_news_author`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uid` (`uid`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `vuj_vi_news_authorlist`
--
ALTER TABLE `vuj_vi_news_authorlist`
  ADD UNIQUE KEY `id_aid` (`id`,`aid`),
  ADD KEY `aid` (`aid`),
  ADD KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `vuj_vi_news_block`
--
ALTER TABLE `vuj_vi_news_block`
  ADD UNIQUE KEY `bid` (`bid`,`id`);

--
-- Chỉ mục cho bảng `vuj_vi_news_block_cat`
--
ALTER TABLE `vuj_vi_news_block_cat`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `vuj_vi_news_cat`
--
ALTER TABLE `vuj_vi_news_cat`
  ADD PRIMARY KEY (`catid`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `parentid` (`parentid`),
  ADD KEY `status` (`status`);

--
-- Chỉ mục cho bảng `vuj_vi_news_config_post`
--
ALTER TABLE `vuj_vi_news_config_post`
  ADD PRIMARY KEY (`group_id`);

--
-- Chỉ mục cho bảng `vuj_vi_news_detail`
--
ALTER TABLE `vuj_vi_news_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vuj_vi_news_logs`
--
ALTER TABLE `vuj_vi_news_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`sid`),
  ADD KEY `userid` (`userid`);

--
-- Chỉ mục cho bảng `vuj_vi_news_rows`
--
ALTER TABLE `vuj_vi_news_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `vuj_vi_news_sources`
--
ALTER TABLE `vuj_vi_news_sources`
  ADD PRIMARY KEY (`sourceid`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Chỉ mục cho bảng `vuj_vi_news_tags`
--
ALTER TABLE `vuj_vi_news_tags`
  ADD PRIMARY KEY (`tid`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `vuj_vi_news_tags_id`
--
ALTER TABLE `vuj_vi_news_tags_id`
  ADD UNIQUE KEY `id_tid` (`id`,`tid`),
  ADD KEY `tid` (`tid`);

--
-- Chỉ mục cho bảng `vuj_vi_news_tmp`
--
ALTER TABLE `vuj_vi_news_tmp`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vuj_vi_news_topics`
--
ALTER TABLE `vuj_vi_news_topics`
  ADD PRIMARY KEY (`topicid`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `vuj_vi_page`
--
ALTER TABLE `vuj_vi_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `vuj_vi_page_config`
--
ALTER TABLE `vuj_vi_page_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Chỉ mục cho bảng `vuj_vi_referer_stats`
--
ALTER TABLE `vuj_vi_referer_stats`
  ADD UNIQUE KEY `host` (`host`),
  ADD KEY `total` (`total`);

--
-- Chỉ mục cho bảng `vuj_vi_searchkeys`
--
ALTER TABLE `vuj_vi_searchkeys`
  ADD KEY `id` (`id`),
  ADD KEY `skey` (`skey`),
  ADD KEY `search_engine` (`search_engine`);

--
-- Chỉ mục cho bảng `vuj_vi_siteterms`
--
ALTER TABLE `vuj_vi_siteterms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `vuj_vi_siteterms_config`
--
ALTER TABLE `vuj_vi_siteterms_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Chỉ mục cho bảng `vuj_vi_slider_blocks`
--
ALTER TABLE `vuj_vi_slider_blocks`
  ADD PRIMARY KEY (`bid`);

--
-- Chỉ mục cho bảng `vuj_vi_slider_rows`
--
ALTER TABLE `vuj_vi_slider_rows`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `vuj_authors_api_role`
--
ALTER TABLE `vuj_authors_api_role`
  MODIFY `role_id` smallint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_authors_config`
--
ALTER TABLE `vuj_authors_config`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_authors_module`
--
ALTER TABLE `vuj_authors_module`
  MODIFY `mid` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `vuj_authors_oauth`
--
ALTER TABLE `vuj_authors_oauth`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_banners_click`
--
ALTER TABLE `vuj_banners_click`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_banners_plans`
--
ALTER TABLE `vuj_banners_plans`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `vuj_banners_rows`
--
ALTER TABLE `vuj_banners_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `vuj_cronjobs`
--
ALTER TABLE `vuj_cronjobs`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `vuj_extension_files`
--
ALTER TABLE `vuj_extension_files`
  MODIFY `idfile` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_ips`
--
ALTER TABLE `vuj_ips`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `vuj_language`
--
ALTER TABLE `vuj_language`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_language_file`
--
ALTER TABLE `vuj_language_file`
  MODIFY `idfile` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_logs`
--
ALTER TABLE `vuj_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT cho bảng `vuj_notification`
--
ALTER TABLE `vuj_notification`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_plugin`
--
ALTER TABLE `vuj_plugin`
  MODIFY `pid` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `vuj_shops_block_cat`
--
ALTER TABLE `vuj_shops_block_cat`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `vuj_shops_carrier`
--
ALTER TABLE `vuj_shops_carrier`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_shops_carrier_config`
--
ALTER TABLE `vuj_shops_carrier_config`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_shops_carrier_config_items`
--
ALTER TABLE `vuj_shops_carrier_config_items`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_shops_catalogs`
--
ALTER TABLE `vuj_shops_catalogs`
  MODIFY `catid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `vuj_shops_coupons`
--
ALTER TABLE `vuj_shops_coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `vuj_shops_coupons_history`
--
ALTER TABLE `vuj_shops_coupons_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_shops_discounts`
--
ALTER TABLE `vuj_shops_discounts`
  MODIFY `did` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `vuj_shops_field`
--
ALTER TABLE `vuj_shops_field`
  MODIFY `fid` mediumint(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_shops_field_value_vi`
--
ALTER TABLE `vuj_shops_field_value_vi`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_shops_files`
--
ALTER TABLE `vuj_shops_files`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_shops_group`
--
ALTER TABLE `vuj_shops_group`
  MODIFY `groupid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `vuj_shops_location`
--
ALTER TABLE `vuj_shops_location`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_shops_orders`
--
ALTER TABLE `vuj_shops_orders`
  MODIFY `order_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_shops_orders_id`
--
ALTER TABLE `vuj_shops_orders_id`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_shops_orders_shipping`
--
ALTER TABLE `vuj_shops_orders_shipping`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_shops_point_history`
--
ALTER TABLE `vuj_shops_point_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_shops_review`
--
ALTER TABLE `vuj_shops_review`
  MODIFY `review_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_shops_rows`
--
ALTER TABLE `vuj_shops_rows`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `vuj_shops_shops`
--
ALTER TABLE `vuj_shops_shops`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_shops_tabs`
--
ALTER TABLE `vuj_shops_tabs`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `vuj_shops_tags_vi`
--
ALTER TABLE `vuj_shops_tags_vi`
  MODIFY `tid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `vuj_shops_template`
--
ALTER TABLE `vuj_shops_template`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_shops_transaction`
--
ALTER TABLE `vuj_shops_transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_shops_units`
--
ALTER TABLE `vuj_shops_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `vuj_shops_warehouse`
--
ALTER TABLE `vuj_shops_warehouse`
  MODIFY `wid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `vuj_shops_warehouse_logs`
--
ALTER TABLE `vuj_shops_warehouse_logs`
  MODIFY `logid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `vuj_shops_warehouse_logs_group`
--
ALTER TABLE `vuj_shops_warehouse_logs_group`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `vuj_shops_weight_vi`
--
ALTER TABLE `vuj_shops_weight_vi`
  MODIFY `id` tinyint(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `vuj_shops_wishlist`
--
ALTER TABLE `vuj_shops_wishlist`
  MODIFY `wid` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_upload_dir`
--
ALTER TABLE `vuj_upload_dir`
  MODIFY `did` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `vuj_users`
--
ALTER TABLE `vuj_users`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `vuj_users_backupcodes`
--
ALTER TABLE `vuj_users_backupcodes`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_users_field`
--
ALTER TABLE `vuj_users_field`
  MODIFY `fid` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `vuj_users_groups`
--
ALTER TABLE `vuj_users_groups`
  MODIFY `group_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `vuj_users_question`
--
ALTER TABLE `vuj_users_question`
  MODIFY `qid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `vuj_users_reg`
--
ALTER TABLE `vuj_users_reg`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_blocks_groups`
--
ALTER TABLE `vuj_vi_blocks_groups`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_comment`
--
ALTER TABLE `vuj_vi_comment`
  MODIFY `cid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_contact_department`
--
ALTER TABLE `vuj_vi_contact_department`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_contact_reply`
--
ALTER TABLE `vuj_vi_contact_reply`
  MODIFY `rid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_contact_send`
--
ALTER TABLE `vuj_vi_contact_send`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_contact_supporter`
--
ALTER TABLE `vuj_vi_contact_supporter`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_menu`
--
ALTER TABLE `vuj_vi_menu`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_menu_rows`
--
ALTER TABLE `vuj_vi_menu_rows`
  MODIFY `id` mediumint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_modfuncs`
--
ALTER TABLE `vuj_vi_modfuncs`
  MODIFY `func_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_newsnotice`
--
ALTER TABLE `vuj_vi_newsnotice`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_newsnotice_emaillist`
--
ALTER TABLE `vuj_vi_newsnotice_emaillist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_news_1`
--
ALTER TABLE `vuj_vi_news_1`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_news_2`
--
ALTER TABLE `vuj_vi_news_2`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_news_3`
--
ALTER TABLE `vuj_vi_news_3`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_news_4`
--
ALTER TABLE `vuj_vi_news_4`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_news_5`
--
ALTER TABLE `vuj_vi_news_5`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_news_6`
--
ALTER TABLE `vuj_vi_news_6`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_news_author`
--
ALTER TABLE `vuj_vi_news_author`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_news_block_cat`
--
ALTER TABLE `vuj_vi_news_block_cat`
  MODIFY `bid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_news_cat`
--
ALTER TABLE `vuj_vi_news_cat`
  MODIFY `catid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_news_logs`
--
ALTER TABLE `vuj_vi_news_logs`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_news_rows`
--
ALTER TABLE `vuj_vi_news_rows`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_news_sources`
--
ALTER TABLE `vuj_vi_news_sources`
  MODIFY `sourceid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_news_tags`
--
ALTER TABLE `vuj_vi_news_tags`
  MODIFY `tid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_news_topics`
--
ALTER TABLE `vuj_vi_news_topics`
  MODIFY `topicid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_page`
--
ALTER TABLE `vuj_vi_page`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_siteterms`
--
ALTER TABLE `vuj_vi_siteterms`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_slider_blocks`
--
ALTER TABLE `vuj_vi_slider_blocks`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `vuj_vi_slider_rows`
--
ALTER TABLE `vuj_vi_slider_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
