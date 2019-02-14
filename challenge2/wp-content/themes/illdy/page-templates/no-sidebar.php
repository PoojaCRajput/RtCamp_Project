<?php
/**
 *	Template name: No Sidebar
 *
 *	The template for displaying Custom Page Template: No Sidebar.
 *
 *	@package WordPress
 *	@subpackage illdy
 */
?>
<?php get_header(); ?> <!--
<div class="container-fluid">
	<div class="row">
		<div class="col-sm-12"> -->
			<div id="blog">
				<?php
				if( have_posts() ):
					while( have_posts() ):
						the_post();
						get_template_part( 'template-parts/content', 'page' );
					endwhile;
				endif;
				?>
			</div><!--/#blog-->
	<!--	</div> --><!--/.col-sm-12-->
<!--	</div> --><!--/.row-->
<!--</div> --><!--/.container-->
<?php get_footer(); ?>