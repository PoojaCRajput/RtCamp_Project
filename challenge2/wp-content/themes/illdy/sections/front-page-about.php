<?php
/**
 *	The template for displaying about section in front page.
 *
 *	@package WordPress
 *	@subpackage illdy
 */
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS --><!--
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> -->

    <title>IBUS : Home Page</title>
    <style>

    /* style for navbar */
       .bg-dark {
        background-color: #90bf39!important;
    }
       .nav-link {
        color: white !important;
        text-align: center;
       }
       .nav-link:hover{
        background: #507211 !important;
       }
       .navbar {
             padding: 0 1rem !important; 
          }
        @media (min-width: 768px){
           .navbar-expand-md .navbar-nav .nav-link {
              padding-right: .7rem !important;
              padding-left: .7rem !important;
            }
          }
          .dropdown-menu{
            background: #90bf39;
            text-align: center;
          }
          .dropdown-item:hover{
            background: #507211 !important;
            color:white; 
          }
          .dropdown-item {
            color:white !important;
          }

          /* social link code */
.footer{
    background:black !important;
  }
 i{
    background: white;
      padding: 5px 7px;
      border-radius: 50%;
      font-size: 13px;
      margin: 3px 3px;
}
.preheader i{
  font-size: 25px;
    background: #90bf39;
    color: white;
  }
  .preheader i:hover{
     color:white !important; 
  background: #507211 !important;
}
 .fa-facebook{
    padding: 5px 9px !important;
}
}
 .fa-google-plus{
    padding: 8px 5px !important;
}
/*downloads button responsive */
@media screen and (max-width: 480px) {
  #googleapplink {
    margin-left: 0 !important;
  }
}
.btn-secondary-outline:hover{
     color:white !important; 
  background: #507211 !important;
}
.bordercustom{
  border:solid 2px #90bf39;
  height: 3px;
  width: 100px;
}
.btn-primary,.header-bg{
  background:#90bf39 !important; 
  text-align: center;
  border:none;
}
.tagline,.text-primary{
  color:#90bf39 !important; 
  text-align: center;
}
.btn-primary:hover{
  color:white !important; 
  background: #507211 !important;
 /* border:none; */
   
  }
     /* news sections */
     @import "http://nyplintranet-training.appspot.com/css/themes/nypl/main.css";
/* equal card height */
.row-equal > div[class*='col-'] {

CSS

  

    display: flex;
    flex: 1 0 auto;
}

.row-equal .card {
   width: 100%;
}

/* ensure equal card height inside carousel */
.carousel-inner>.row-equal.active, 
.carousel-inner>.row-equal.next, 
.carousel-inner>.row-equal.prev {
    display: flex;
}

/* prevent flicker during transition */
.carousel-inner>.row-equal.active.left, 
.carousel-inner>.row-equal.active.right {
    opacity: 0.5;
    display: flex;
}


/* control image height */
.card-img-top-250 {
    max-height: 250px;
    overflow:hidden;
}     
.btn {
    display: inline-block;
    padding: .375rem 1rem;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    border: 1px solid transparent;
    border-radius: .25rem;
}
.btn-secondary-outline{
    color: #fff;
    background-color: #ccc;
    border-color: #ccc;
}

  /* banner customizing */
  .positiontext{
    bottom: 320px !important;
    font-size: 3rem !important;
    color:black !important; 
    font-weight: bold !important;
    text-transform: uppercase;
  }
  .carousel {
    position: relative;
    top: -22px;
}
  
/*testimonial code start here */
.testimonial h2 {
  color: #333;
  text-align: center;
  text-transform: uppercase;
  font-family: "Roboto", sans-serif;
  font-weight: bold;
  position: relative;
  margin: 30px 0 60px;
}
.testimonial h2::after {
  content: "";
  width: 100px;
  position: absolute;
  margin: 0 auto;
  height: 3px;
  background: #8fbc54;
  left: 0;
  right: 0;
  bottom: -10px;
}
.testimonial .col-center {
  margin: 0 auto;
  float: none !important;
}
.testimonial .carousel {
  margin: 50px auto;
  padding: 0 70px;
}
.testimonial .carousel .item {
  color: #999;
  font-size: 14px;
    text-align: center;
  overflow: hidden;
    min-height: 290px;
}
.testimonial .carousel .item .img-box {
  width: 135px;
  height: 135px;
  margin: 0 auto;
  padding: 5px;
  border: 1px solid #ddd;
  border-radius: 50%;
}
.testimonial .carousel .img-box img {
  width: 100%;
  height: 100%;
  display: block;
  border-radius: 50%;
}
.testimonial .carousel .testimonial {
  padding: 30px 0 10px;
}
.testimonial .carousel .overview { 
  font-style: italic;
}
.testimonial .carousel .overview b {
  text-transform: uppercase;
  color: #7AA641;
}
.testimonial .carousel .carousel-control {
  width: 40px;
    height: 40px;
    margin-top: -20px;
    top: 50%;
  background: none;
}
.testimonial .carousel-control i {
    font-size: 68px;
  line-height: 42px;
    position: absolute;
    display: inline-block;
  color: rgba(0, 0, 0, 0.8);
    text-shadow: 0 3px 3px #e6e6e6, 0 0 0 #000;
}
.testimonial .carousel .carousel-indicators {
  bottom: -40px;
}
.testimonial .carousel-indicators li, .testimonial .carousel-indicators li.active {
  width: 10px;
  height: 10px;
  margin: 1px 3px;
  border-radius: 50%;
}
.testimonial .carousel-indicators li { 
  background: #999;
  border-color: transparent;
  box-shadow: inset 0 2px 1px rgba(0,0,0,0.2);
}
.testimonial .carousel-indicators li.active {  
  background: #555;   
  box-shadow: inset 0 2px 1px rgba(0,0,0,0.2);
}

/* Tabs*/
section {
    padding: 60px 0;
}

section .section-title {
    text-align: center;
    color: #007b5e;
    margin-bottom: 50px;
    text-transform: uppercase;
}
#tabs{
  background: #90bf39;
    color: #eee;
}
#tabs h6.section-title{
    color: #eee;
}

#tabs .nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link.active {
    color: #f3f3f3;
     background: #507211 !important;
     border-color: transparent transparent #f3f3f3;
    border-bottom: 4px solid !important;
    font-size: 20px;
    font-weight: bold;
}
#tabs .nav-tabs .nav-link {
    border: 1px solid transparent;
    border-top-left-radius: .25rem;
    border-top-right-radius: .25rem;
    color: #eee;
    font-size: 20px;
}

/* videos category section css */

@media (min-width: 768px) {

    /* show 3 items */
    .videocat .carousel-inner .active,
    .videocat .carousel-inner .active + .carousel-item,
    .videocat .carousel-inner .active + .carousel-item + .carousel-item,
    .videocat .carousel-inner .active + .carousel-item + .carousel-item + .carousel-item  {
        display: block;
    }
    
    .videocat .carousel-inner .carousel-item.active:not(.carousel-item-right):not(.carousel-item-left),
    .videocat .carousel-inner .carousel-item.active:not(.carousel-item-right):not(.carousel-item-left) + .carousel-item,
    .videocat .carousel-inner .carousel-item.active:not(.carousel-item-right):not(.carousel-item-left) + .carousel-item + .carousel-item,
    .videocat .carousel-inner .carousel-item.active:not(.carousel-item-right):not(.carousel-item-left) + .carousel-item + .carousel-item + .carousel-item {
        transition: none;
    }
    
    .videocat .carousel-inner .carousel-item-next,
    .videocat .carousel-inner .carousel-item-prev {
      position: relative;
      transform: translate3d(0, 0, 0);
    }
    
    .videocat .carousel-inner .active.carousel-item + .carousel-item + .carousel-item + .carousel-item + .carousel-item {
        position: absolute;
        top: 0;
        right: -25%;
        z-index: -1;
        display: block;
        visibility: visible;
    }
    
    /* left or forward direction */
    .videocat .active.carousel-item-left + .carousel-item-next.carousel-item-left,
    .videocat .carousel-item-next.carousel-item-left + .carousel-item,
    .videocat .carousel-item-next.carousel-item-left + .carousel-item + .carousel-item,
    .videocat .carousel-item-next.carousel-item-left + .carousel-item + .carousel-item + .carousel-item,
    .videocat .carousel-item-next.carousel-item-left + .carousel-item + .carousel-item + .carousel-item + .carousel-item {
        position: relative;
        transform: translate3d(-100%, 0, 0);
        visibility: visible;
    }
    
    /* farthest right hidden item must be abso position for animations */
    .videocat .carousel-inner .carousel-item-prev.carousel-item-right {
        position: absolute;
        top: 0;
        left: 0;
        z-index: -1;
        display: block;
        visibility: visible;
    }
    
    /* right or prev direction */
    .videocat .active.carousel-item-right + .carousel-item-prev.carousel-item-right,
    .videocat .carousel-item-prev.carousel-item-right + .carousel-item,
    .videocat .carousel-item-prev.carousel-item-right + .carousel-item + .carousel-item,
    .videocat .carousel-item-prev.carousel-item-right + .carousel-item + .carousel-item + .carousel-item,
    .videocat .carousel-item-prev.carousel-item-right + .carousel-item + .carousel-item + .carousel-item + .carousel-item {
        position: relative;
        transform: translate3d(100%, 0, 0);
        visibility: visible;
        display: block;
        visibility: visible;
    }

}

 /* Bootstrap Lightbox using Modal */

.videocat #profile-grid { overflow: auto; white-space: normal; } 
.videocat #profile-grid .profile { padding-bottom: 40px; }
.videocat #profile-grid .panel { padding: 0 }
.videocat #profile-grid .panel-body { padding: 15px }
.videocat #profile-grid .profile-name { font-weight: bold; }
.videocat #profile-grid .thumbnail {margin-bottom:6px;}
.videocat #profile-grid .panel-thumbnail { overflow: hidden; }
.videocat #profile-grid .img-rounded { border-radius: 4px 4px 0 0;}

/*custom style for videos section */
@media (min-width: 1200px){
           .videocat h4 {
              width: 1100px !important;
            }
          }
@media (min-width: 991px) and (max-width: 1199px){
           .videocat h4 {
              width: 900px !important;
               }
            iframe{
              width: 200px;
              height: 200px;
              margin-top: 25px;
              }
          }
    #blog {
     padding: 0px 0 0px 0 !important; 
}
.markup-format a {
    color: white !important;
    text-decoration: underline;
}
.post-content{
font-size: 1.5rem !important;
}
.testimonials{
 font-size: 2rem !important;   
}
.blog-post-title{
    display:none !important;
}
#blog .blog-post {
    margin-bottom:0 !important;
}
.sticky-top {
 top:20 !important;
}
.preheader{
 padding-top:20px !important;
}
.navbar {
    margin-bottom:0 !important;
}
.entry-title a{
    color: black !important;
}

    </style>
    
  </head>
  <body>

 <?php echo do_shortcode('[smartslider3 slider=2]'); ?>   
<!-- tabular video section start here -->
<!-- Tabs -->
<section id="tabs" class="mb-5">
  <div class="container">
   <!-- <h6 class="section-title h1">Video Tutorials</h6> -->
    <div class="row">
      <div class="col-xs-12 ">
        <nav>
        <!--
          <li><a href="#." class="text-white">NEET</a></li>
            <li><a href="#." class="text-white">CET</a></li>  -->
 
          <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
            <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Preschool Section</a>
            <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Primary Exam Center</a>
            <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Secondary</a>
            <a class="nav-item nav-link" id="nav-about-tab" data-toggle="tab" href="#nav-about" role="tab" aria-controls="nav-about" aria-selected="false">IIT and JEE</a>
            <a class="nav-item nav-link" id="nav-cat5-tab" data-toggle="tab" href="#nav-cat5" role="tab" aria-controls="nav-cat5" aria-selected="false">NEET</a>
            <a class="nav-item nav-link" id="nav-cat6-tab" data-toggle="tab" href="#nav-cat6" role="tab" aria-controls="nav-cat6" aria-selected="false">CET</a>

          </div>
        </nav>
        <div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
          <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
             <?php echo do_shortcode('[sp_html5video grid="4" popup_fix="true" category="27"]'); ?>
          </div>
          <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                 <?php echo do_shortcode('[sp_html5video grid="4" popup_fix="true" category="28"]'); ?>
          </div>
          <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
               <?php echo do_shortcode('[sp_html5video grid="4" popup_fix="true" category="29"]'); ?>
          </div>
          <div class="tab-pane fade" id="nav-about" role="tabpanel" aria-labelledby="nav-about-tab">
               <?php echo do_shortcode('[sp_html5video grid="4" popup_fix="true" category="30"]'); ?>
          </div>
          <div class="tab-pane fade" id="nav-cat5" role="tabpanel" aria-labelledby="nav-cat5-tab">
              <?php echo do_shortcode('[sp_html5video grid="4" popup_fix="true" category="31"]'); ?>
          </div>
          <div class="tab-pane fade" id="nav-cat6" role="tabpanel" aria-labelledby="nav-cat6-tab">
             <?php echo do_shortcode('[sp_html5video grid="4" popup_fix="true" category="32"]'); ?>
          </div>
        </div>
       </div>
    </div>
  </div>
</section>
<!-- ./Tabs -->
<!-- news section -->
<div class="container news">
<div class="row">
<div class="col-sm-12 text-center py-5">
<h1><b>NEWS AND UPDATES</b></h1>
</div>
</div>
<div class="row">
<div class="col-sm-12">

  <?php echo do_shortcode('[the-post-grid id="220" title="My Grid"]'); ?>
</div></div></div>

<!-- Testimonial section -->
<div class="container testimonials">
<div class="row">
<div class="col-sm-12 text-center py-5">
<h1><b>TESTIMONIALS</b></h1>
</div>
</div>
<div class="row">
<div class="col-sm-12 text-center mx-auto">
<?php echo do_shortcode('[testimonial_rotator id=265 format=list]'); ?>

</div></div></div>




