<?php
define( 'DB_NAME', 'wordpress' );
define( 'DB_USER', 'admin' );
define( 'DB_PASSWORD', 'admin' );
define( 'DB_HOST', 'localhost' );
define( 'DB_CHARSET', 'utf8' );
define( 'DB_COLLATE', '' );
define( 'AUTH_KEY',         'My)_$Unique$_pHrase$__Phrase_$1' );
define( 'SECURE_AUTH_KEY',  'My)_$Unique$_pHrase$__Phrase_$2' );
define( 'LOGGED_IN_KEY',    'My)_$Unique$_pHrase$__Phrase_$3' );
define( 'NONCE_KEY',        'My)_$Unique$_pHrase$__Phrase_$4' );
define( 'AUTH_SALT',        'My)_$Unique$_pHrase$__Phrase_$5' );
define( 'SECURE_AUTH_SALT', 'My)_$Unique$_pHrase$__Phrase_$6' );
define( 'LOGGED_IN_SALT',   'My)_$Unique$_pHrase$__Phrase_$7' );
define( 'NONCE_SALT',       'My)_$Unique$_pHrase$__Phrase_$8' );
$table_prefix = 'wp_';
define( 'WP_DEBUG', false );
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}
require_once( ABSPATH . 'wp-settings.php' );
?>

