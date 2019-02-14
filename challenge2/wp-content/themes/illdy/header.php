<?php
/**
 *    The template for displaying the header.
 *
 * @package    WordPress
 * @subpackage illdy
 */
?>
<?php
$logo_id                   = get_theme_mod( 'custom_logo' );
$logo_image                = wp_get_attachment_image_src( $logo_id, 'full' );
$text_logo                 = get_theme_mod( 'illdy_text_logo', __( 'Illdy', 'illdy' ) );
$jumbotron_general_image   = get_theme_mod( 'illdy_jumbotron_general_image', esc_url( get_template_directory_uri() . '/layout/images/front-page/front-page-header.png' ) );
$jumbotron_single_image    = get_theme_mod( 'illdy_jumbotron_enable_featured_image', false );
$jumbotron_parallax_enable = get_theme_mod( 'illdy_jumbotron_enable_parallax_effect', true );
$preloader_enable          = get_theme_mod( 'illdy_preloader_enable', 1 );

$style = '';

if ( get_option( 'show_on_front' ) == 'page' && is_front_page() ) {
	if ( $jumbotron_general_image ) {
		$style = 'background-image: url(' . esc_url( $jumbotron_general_image ) . ');';
	}
} else if ( ( is_single() || is_page() ) && $jumbotron_single_image == true ) {

	global $post;
	if ( has_post_thumbnail( $post->ID ) ) {
		$style = 'background-image: url(' . esc_url( get_the_post_thumbnail_url( $post->ID, 'full' ) ) . ');';
	}else {
		$style = 'background-image: url(' . get_header_image() . ');';
	}
} else {
	$style = 'background-image: url(' . get_header_image() . ');';
}

$url = get_theme_mod( 'header_image', get_theme_support( 'custom-header', 'default-image' ) );

// append the parallax effect
if ( $jumbotron_parallax_enable == true ) {
	$style .= 'background-attachment: fixed;';
}

if ( ( is_single() || is_page() || is_archive() ) && get_theme_mod( 'illdy_archive_page_background_stretch' ) == 2 ) {
	$style .= 'background-size:contain;background-repeat:no-repeat;';
}

?>
<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<?php wp_head(); ?>
	<!-- Bootstrap CSS -->
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<style>

</style>
<body <?php body_class(); ?>>
<?php if ( $preloader_enable == 1 ): ?>
	<div class="pace-overlay"></div>
<?php endif; ?>
