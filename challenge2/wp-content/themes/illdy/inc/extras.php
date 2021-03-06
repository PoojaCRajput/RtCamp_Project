<?php
/**
 *	Adds custom classes to the array of body classes.
 */
if(!function_exists('illdy_body_classes')) {
    add_filter( 'body_class', 'illdy_body_classes' );
    function illdy_body_classes( $classes ) {
        // Adds a class of group-blog to blogs with more than 1 published author.
        if ( is_multi_author() ) {
            $classes[] = 'group-blog';
        }

        // Adds a class of hfeed to non-singular pages.
        if ( ! is_singular() ) {
            $classes[] = 'hfeed';
        }
        return $classes;
    } 
}

/**
 *  Comment
 */
if(!function_exists('illdy_comment')) {
    function illdy_comment( $comment, $args, $depth ) {
        $GLOBALS['comment'] = $comment;
        switch ( $comment->comment_type ) :
            case 'pingback' :
            case 'trackback' :
        ?>
        <li class="post pingback">
            <p><?php _e( 'Pingback:', 'illdy' ); ?> <?php comment_author_link(); ?><?php edit_comment_link( __( '(Edit)', 'illdy' ), ' ' ); ?></p>
        <?php
                break;
            default :
        ?>
        <li <?php comment_class(); ?> id="li-comment-<?php comment_ID(); ?>">
            <div id="comment-<?php comment_ID(); ?>">
                <div class="row">
                    <div class="col-sm-2 clearfix">
                        <div class="comment-gravatar">
                            <?php echo get_avatar( $comment, 84 ); ?>
                        </div><!--/.comment-gravatar-->
                    </div><!--/.col-sm-2-->
                    <div class="col-sm-10">
                        <?php printf( __( '%s', 'illdy' ), sprintf( '%s', get_comment_author_link() ) ); ?>
                        <time class="comment-time" datetime="<?php printf( '%s-%s-%s', get_the_date( 'Y' ), get_the_date( 'm' ), get_the_date( 'd' ) ); ?>"><?php printf( __( '%1$s at %2$s', 'illdy' ), get_comment_date(), get_comment_time() ); ?></time>
                        <div class="comment-entry markup-format">
                            <?php comment_text(); ?>
                            <?php
                            if(  $comment->comment_approved == '0' ):
                                _e( 'Your comment is awaiting moderation.', 'illdy' );
                            endif;
                            ?>
                        </div><!--/.comment-entry.markup-format-->
                        <?php comment_reply_link( array_merge( $args, array( 'depth' => $depth, 'max_depth' => $args['max_depth'] ) ) ); ?>
                    </div><!--/.col-sm-10-->
                </div><!--/.row-->
            </div><!--/#comment-<?php comment_ID(); ?>.row-->
        <?php
                break;
        endswitch;
    }
}


/**
 *  Move comment field to bottom
 */
if( !function_exists( 'illdy_move_comment_field_to_bottom' ) ) {
    add_filter( 'comment_form_fields', 'illdy_move_comment_field_to_bottom' );
    function illdy_move_comment_field_to_bottom( $fields ) {
        $comment_field = $fields['comment'];
        unset( $fields['comment'] );
        $fields['comment'] = $comment_field;
        return $fields;
    }
}


/**
 *  Get image ID from Image URL
 */
if( !function_exists( 'illdy_get_image_id_from_image_url' ) ) {
    function illdy_get_image_id_from_image_url( $image_url ) {
        global $wpdb;
        $attachment = $wpdb->get_col( $wpdb->prepare( "SELECT ID FROM $wpdb->posts WHERE guid='%s';", $image_url ) );

        if( $attachment ) {
            return $attachment[0];
        }
    }
}

/**
 *  Sections order
 */
if( !function_exists( 'illdy_sections_show' ) ) {
    function illdy_sections_order( $section ) {

        $controls = array(
                'illdy_panel_about' => 'illdy_about_general_show',
                'illdy_panel_projects' => 'illdy_projects_general_show',
                'illdy_testimonials_general' => 'illdy_testimonials_general_show',
                'illdy_panel_services' => 'illdy_services_general_show',
                'illdy_latest_news_general' => 'illdy_latest_news_general_show',
                'illdy_counter_general' => 'illdy_counter_general_show',
                'illdy_panel_team' => 'illdy_team_general_show',
                'illdy_contact_us' => 'illdy_contact_us_show',
                'illdy_full_width' => 'illdy_full_width_general_show'
            );

        if ( array_key_exists( $section , $controls) ) {
            return get_theme_mod( $controls[$section], 1 );
        }else{
            return true;
        }

    }
}

if( !function_exists( 'illdy_sections' ) ) {
    function illdy_sections() {

        $templates = array(
                'illdy_panel_about' => 'about',
                'illdy_panel_projects' => 'projects',
                'illdy_testimonials_general' => 'testimonials-widget',
                'illdy_panel_services' => 'services',
                'illdy_latest_news_general' => 'latest-news',
                'illdy_counter_general' => 'counter',
                'illdy_panel_team' => 'team',
                'illdy_contact_us' => 'contact-us',
                'illdy_full_width' => 'full-width'
            );

        $sections = illdy_get_sections_position();

        foreach ( $sections as $s_id ) {
            if ( illdy_sections_order($s_id) ) {
                get_template_part( 'sections/front-page', $templates[$s_id] );
            }
        }

    }
}

function illdy_hex2rgb($hexColor,$opacity = 1) {
  $shorthand = (strlen($hexColor) == 4);

  list($r, $g, $b) = $shorthand? sscanf($hexColor, "#%1s%1s%1s") : sscanf($hexColor, "#%2s%2s%2s");

  return 'rgba( '.hexdec($shorthand? "$r$r" : $r).', '.hexdec($shorthand? "$g$g" : $g).', '.hexdec($shorthand? "$b$b" : $b).', '.$opacity.' )';
}

if ( !function_exists( 'illdy_jumbotron_css' ) ) {
    function illdy_jumbotron_css(){

        $illdy_jumbotron_general_image = esc_url(get_theme_mod('illdy_jumbotron_general_image', esc_url( get_template_directory_uri() . '/layout/images/front-page/front-page-header.jpg' )));
        $illdy_jumbotron_background_size = esc_html(get_theme_mod('illdy_jumbotron_background_size'));
        $illdy_jumbotron_background_position_y = esc_html(get_theme_mod('illdy_jumbotron_background_position_y'));
        $illdy_jumbotron_background_position_x = esc_html(get_theme_mod('illdy_jumbotron_background_position_x'));
        $illdy_jumbotron_background_repeat = esc_html(get_theme_mod('illdy_jumbotron_background_repeat'));
        $illdy_jumbotron_background_attachment = esc_html(get_theme_mod('illdy_jumbotron_background_attachment'));
        $illdy_jumbotron_general_color = sanitize_hex_color(get_theme_mod('illdy_jumbotron_general_color'));
        $illdy_jumbotron_first_border_color = sanitize_hex_color(get_theme_mod('illdy_jumbotron_first_button_background'));
        $illdy_jumbotron_first_button_background = sanitize_hex_color(illdy_hex2rgb( $illdy_jumbotron_first_border_color, '.2' ));
        $illdy_jumbotron_first_button_background_hover = sanitize_hex_color(illdy_hex2rgb( $illdy_jumbotron_first_border_color, '.1' ));
        $illdy_jumbotron_second_button_background = sanitize_hex_color(get_theme_mod('illdy_jumbotron_second_button_background'));
        $illdy_jumbotron_second_button_background_hover = sanitize_hex_color(get_theme_mod('illdy_jumbotron_second_button_background_hover'));
        $illdy_jumbotron_title_color = sanitize_hex_color(get_theme_mod('illdy_jumbotron_title_color'));
        $illdy_jumbotron_points_color = sanitize_hex_color(get_theme_mod('illdy_jumbotron_points_color'));
        $illdy_jumbotron_descriptions_color = sanitize_hex_color(get_theme_mod('illdy_jumbotron_descriptions_color'));
        $illdy_jumbotron_first_button_color = sanitize_hex_color(get_theme_mod('illdy_jumbotron_first_button_color'));
        $illdy_jumbotron_right_button_color = sanitize_hex_color(get_theme_mod('illdy_jumbotron_right_button_color'));

        $css = '';
        if ($illdy_jumbotron_general_image) {
            $css .= '#header.header-front-page {background-image: url('.$illdy_jumbotron_general_image.') !important;}';
        }else{
            $css .= '#header.header-front-page {background-image: none !important;}';
        }
        if ( $illdy_jumbotron_background_position_y ) {
            $css .= '#header.header-front-page {background-position-y: '.$illdy_jumbotron_background_position_y.';}';
        }
        if ( $illdy_jumbotron_background_position_x ) {
            $css .= '#header.header-front-page {background-position-x: '.$illdy_jumbotron_background_position_x.';}';
        }
        if ($illdy_jumbotron_background_size) {
            $css .= '#header.header-front-page {background-size: '.$illdy_jumbotron_background_size.' !important;}';
        }
        if ($illdy_jumbotron_background_repeat) {
            $css .= '#header.header-front-page {background-repeat: repeat !important;}';
        }
        if ($illdy_jumbotron_background_attachment) {
            $css .= '#header.header-front-page {background-attachment: scroll !important;}';
        }
        if ($illdy_jumbotron_general_color) {
            $css .= '#header.header-front-page {background-color: '.$illdy_jumbotron_general_color.';}';
        }
        if ($illdy_jumbotron_first_button_background) {
            $css .= '#header.header-front-page .bottom-header .header-button-one {background-color: '.$illdy_jumbotron_first_button_background.';}';
        }
        if ($illdy_jumbotron_first_button_background_hover) {
            $css .= '#header.header-front-page .bottom-header .header-button-one:hover {background-color: '.$illdy_jumbotron_first_button_background_hover.';}';
        }
        if ($illdy_jumbotron_first_border_color) {
            $css .= '#header.header-front-page .bottom-header .header-button-one {border-color: '.$illdy_jumbotron_first_border_color.';}';
        }
        if ($illdy_jumbotron_second_button_background) {
            $css .= '#header.header-front-page .bottom-header .header-button-two {background-color: '.$illdy_jumbotron_second_button_background.';}';
        }
        if  ($illdy_jumbotron_second_button_background_hover) {
            $css .= '#header.header-front-page .bottom-header .header-button-two:hover {background-color: '.$illdy_jumbotron_second_button_background_hover.';}';
        }
        if  ($illdy_jumbotron_title_color) {
            $css .= '#header.header-front-page .bottom-header h1 {color: '.$illdy_jumbotron_title_color.';}';
        }
        if  ($illdy_jumbotron_points_color) {
            $css .= '#header.header-front-page .bottom-header span.span-dot {color: '.$illdy_jumbotron_points_color.';}';
        }
        if  ($illdy_jumbotron_descriptions_color) {
            $css .= '#header.header-front-page .bottom-header .section-description {color: '.$illdy_jumbotron_descriptions_color.';}';
        }
        if  ($illdy_jumbotron_first_button_color) {
            $css .= '#header.header-front-page .bottom-header .header-button-one {color: '.$illdy_jumbotron_first_button_color.';}';
        }
        if  ($illdy_jumbotron_right_button_color) { 
            $css .= '#header.header-front-page .bottom-header .header-button-two {color: '.$illdy_jumbotron_right_button_color.';}';
        }

        return $css;
    }
}

if ( !function_exists( 'illdy_latestnews_css' ) ) {
    function illdy_latestnews_css(){

        $illdy_latest_news_title_color = sanitize_hex_color(get_theme_mod('illdy_latest_news_title_color'));
        $illdy_latest_news_descriptions_color = sanitize_hex_color(get_theme_mod('illdy_latest_news_descriptions_color'));
        $illdy_latest_news_general_color = sanitize_hex_color(get_theme_mod('illdy_latest_news_general_color'));
        $illdy_latest_news_button_background = sanitize_hex_color(get_theme_mod('illdy_latest_news_button_background'));
        $illdy_latest_news_button_background_hover = sanitize_hex_color(get_theme_mod('illdy_latest_news_button_background_hover'));
        $illdy_latest_news_button_color = sanitize_hex_color(get_theme_mod('illdy_latest_news_button_color'));
        $illdy_latest_news_post_bakground_color = sanitize_hex_color(get_theme_mod('illdy_latest_news_post_bakground_color'));
        $illdy_latest_news_post_text_color = sanitize_hex_color(get_theme_mod('illdy_latest_news_post_text_color'));
        $illdy_latest_news_post_text_hover_color = sanitize_hex_color(get_theme_mod('illdy_latest_news_post_text_hover_color'));
        $illdy_latest_news_post_content_color = sanitize_hex_color(get_theme_mod('illdy_latest_news_post_content_color'));
        $illdy_latest_news_post_button_color = sanitize_hex_color(get_theme_mod('illdy_latest_news_post_button_color'));
        $illdy_latest_news_post_button_hover_color = sanitize_hex_color(get_theme_mod('illdy_latest_news_post_button_hover_color'));
        $illdy_latest_news_general_image = esc_url(get_theme_mod('illdy_latest_news_general_image'));
        $illdy_latest_news_background_size = esc_html(get_theme_mod('illdy_latest_news_background_size'));
        $illdy_latest_news_background_repeat = esc_html(get_theme_mod('illdy_latest_news_background_repeat'));
        $illdy_latest_news_background_attachment = esc_html(get_theme_mod('illdy_latest_news_background_attachment'));
        $illdy_latest_news_background_position_y = esc_html(get_theme_mod('illdy_latest_news_background_position_y'));
        $illdy_latest_news_background_position_x = esc_html(get_theme_mod('illdy_latest_news_background_position_x'));

        $css = '';
        if ($illdy_latest_news_general_image) {
            $css .= '#latest-news {background-image: url('.$illdy_latest_news_general_image.') !important;}';
        }
        if ( $illdy_latest_news_background_position_y ) {
            $css .= '#latest-news {background-position-y: '.$illdy_latest_news_background_position_y.';}';
        }
        if ( $illdy_latest_news_background_position_x ) {
            $css .= '#latest-news {background-position-x: '.$illdy_latest_news_background_position_x.';}';
        }
        if ($illdy_latest_news_background_size) {
            $css .= '#latest-news {background-size: '.$illdy_latest_news_background_size.' !important;}';
        }
        if ($illdy_latest_news_background_repeat) {
            $css .= '#latest-news {background-repeat: repeat !important;}';
        }
        if ($illdy_latest_news_background_attachment) {
            $css .= '#latest-news {background-attachment: scroll !important;}';
        }
        if ($illdy_latest_news_general_color) {
            $css .= '#latest-news {background-color: '.$illdy_latest_news_general_color.';}';
        }
        if ($illdy_latest_news_button_background) {
            $css .= '#latest-news .latest-news-button {background-color: '.$illdy_latest_news_button_background.';}';
        }
        if ($illdy_latest_news_button_background_hover) {
            $css .= '#latest-news .latest-news-button:hover {background-color: '.$illdy_latest_news_button_background_hover.';}';
        }
        if ($illdy_latest_news_button_color) {
            $css .= '#latest-news .latest-news-button {color: '.$illdy_latest_news_button_color.';}';
        }
        if ($illdy_latest_news_post_bakground_color) {
            $css .= '#latest-news .section-content .post {background-color: '.$illdy_latest_news_post_bakground_color.';}';
        }
        if ($illdy_latest_news_post_text_color) {
            $css .= '#latest-news .section-content .post .post-title {color: '.$illdy_latest_news_post_text_color.';}';
        }
        if ($illdy_latest_news_post_text_hover_color) {
            $css .= '#latest-news .section-content .post .post-title:hover {color: '.$illdy_latest_news_post_text_hover_color.';}';
        }
        if  ($illdy_latest_news_post_content_color) {
            $css .= '#latest-news .section-content .post .post-entry {color: '.$illdy_latest_news_post_content_color.';}';
        }
        if  ($illdy_latest_news_post_button_color) {
            $css .= '#latest-news .section-content .post .post-button {color: '.$illdy_latest_news_post_button_color.';}';
        }
        if  ($illdy_latest_news_post_button_hover_color) {
            $css .= '#latest-news .section-content .post .post-button:hover {color: '.$illdy_latest_news_post_button_hover_color.';}';
        }
        if  ($illdy_latest_news_title_color) {
            $css .= '#latest-news .section-header h3 {color: '.$illdy_latest_news_title_color.';}';
        }
        if  ($illdy_latest_news_descriptions_color) {
            $css .= '#latest-news .section-header .section-description {color: '.$illdy_latest_news_descriptions_color.';}';
        }
        
        return $css;
    }
}

if ( !function_exists( 'illdy_fullwidth_css' ) ) {
    function illdy_fullwidth_css(){

        $illdy_full_width_title_color = sanitize_hex_color(get_theme_mod('illdy_full_width_title_color'));
        $illdy_full_width_descriptions_color = sanitize_hex_color(get_theme_mod('illdy_full_width_descriptions_color'));
        $illdy_full_width_full_text = sanitize_hex_color(get_theme_mod('illdy_full_width_full_text'));
        $illdy_full_width_general_color = sanitize_hex_color(get_theme_mod('illdy_full_width_general_color', ''));
        $illdy_full_width_general_image = esc_url(get_theme_mod('illdy_full_width_general_image'));
        $illdy_full_width_background_size = esc_html(get_theme_mod('illdy_full_width_background_size'));
        $illdy_full_width_background_repeat = esc_html(get_theme_mod('illdy_full_width_background_repeat'));
        $illdy_full_width_background_attachment = esc_html(get_theme_mod('illdy_full_width_background_attachment'));
        $illdy_full_width_background_position_y = esc_html(get_theme_mod('illdy_full_width_background_position_y'));
        $illdy_full_width_background_position_x = esc_html(get_theme_mod('illdy_full_width_background_position_x'));

        $css = '';
        if ($illdy_full_width_general_image) {
            $css .= '#full-width {background-image: url('.$illdy_full_width_general_image.') !important;}';
        }
        if ( $illdy_full_width_background_position_y ) {
            $css .= '#full-width {background-position-y: '.$illdy_full_width_background_position_y.';}';
        }
        if ( $illdy_full_width_background_position_x ) {
            $css .= '#full-width {background-position-x: '.$illdy_full_width_background_position_x.';}';
        }
        if ($illdy_full_width_background_size) {
            $css .= '#full-width {background-size: '.$illdy_full_width_background_size.' !important;}';
        }
        if ($illdy_full_width_background_repeat) {
            $css .= '#full-width {background-repeat: repeat !important;}';
        }
        if ($illdy_full_width_background_attachment) {
            $css .= '#full-width {background-attachment: scroll !important;}';
        }
        if ($illdy_full_width_general_color) {
            $css .= '#full-width {background-color: '.$illdy_full_width_general_color.';}';
        }
        if  ($illdy_full_width_title_color) {
            $css .= '#full-width .section-header h3 {color: '.$illdy_full_width_title_color.';}';
        }
        if  ($illdy_full_width_descriptions_color) {
            $css .= '#full-width .section-header .section-description {color: '.$illdy_full_width_descriptions_color.';}';
        }
        if  ($illdy_full_width_descriptions_color) {
            $css .= '#full-width .top-parallax-section h1, #full-width .top-parallax-section p {color: '.$illdy_full_width_full_text.';}';
        }
        
        return $css;
    }
}

if ( !function_exists( 'illdy_about_css' ) ) {
    function illdy_about_css(){

        $illdy_about_title_color = sanitize_hex_color(get_theme_mod('illdy_about_title_color'));
        $illdy_about_descriptions_color = sanitize_hex_color(get_theme_mod('illdy_about_descriptions_color'));
        $illdy_about_general_color = sanitize_hex_color(get_theme_mod('illdy_about_general_color'));
        $illdy_about_general_image = esc_url(get_theme_mod('illdy_about_general_image'));
        $illdy_about_background_size = esc_html(get_theme_mod('illdy_about_background_size'));
        $illdy_about_background_repeat = esc_html(get_theme_mod('illdy_about_background_repeat'));
        $illdy_about_background_attachment = esc_html(get_theme_mod('illdy_about_background_attachment'));
        $illdy_about_background_position_y = esc_html(get_theme_mod('illdy_about_background_position_y'));
        $illdy_about_background_position_x = esc_html(get_theme_mod('illdy_about_background_position_x'));

        $css = '';
        if ($illdy_about_general_image) {
            $css .= '#about {background-image: url('.$illdy_about_general_image.') !important;}';
        }
        if ( $illdy_about_background_position_y ) {
            $css .= '#about {background-position-y: '.$illdy_about_background_position_y.';}';
        }
        if ( $illdy_about_background_position_x ) {
            $css .= '#about {background-position-x: '.$illdy_about_background_position_x.';}';
        }
        if ($illdy_about_background_size) {
            $css .= '#about {background-size: '.$illdy_about_background_size.' !important;}';
        }
        if ($illdy_about_background_repeat) {
            $css .= '#about {background-repeat: repeat !important;}';
        }
        if ($illdy_about_background_attachment) {
            $css .= '#about {background-attachment: scroll !important;}';
        }
        if ($illdy_about_general_color) {
            $css .= '#about {background-color: '.$illdy_about_general_color.';}';
        }
        if  ($illdy_about_title_color) {
            $css .= '#about .section-header h3 {color: '.$illdy_about_title_color.';}';
        }
        if  ($illdy_about_descriptions_color) {
            $css .= '#about .section-header .section-description {color: '.$illdy_about_descriptions_color.';}';
        }
        
        return $css;
    }
}

if ( !function_exists( 'illdy_projects_css' ) ) {
    function illdy_projects_css(){

        $illdy_projects_title_color = sanitize_hex_color(get_theme_mod('illdy_projects_title_color'));
        $illdy_projects_descriptions_color = sanitize_hex_color(get_theme_mod('illdy_projects_descriptions_color'));
        $illdy_projects_general_color = sanitize_hex_color(get_theme_mod('illdy_projects_general_color'));
        $illdy_projects_general_image = esc_url(get_theme_mod('illdy_projects_general_image', get_template_directory_uri() . '/layout/images/front-page/pattern.png'));
        $illdy_projects_background_size = esc_html(get_theme_mod('illdy_projects_background_size','auto'));
        $illdy_projects_background_repeat = esc_html(get_theme_mod('illdy_projects_background_repeat',1));
        $illdy_projects_background_attachment = esc_html(get_theme_mod('illdy_projects_background_attachment'));
        $illdy_projects_background_position_y = esc_html(get_theme_mod('illdy_projects_background_position_y'));
        $illdy_projects_background_position_x = esc_html(get_theme_mod('illdy_projects_background_position_x'));

        $css = '';
        if ($illdy_projects_general_image) {
            $css .= '#projects {background-image: url('.$illdy_projects_general_image.') !important;}';
        }
        if ( $illdy_projects_background_position_y ) {
            $css .= '#projects {background-position-y: '.$illdy_projects_background_position_y.';}';
        }
        if ( $illdy_projects_background_position_x ) {
            $css .= '#projects {background-position-x: '.$illdy_projects_background_position_x.';}';
        }
        if ($illdy_projects_background_size) {
            $css .= '#projects {background-size: '.$illdy_projects_background_size.' !important;}';
        }
        if ($illdy_projects_background_repeat) {
            $css .= '#projects {background-repeat: repeat !important;}';
        }
        if ($illdy_projects_background_attachment) {
            $css .= '#projects {background-attachment: scroll !important;}';
        }
        if ($illdy_projects_general_color) {
            $css .= '#projects {background-color: '.$illdy_projects_general_color.';}';
        }
        if  ($illdy_projects_title_color) {
            $css .= '#projects .section-header h3 {color: '.$illdy_projects_title_color.';}';
        }
        if  ($illdy_projects_descriptions_color) {
            $css .= '#projects .section-header .section-description {color: '.$illdy_projects_descriptions_color.';}';
        }
        
        return $css;
    }
}

if ( !function_exists( 'illdy_services_css' ) ) {
    function illdy_services_css(){

        $illdy_services_title_color = sanitize_hex_color(get_theme_mod('illdy_services_title_color'));
        $illdy_services_descriptions_color = sanitize_hex_color(get_theme_mod('illdy_services_descriptions_color'));
        $illdy_services_general_color = sanitize_hex_color(get_theme_mod('illdy_services_general_color'));
        $illdy_services_general_image = esc_url(get_theme_mod('illdy_services_general_image'));
        $illdy_services_background_size = esc_html(get_theme_mod('illdy_services_background_size'));
        $illdy_services_background_repeat = esc_html(get_theme_mod('illdy_services_background_repeat'));
        $illdy_services_background_attachment = esc_html(get_theme_mod('illdy_services_background_attachment'));
        $illdy_services_background_position_y = esc_html(get_theme_mod('illdy_services_background_position_y'));
        $illdy_services_background_position_x = esc_html(get_theme_mod('illdy_services_background_position_x'));

        $css = '';
        if ($illdy_services_general_image) {
            $css .= '#services {background-image: url('.$illdy_services_general_image.') !important;}';
        }
        if ( $illdy_services_background_position_y ) {
            $css .= '#services {background-position-y: '.$illdy_services_background_position_y.';}';
        }
        if ( $illdy_services_background_position_x ) {
            $css .= '#services {background-position-x: '.$illdy_services_background_position_x.';}';
        }
        if ($illdy_services_background_size) {
            $css .= '#services {background-size: '.$illdy_services_background_size.' !important;}';
        }
        if ($illdy_services_background_repeat) {
            $css .= '#services {background-repeat: repeat !important;}';
        }
        if ($illdy_services_background_attachment) {
            $css .= '#services {background-attachment: scroll !important;}';
        }
        if ($illdy_services_general_color) {
            $css .= '#services {background-color: '.$illdy_services_general_color.';}';
        }
        if  ($illdy_services_title_color) {
            $css .= '#services .section-header h3 {color: '.$illdy_services_title_color.';}';
        }
        if  ($illdy_services_descriptions_color) {
            $css .= '#services .section-header .section-description {color: '.$illdy_services_descriptions_color.';}';
        }
        
        return $css;
    }
}

if ( !function_exists( 'illdy_team_css' ) ) {
    function illdy_team_css(){

        $illdy_team_title_color = sanitize_hex_color(get_theme_mod('illdy_team_title_color'));
        $illdy_team_descriptions_color = sanitize_hex_color(get_theme_mod('illdy_team_descriptions_color'));
        $illdy_team_general_color = sanitize_hex_color(get_theme_mod('illdy_team_general_color'));
        $illdy_team_general_image = esc_url(get_theme_mod('illdy_team_general_image',get_template_directory_uri() . '/layout/images/front-page/pattern.png'));
        $illdy_team_background_size = esc_html(get_theme_mod('illdy_team_background_size','auto'));
        $illdy_team_background_repeat = esc_html(get_theme_mod('illdy_team_background_repeat',1));
        $illdy_team_background_attachment = esc_html(get_theme_mod('illdy_team_background_attachment'));
        $illdy_team_background_position_y = esc_html(get_theme_mod('illdy_team_background_position_y'));
        $illdy_team_background_position_x = esc_html(get_theme_mod('illdy_team_background_position_x'));

        $css = '';
        if ($illdy_team_general_image) {
            $css .= '#team {background-image: url('.$illdy_team_general_image.') !important;}';
        }
        if ( $illdy_team_background_position_y ) {
            $css .= '#team {background-position-y: '.$illdy_team_background_position_y.';}';
        }
        if ( $illdy_team_background_position_x ) {
            $css .= '#team {background-position-x: '.$illdy_team_background_position_x.';}';
        }
        if ($illdy_team_background_size) {
            $css .= '#team {background-size: '.$illdy_team_background_size.' !important;}';
        }
        if ($illdy_team_background_repeat) {
            $css .= '#team {background-repeat: repeat !important;}';
        }
        if ($illdy_team_background_attachment) {
            $css .= '#team {background-attachment: scroll !important;}';
        }
        if ($illdy_team_general_color) {
            $css .= '#team {background-color: '.$illdy_team_general_color.';}';
        }
        if  ($illdy_team_title_color) {
            $css .= '#team .section-header h3 {color: '.$illdy_team_title_color.';}';
        }
        if  ($illdy_team_descriptions_color) {
            $css .= '#team .section-header .section-description {color: '.$illdy_team_descriptions_color.';}';
        }
        
        return $css;
    }
}

if ( !function_exists( 'illdy_testimonials_css' ) ) {
    function illdy_testimonials_css(){

        $illdy_testimonials_title_color = sanitize_hex_color(get_theme_mod('illdy_testimonials_title_color'));
        $illdy_testimonials_general_color = sanitize_hex_color(get_theme_mod('illdy_testimonials_general_color'));
        $illdy_testimonials_general_background_image = esc_url(get_theme_mod('illdy_testimonials_general_background_image', get_template_directory_uri() . '/layout/images/testiomnials-background.jpg' ));
        $illdy_testimonials_background_size = esc_html(get_theme_mod('illdy_testimonials_background_size'));
        $illdy_testimonials_background_repeat = esc_html(get_theme_mod('illdy_testimonials_background_repeat'));
        $illdy_testimonials_background_attachment = esc_html(get_theme_mod('illdy_testimonials_background_attachment'));

        $illdy_testimonials_author_text_color = sanitize_hex_color(get_theme_mod('illdy_testimonials_author_text_color'));
        $illdy_testimonials_text_color = sanitize_hex_color(get_theme_mod('illdy_testimonials_text_color'));
        $illdy_testimonials_container_background_color = sanitize_hex_color(get_theme_mod('illdy_testimonials_container_background_color'));
        $illdy_testimonials_dots_color = sanitize_hex_color(get_theme_mod('illdy_testimonials_dots_color'));

        $illdy_testimonials_background_position_y = esc_html(get_theme_mod('illdy_testimonials_background_position_y'));
        $illdy_testimonials_background_position_x = esc_html(get_theme_mod('illdy_testimonials_background_position_x'));

        $css = '';
        if ($illdy_testimonials_general_background_image) {
            $css .= '#testimonials {background-image: url('.$illdy_testimonials_general_background_image.') !important;}';
        }
        if ( $illdy_testimonials_background_position_y ) {
            $css .= '#testimonials {background-position-y: '.$illdy_testimonials_background_position_y.';}';
        }
        if ( $illdy_testimonials_background_position_x ) {
            $css .= '#testimonials {background-position-x: '.$illdy_testimonials_background_position_x.';}';
        }
        if ($illdy_testimonials_background_size) {
            $css .= '#testimonials {background-size: '.$illdy_testimonials_background_size.' !important;}';
        }
        if ($illdy_testimonials_background_repeat) {
            $css .= '#testimonials {background-repeat: repeat !important;}';
        }
        if ($illdy_testimonials_background_attachment) {
            $css .= '#testimonials {background-attachment: scroll !important;}';
        }
        if ($illdy_testimonials_general_color) {
            $css .= '#testimonials {background-color: '.$illdy_testimonials_general_color.';}';
        }
        if  ($illdy_testimonials_title_color) {
            $css .= '#testimonials .section-header h3 {color: '.$illdy_testimonials_title_color.';}';
        }
        if  ($illdy_testimonials_author_text_color) {
            $css .= '#testimonials .section-content .testimonials-carousel .carousel-testimonial .testimonial-meta {color: '.$illdy_testimonials_author_text_color.';}';
        }
         if  ($illdy_testimonials_text_color) {
            $css .= '#testimonials .section-content .testimonials-carousel .carousel-testimonial .testimonial-content blockquote {color: '.$illdy_testimonials_text_color.';}';
        }
         if  ($illdy_testimonials_container_background_color) {
            $css .= '#testimonials .section-content .testimonials-carousel .carousel-testimonial .testimonial-content {background-color: '.$illdy_testimonials_container_background_color.';}';
            $css .= '#testimonials .section-content .testimonials-carousel .carousel-testimonial .testimonial-content:after {border-color: '.$illdy_testimonials_container_background_color.' transparent transparent transparent;}';
        }
         if  ($illdy_testimonials_dots_color) {
            $css .= '#testimonials .section-content .testimonials-carousel .owl-controls .owl-dots .owl-dot:hover, #testimonials .section-content .testimonials-carousel .owl-controls .owl-dots .owl-dot.active {border-color: '.$illdy_testimonials_dots_color.';}';
            $css .= '#testimonials .section-content .testimonials-carousel .owl-controls .owl-dots .owl-dot {background-color: '.$illdy_testimonials_dots_color.';}';
        }
        
        return $css;
    }
}

if ( !function_exists( 'illdy_output_sections_css' ) ) {

    function illdy_output_sections_css(){ ?>

        <style type="text/css" id="illdy-about-section-css"><?php echo illdy_jumbotron_css() ?></style>
        <style type="text/css" id="illdy-latestnews-section-css"><?php echo illdy_latestnews_css() ?></style>
        <style type="text/css" id="illdy-fullwidth-section-css"><?php echo illdy_fullwidth_css() ?></style>
        <style type="text/css" id="illdy-about-section-css"><?php echo illdy_about_css() ?></style>
        <style type="text/css" id="illdy-projects-section-css"><?php echo illdy_projects_css() ?></style>
        <style type="text/css" id="illdy-services-section-css"><?php echo illdy_services_css() ?></style>
        <style type="text/css" id="illdy-team-section-css"><?php echo illdy_team_css() ?></style>
        <style type="text/css" id="illdy-testimonials-section-css"><?php echo illdy_testimonials_css() ?></style>

    <?php
    }

    add_action( 'wp_head', 'illdy_output_sections_css', 99 );

}

add_filter('body_class', 'illdy_output_customizer_class');

function illdy_output_customizer_class($classes) {
        if ( is_customize_preview() ) {
            $classes[] = 'illdy-customizer-preview';
        }
        return $classes;
}