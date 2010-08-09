<?php defined('SYSPATH') OR die('No direct access allowed.');

/**
 * Directory (relative to site_domain) in which .css files are located
 */
$config['css_prefix'] = 'media/css';

/**
 * Directory (relative to site_domain) in which .js files are located
 */
$config['js_prefix'] = 'media/js';

/**
 * Directory (relative to site_domain) in which the photo gallery directories
 * are located
 */
$config['galleries_dir'] = '../photos';

/**
 * Users in any of these groups are allowed to delete photos
 */
$config['deleter_groups'] = array('webmaster', 'president', 'evil');

/**
 * How many galleries to show on each page of the Gallery index
 */
$config['galleries_per_page'] = 18;

$config['mobile'] = false;
?>