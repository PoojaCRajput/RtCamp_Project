<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'challenge2');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'lW^O|~g1uJg*lp+c#Zr&4?a-g5Bq3iUnyq)W:wRMp};*/1#GZ(RHx[ov(6H]BL3>');
define('SECURE_AUTH_KEY',  'I:ij];IW2YVD]!V,-<5(i R:`_w7%IpNI2ai e]FWa=0j4-BqSs+sSfK0{$3w!Ca');
define('LOGGED_IN_KEY',    'lc[@+7G21By5+k+8+ChTzlVMMbZ&G^y_3b3fD4xO# L0#iwAB@GH,iDiB~SX!Bf+');
define('NONCE_KEY',        ':DJ>Inm=PunW?{vcr=K%}(|:l8|&p uD:Aa/ I+PCxj2-HcB9 Q(pi7bLalbOn.(');
define('AUTH_SALT',        '^Q>hwo&d*Z!~^S%JiLqQ!r!Sge60_];>I+!{V1,lF~~qNr=9<VfP5^SA,jd`e,me');
define('SECURE_AUTH_SALT', 'rh}RW?*ET1Mt~*ktW%iVf($h<QPy5k?iAszC@T|Nd7U@<birlU0iI1+eCRXjQ3~7');
define('LOGGED_IN_SALT',   'a]]%y^zXfnwSJX6;nSH)Q!NAr6ZJ`MGfSN,WD2V:Q!Eri;0at}&n6RpsndQ+~?[h');
define('NONCE_SALT',       'M0~1?Mm7+G`])n!`N#dKfD0`h3n/qMjw6OCZ)~g)t)ttdNM.pH4`;:9=h lcPfCW');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
