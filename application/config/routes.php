<?php defined('SYSPATH') OR die('No direct access allowed.');
/**
 * @package  Core
 *
 * Sets the default route to "welcome"
 */
$config['_default'] = 'gallery';

$config['mobile'] = 'mobilegallery';
$config['mobile/(.+)'] = 'mobile$1';