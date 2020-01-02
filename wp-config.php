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
define( 'DB_NAME', 'wp' );

/** MySQL database username */
define( 'DB_USER', 'toto' );

/** MySQL database password */
define( 'DB_PASSWORD', 'toto' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
/**#@-*/
define('AUTH_KEY',         'Wu23Li -Bga-)Q&:)|>QtsUx%v?Q=S}2uu21x!0K6;|My`KLSi7E)aM<=6LbEJwv');
define('SECURE_AUTH_KEY',  'R|i}?|<<+;!!Tm0p)#wRv,{LC5L;XV_.RiP!M--|$DO5v/R5WB{7y>>(ootp-Dv(');
define('LOGGED_IN_KEY',    'da,|r>d=0Zt|++nA|g0J@$Gj#,y.3ZS|_8%4q`MnZd,e6 bKMFa3qf9pLEtO4c-$');
define('NONCE_KEY',        '})BP-6h=-5@b+/>6XRcNV|d4dMPAQ-:gl0|(l9rx{vpTm0=68t=kFH+i[65LaGVE');
define('AUTH_SALT',        ' }Y~%%[t7|Arjk+wCsh7xWOCosUM@^mpFF!Y}g+vR#}`opme95D+tbPzy}*^f2tk');
define('SECURE_AUTH_SALT', 'U;_UH#CH$r%+_E@8E/zmj$.87g-3L<32wk%dYE90ccV.x|u|uf[$2]9#@4zD)d5|');
define('LOGGED_IN_SALT',   '19^DQlNVbJb~y$* Z _8IidgPZK<&WB[S|JBM]E$s=,|>Pr- v)kEk^o{V1ZW}Gb');
define('NONCE_SALT',       '_|@:s4!b^z;#c)=Hw0wfkBYSu w+uIXHm>*3e/&!>uIj%o1%|q/`v;1P*UE0Ehsr');
/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */
define('WP_ALLOW_REPAIR', true);

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );