<?php
/**
 * These are stubs for closed source code, or things that only apply to local environments.
 */

defined( 'WPINC' ) || die();

define( 'GLOTPRESS_LOCALES_PATH', __DIR__ . '/pub/locales/locales.php' );

require_once __DIR__ . '/pub/locales.php';
require_once __DIR__ . '/pub/wporg-seo.php';

require_once WPMU_PLUGIN_DIR . '/wporg-mu-plugins/mu-plugins/loader.php';
