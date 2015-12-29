-- phpMyAdmin SQL Dump
-- version 4.0.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Час створення: Гру 29 2015 р., 19:39
-- Версія сервера: 5.5.38-log
-- Версія PHP: 5.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База даних: `MyDataBase`
--

-- --------------------------------------------------------

--
-- Структура таблиці `mdb_commentmeta`
--

CREATE TABLE IF NOT EXISTS `mdb_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблиці `mdb_comments`
--

CREATE TABLE IF NOT EXISTS `mdb_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблиці `mdb_links`
--

CREATE TABLE IF NOT EXISTS `mdb_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблиці `mdb_options`
--

CREATE TABLE IF NOT EXISTS `mdb_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=294 ;

--
-- Дамп даних таблиці `mdb_options`
--

INSERT INTO `mdb_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://mysite', 'yes'),
(2, 'home', 'http://mysite', 'yes'),
(3, 'blogname', 'MySite', 'yes'),
(4, 'blogdescription', 'Ми створимо сайт Вашої мрії', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'avolwo@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd/m/Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '2', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'MyTheme', 'yes'),
(42, 'stylesheet', 'MyTheme', 'yes'),
(43, 'comment_whitelist', '', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '35700', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '', 'yes'),
(71, 'close_comments_days_old', '365', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '3', 'yes'),
(74, 'page_comments', '', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '2', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '31532', 'yes'),
(89, 'mdb_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'WPLANG', 'uk', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(98, 'cron', 'a:5:{i:1451404500;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1451414361;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1451422561;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1451422579;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(100, '_transient_random_seed', 'd271a84935cd0a905f75e281eeb1b145', 'yes'),
(101, 'nonce_key', ':QKp?6.*te7RO+*]wnPyy=^/kv2ej0^ET4(^.LUt.U,tf4;;Rk1Ec^bPY|@RsLIm', 'yes'),
(102, 'nonce_salt', '=$=>N3FP!6>z Gekia= z+QcX9+@7Z^(Il*4sc9(c_Um0k&S@L;7*Qifjd0(Aq~n', 'yes'),
(106, 'auth_key', '.3b,||o0D~XQePv/zd .i*LCQCr=*v~Lb,<]j?Lx>Ai(bb/N2`M#v-K>j{/Ij-$F', 'yes'),
(107, 'auth_salt', '1&pMzLa-6d9&vh5xEs%g!uJ|OQ z$>;W-,GoCeX9RbO*Vy3V5Qj#$5RTdsw#[=I*', 'yes'),
(108, 'logged_in_key', 'O?$xvHEWU3cs:V${;>NgAfDlRK*xsIw4nA#n@{KjGKv<rXj!GDxJ9*8+?%<dW.B|', 'yes'),
(109, 'logged_in_salt', ':xFWD8BpZ1c.RsR<,hqZ1/j%@Re1:7l+M{bN+xqp.3V2o*D<]n8s)C/a@EVu%bR8', 'yes'),
(142, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1446186536', 'no'),
(152, 'db_upgraded', '', 'yes'),
(154, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:16:"avolwo@gmail.com";s:7:"version";s:5:"4.2.5";s:9:"timestamp";i:1446143502;}', 'yes'),
(156, 'finished_splitting_shared_terms', '1', 'yes'),
(170, 'category_children', 'a:0:{}', 'yes'),
(173, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1446149622;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(174, 'current_theme', '', 'yes'),
(175, 'theme_mods_MyTheme', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:9:"main_menu";i:2;}}', 'yes'),
(176, 'theme_switched', '', 'yes'),
(178, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(179, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(180, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(182, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(276, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1451401504;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:0:{}}', 'yes'),
(277, 'recently_activated', 'a:0:{}', 'yes'),
(284, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1451401506;s:7:"checked";a:4:{s:7:"MyTheme";s:0:"";s:13:"twentyfifteen";s:3:"1.1";s:14:"twentyfourteen";s:3:"1.4";s:14:"twentythirteen";s:3:"1.5";}s:8:"response";a:3:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.4";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.1.4.zip";}s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.6";s:3:"url";s:44:"https://wordpress.org/themes/twentyfourteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentyfourteen.1.6.zip";}s:14:"twentythirteen";a:4:{s:5:"theme";s:14:"twentythirteen";s:11:"new_version";s:3:"1.7";s:3:"url";s:44:"https://wordpress.org/themes/twentythirteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentythirteen.1.7.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(285, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(286, '_site_transient_timeout_theme_roots', '1451403024', 'yes'),
(287, '_site_transient_theme_roots', 'a:4:{s:7:"MyTheme";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes'),
(288, 'site_icon', '0', 'yes'),
(289, 'medium_large_size_w', '768', 'yes'),
(290, 'medium_large_size_h', '0', 'yes'),
(292, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:60:"https://downloads.wordpress.org/release/uk/wordpress-4.4.zip";s:6:"locale";s:2:"uk";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:60:"https://downloads.wordpress.org/release/uk/wordpress-4.4.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.4";s:7:"version";s:3:"4.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1451401507;s:15:"version_checked";s:3:"4.4";s:12:"translations";a:0:{}}', 'yes'),
(293, 'can_compress_scripts', '1', 'yes');

-- --------------------------------------------------------

--
-- Структура таблиці `mdb_postmeta`
--

CREATE TABLE IF NOT EXISTS `mdb_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=48 ;

--
-- Дамп даних таблиці `mdb_postmeta`
--

INSERT INTO `mdb_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(5, 2, '_edit_lock', '1451401025:1'),
(6, 7, '_edit_last', '1'),
(7, 7, '_edit_lock', '1446575177:1'),
(10, 9, '_edit_last', '1'),
(11, 9, '_edit_lock', '1446584773:1'),
(12, 2, '_edit_last', '1'),
(13, 12, '_menu_item_type', 'post_type'),
(14, 12, '_menu_item_menu_item_parent', '0'),
(15, 12, '_menu_item_object_id', '2'),
(16, 12, '_menu_item_object', 'page'),
(17, 12, '_menu_item_target', ''),
(18, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(19, 12, '_menu_item_xfn', ''),
(20, 12, '_menu_item_url', ''),
(22, 13, '_menu_item_type', 'post_type'),
(23, 13, '_menu_item_menu_item_parent', '0'),
(24, 13, '_menu_item_object_id', '2'),
(25, 13, '_menu_item_object', 'page'),
(26, 13, '_menu_item_target', ''),
(27, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(28, 13, '_menu_item_xfn', ''),
(29, 13, '_menu_item_url', ''),
(30, 13, '_menu_item_orphaned', '1451400266'),
(31, 14, '_edit_last', '1'),
(32, 14, '_edit_lock', '1451400520:1'),
(33, 17, '_menu_item_type', 'post_type'),
(34, 17, '_menu_item_menu_item_parent', '0'),
(35, 17, '_menu_item_object_id', '14'),
(36, 17, '_menu_item_object', 'page'),
(37, 17, '_menu_item_target', ''),
(38, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(39, 17, '_menu_item_xfn', ''),
(40, 17, '_menu_item_url', ''),
(42, 18, '_edit_last', '1'),
(43, 18, '_edit_lock', '1451400963:1'),
(44, 22, '_edit_last', '1'),
(45, 22, '_edit_lock', '1451401055:1'),
(46, 24, '_edit_last', '1'),
(47, 24, '_edit_lock', '1451401114:1');

-- --------------------------------------------------------

--
-- Структура таблиці `mdb_posts`
--

CREATE TABLE IF NOT EXISTS `mdb_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=26 ;

--
-- Дамп даних таблиці `mdb_posts`
--

INSERT INTO `mdb_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2015-10-29 00:56:00', '2015-10-28 20:56:00', '', 'Home', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2015-12-29 16:59:20', '2015-12-29 14:59:20', '', 0, 'http://mysite/?page_id=2', 0, 'page', '', 0),
(7, 1, '2015-11-03 19:52:47', '2015-11-03 17:52:47', 'Текст запису', 'Новий запис', '', 'publish', 'open', 'open', '', '%d0%bd%d0%be%d0%b2%d0%b8%d0%b9-%d0%b7%d0%b0%d0%bf%d0%b8%d1%81', '', '', '2015-11-03 19:52:47', '2015-11-03 17:52:47', '', 0, 'http://mysite/?p=7', 0, 'post', '', 0),
(8, 1, '2015-11-03 19:52:47', '2015-11-03 17:52:47', 'Текст запису', 'Новий запис', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2015-11-03 19:52:47', '2015-11-03 17:52:47', '', 7, 'http://mysite/2015/11/03/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2015-11-03 20:29:21', '2015-11-03 18:29:21', 'Текст нового запису 2.', 'Новий запис 2', '', 'publish', 'open', 'open', '', '%d0%bd%d0%be%d0%b2%d0%b8%d0%b9-%d0%b7%d0%b0%d0%bf%d0%b8%d1%81-2', '', '', '2015-11-03 20:29:21', '2015-11-03 18:29:21', '', 0, 'http://mysite/?p=9', 0, 'post', '', 0),
(10, 1, '2015-11-03 20:29:21', '2015-11-03 18:29:21', 'Текст нового запису 2.', 'Новий запис 2', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2015-11-03 20:29:21', '2015-11-03 18:29:21', '', 9, 'http://mysite/2015/11/03/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2015-11-04 20:13:49', '2015-11-04 18:13:49', 'Перша колонка', 'Головна', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-11-04 20:13:49', '2015-11-04 18:13:49', '', 2, 'http://mysite/?p=11', 0, 'revision', '', 0),
(12, 1, '2015-12-29 16:49:03', '2015-12-29 14:49:03', ' ', '', '', 'publish', 'closed', 'closed', '', '12', '', '', '2015-12-29 16:57:54', '2015-12-29 14:57:54', '', 0, 'http://mysite/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2015-12-29 16:44:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2015-12-29 16:44:26', '0000-00-00 00:00:00', '', 0, 'http://mysite/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2015-12-29 16:51:00', '2015-12-29 14:51:00', '', 'Catalogue', '', 'publish', 'closed', 'closed', '', 'catalogue', '', '', '2015-12-29 16:51:00', '2015-12-29 14:51:00', '', 0, 'http://mysite/?page_id=14', 0, 'page', '', 0),
(15, 1, '2015-12-29 16:51:00', '2015-12-29 14:51:00', '', 'Catalogue', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2015-12-29 16:51:00', '2015-12-29 14:51:00', '', 14, 'http://mysite/?p=15', 0, 'revision', '', 0),
(16, 1, '2015-12-29 16:51:19', '2015-12-29 14:51:19', 'Перша колонка', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-12-29 16:51:19', '2015-12-29 14:51:19', '', 2, 'http://mysite/?p=16', 0, 'revision', '', 0),
(17, 1, '2015-12-29 16:57:54', '2015-12-29 14:57:54', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2015-12-29 16:57:54', '2015-12-29 14:57:54', '', 0, 'http://mysite/?p=17', 2, 'nav_menu_item', '', 0),
(18, 1, '2015-12-29 16:58:10', '2015-12-29 14:58:10', '', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2015-12-29 16:58:23', '2015-12-29 14:58:23', '', 0, 'http://mysite/?page_id=18', 0, 'page', '', 0),
(19, 1, '2015-12-29 16:58:10', '2015-12-29 14:58:10', 'fg', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2015-12-29 16:58:10', '2015-12-29 14:58:10', '', 18, 'http://mysite/?p=19', 0, 'revision', '', 0),
(20, 1, '2015-12-29 16:58:23', '2015-12-29 14:58:23', '', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2015-12-29 16:58:23', '2015-12-29 14:58:23', '', 18, 'http://mysite/?p=20', 0, 'revision', '', 0),
(21, 1, '2015-12-29 16:59:20', '2015-12-29 14:59:20', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-12-29 16:59:20', '2015-12-29 14:59:20', '', 2, 'http://mysite/?p=21', 0, 'revision', '', 0),
(22, 1, '2015-12-29 16:59:56', '2015-12-29 14:59:56', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2015-12-29 16:59:56', '2015-12-29 14:59:56', '', 0, 'http://mysite/?page_id=22', 0, 'page', '', 0),
(23, 1, '2015-12-29 16:59:56', '2015-12-29 14:59:56', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2015-12-29 16:59:56', '2015-12-29 14:59:56', '', 22, 'http://mysite/?p=23', 0, 'revision', '', 0),
(24, 1, '2015-12-29 17:00:11', '2015-12-29 15:00:11', '', 'Contacts', '', 'publish', 'closed', 'closed', '', 'contacts', '', '', '2015-12-29 17:00:11', '2015-12-29 15:00:11', '', 0, 'http://mysite/?page_id=24', 0, 'page', '', 0),
(25, 1, '2015-12-29 17:00:11', '2015-12-29 15:00:11', '', 'Contacts', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2015-12-29 17:00:11', '2015-12-29 15:00:11', '', 24, 'http://mysite/?p=25', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `mdb_termmeta`
--

CREATE TABLE IF NOT EXISTS `mdb_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблиці `mdb_terms`
--

CREATE TABLE IF NOT EXISTS `mdb_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Дамп даних таблиці `mdb_terms`
--

INSERT INTO `mdb_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без категорії', 'uncategorized', 0),
(2, 'main_menu', 'main_menu', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `mdb_term_relationships`
--

CREATE TABLE IF NOT EXISTS `mdb_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `mdb_term_relationships`
--

INSERT INTO `mdb_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(7, 1, 0),
(9, 1, 0),
(12, 2, 0),
(17, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `mdb_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `mdb_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Дамп даних таблиці `mdb_term_taxonomy`
--

INSERT INTO `mdb_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Структура таблиці `mdb_usermeta`
--

CREATE TABLE IF NOT EXISTS `mdb_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=19 ;

--
-- Дамп даних таблиці `mdb_usermeta`
--

INSERT INTO `mdb_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Voldmare'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'mdb_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'mdb_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:1:{s:64:"29e69bb2f971f3fb653bc072c0f58be97c87b20c27dd2f473627a9b345e74f6b";a:4:{s:10:"expiration";i:1451572977;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0";s:5:"login";i:1451400177;}}'),
(15, 1, 'mdb_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(18, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Структура таблиці `mdb_users`
--

CREATE TABLE IF NOT EXISTS `mdb_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп даних таблиці `mdb_users`
--

INSERT INTO `mdb_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Voldmare', '$P$BLDCto3GESXrlvkTEC7pNQLDMZSbDO.', 'voldmare', 'avolwo@gmail.com', '', '2015-10-28 20:56:00', '', 0, 'Voldmare');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
