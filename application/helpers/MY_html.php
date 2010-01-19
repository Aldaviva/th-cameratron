<?php defined('SYSPATH') or die('No direct script access.');

class html extends html_Core {

	public static function stylesheet($style, $media = FALSE, $index = FALSE) {
		$prefix = Kohana::config('core.css_prefix', true);

		return self::link($style, 'stylesheet', 'text/css', '.css', $media, $index, $prefix);
	}

	public static function link($href, $rel, $type, $suffix = FALSE, $media = FALSE, $index = FALSE, $prefix = '') {
		$compiled = '';

		if (is_array($href))
		{
			foreach ($href as $_href)
			{
				$_rel   = is_array($rel) ? array_shift($rel) : $rel;
				$_type  = is_array($type) ? array_shift($type) : $type;
				$_media = is_array($media) ? array_shift($media) : $media;

				$compiled .= self::link($_href, $_rel, $_type, $suffix, $_media, $index, $prefix);
			}
		}
		else
		{
			if (strpos($href, '://') === FALSE)
			{
				// Make the URL absolute
				$href = url::base($index).$prefix.$href;
			}

			$length = strlen($suffix);

			if ( $length > 0 AND substr_compare($href, $suffix, -$length, $length, FALSE) !== 0)
			{
				// Add the defined suffix
				$href .= $suffix;
			}

			$attr = array
			(
				'rel' => $rel,
				'type' => $type,
				'href' => $href,
			);

			if ( ! empty($media))
			{
				// Add the media type to the attributes
				$attr['media'] = $media;
			}

			$compiled = '<link'.html::attributes($attr).' />';
		}

		return $compiled."\n";
	}

	public static function script($script, $index = FALSE) {

		$prefix = Kohana::config('core.js_prefix', true);

		$compiled = '';

		if (is_array($script))
		{
			foreach ($script as $name)
			{
				$compiled .= self::script($name, $index);
			}
		}
		else
		{
			if (strpos($script, '://') === FALSE)
			{
				// Add the prefix only when it's not already present
				$script = url::base((bool) $index).$prefix.$script;
			}

			if (substr_compare($script, '.js', -3, 3, FALSE) !== 0)
			{
				// Add the javascript suffix
				$script .= '.js';
			}

			$compiled = '<script src="'.$script.'" type="text/javascript"></script>';
		}

		return $compiled."\n";
	}

}

?>
