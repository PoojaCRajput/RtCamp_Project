
<?php
/**
 *    The template for dispalying the footer.
 *
 * @package    WordPress
 * @subpackage illdy
 */
?>
<?php 


if ( current_user_can( 'edit_theme_options' ) ) {
	$footer_copyright  = get_theme_mod( 'illdy_footer_copyright', __( '&copy; Copyright 2016. All Rights Reserved.', 'illdy' ) );
} else {
	$footer_copyright  = get_theme_mod( 'illdy_footer_copyright' );
}
?> 
        


<?php wp_footer(); ?>  
<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    
    

      
    </script>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script type="text/javascript">
    
         var videourl;
         var Category;
      $(".video_image_frame").click(function() {
       // alert("click on video");
          videourl = $(this).find('a').attr('href');
         $("#myModalforvideo").modal('show');
           event.preventDefault();
      
     });

      
      $('.tab-pane').click(function(event) {
           Category = $(this).attr('id');
         if(Category=='nav-home'){
          Category='Preschool section';
         }
         else if(Category=='nav-profile'){
          Category='Primary Exam Center';
         }
         else if(Category=='nav-contact'){
          Category='Secondary';
         }
         else if(Category=='nav-about'){
          Category='IIT and JEE';
         }
         else if(Category=='nav-cat5'){
          Category='NEET';
         }
         else if(Category=='nav-cat6'){
          Category='CET';
         }

         //alert(Category);
      });


          $('#vfromsubmit').click(function(){
                
            $.ajax({
    type: "POST",
    dataType: 'JSON',
    url: 'http://localhost/ibus/whowatchvideodemo.php',
    data: {name: $('#vname').val() , email: $('#vemail').val(), vurl: videourl, vcategory: Category},
    success: function(data) {
        if(data.status == 'success'){
            alert("Thank you, you can now watch video!");
            alert(Category);
             document.location.href=videourl;//data[0].vurl
        }else if(data.status == 'error'){
            alert("Please fill the form and try again.");
        }
     }
   
    });


});

      </script>
</body>
</html>