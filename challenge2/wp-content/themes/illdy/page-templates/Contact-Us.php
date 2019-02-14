<?php
/**
 *  Template name: Contact-Us page 
 *
 *  The template for displaying Custom Page Template: Left Sidebar.
 *
 *  @package WordPress
 *  @subpackage illdy
 */
?>
<?php get_header(); ?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Demo company</title>
    <style type="text/css">
      .news p{
         font-size: 15px !important;
         font-weight: bold;
         border-bottom: dashed 1px;
         padding-bottom: 2px;
      }
      .news ul li{
        font-size: 13px;
      }
      .newspart1 ul li:hover{
          color: #993408;
          font-weight: bold;
      }
      .touch1{
        background-image: url('http://localhost/challenge2/face1.jpg');
        background-repeat: no-repeat;
        background-position: 0px 0px;
      }
      .touch1:hover{
        background-image: url('http://localhost/challenge2/face.jpg');
        color: #18377b !important;
        font-weight: bold;
      }
      .touch2{
        background-image: url('http://localhost/challenge2/twit.jpg');
        background-repeat: no-repeat;
        background-position: 0px 0px;
      }
      .touch2:hover{
        background-image: url('http://localhost/challenge2/twit1.jpg');
        color: #18377b !important;
        font-weight: bold;
      }
      .touch3{
        background-image: url('http://localhost/challenge2/link.jpg');
        background-repeat: no-repeat;
        background-position: 0px 0px;
      }
      .touch3:hover{
        background-image: url('http://localhost/challenge2/link1.jpg');
        color: #18377b !important;
        font-weight: bold;
      }
      .touch4{
        background-image: url('http://localhost/challenge2/rss.jpg');
        background-repeat: no-repeat;
        background-position: 0px 0px;
      }
      .touch4:hover{
        background-image: url('http://localhost/challenge2/rss1.jpg');
        color: #18377b !important;
        font-weight: bold;
      }
      .find1:hover{
        background-image:url('http://localhost/challenge2/hoverbg.jpg');
        background-repeat: no-repeat;
        color:white !important;
      }
      .slider{
        height: 342px;
        background-image: url('http://localhost/challenge2/sliderbg.jpg');
        line-height: 342px;
      }
      .textonimg{
        width: 335px;
        height: 282px;
        background: black;
        opacity: .6;
        position: absolute;
        bottom: 225px;
        left: 810px;
      }
      .common2{
        list-style-image: url('http://localhost/challenge2/common2.png');
      }
      .common3{
        list-style-image: url('http://localhost/challenge2/common3.png');
      }
      .common1{
        list-style-image: url('http://localhost/challenge2/common1.png');
      }
      .common6{
        list-style-image: url('http://localhost/challenge2/common6.png');
      }
      .nav-link:hover{
          color: #993408 !important;
          font-weight: bold;
      }
    </style>
  </head>
  <body>
  <nav class="navbar navbar-expand-lg navbar-light bg-light mb-5">
  <div class="container">
  <a class="navbar-brand" href="#"><img src="http://localhost/challenge2/logo.png"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" style="color: black !important;">News</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" style="color: black !important;">Gallery</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" style="color: black !important;">Pages</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" style="color: black !important;">Layouts</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" style="color: black !important;">Features</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" style="color: black !important;">Blog</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" style="color: black !important;">Contact</a>
      </li>
      </ul>
    
  </div>
  </div>
</nav>
<div class="container-fluid slider my-2 text-center mb-5">
  <img src="http://localhost/challenge2/sliderimg.jpg"/>
    <div class="textonimg" style="line-height:22px;padding:16px;">
    <div style="float: left;">
    <h2 class="text-left text-white pl-1">Slide headline</h2>
    <p style="max-width: 240px;color: #cccccc;text-align: left;font-size: 18px;">
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean et sollicitudin risus. Sed gravida placerat eleifend. Suspendisse tincidunt fringilla dictum. Nam ipsum justo, adipiscing euullamcorper ut, hendrerit sit amet velit. Nulla facilisi.
    </p>
    </div>
    <div style="float: right;color: white;text-align: center;">
    <ul>
    <li class="common1"></li>
    <li class="pt-5 common2"></li>
    <li class="common3"></li>
    <li class="common2"></li>
    <li class="pb-5 common2"></li>
    <li class="common6"></li>
    </ul>
    </div>
    
  </div>
</div>
  <div class="container news mb-5">
      <div class="row">
        <div class="col-lg-3 col-sm-6 text-left">
              
              <ul style="font-size: 17px !important;list-style-type: none;padding: 0px;">

                <li><p class="py-2 find1" style="border: none !important;font-size: 17px;color: #993408;">FINDING</p></li>

                <li><p class="py-2 find1" style="border: none !important;color: #993408;">PROMOTIONAL ACTIVITIES</p></li>

                <li><p class="py-2 find1" style="border: none !important;color: #993408;">ENVIRONMENT</p></li>

              </ul>
        </div>

        <div class="col-lg-3 col-sm-6 text-left">
        
              <ul style="list-style-type: none;">

                <li class="p-2">
                   <img src="http://localhost/challenge2/img1.jpg">
                </li>

                <li class="p-2">
                    <b>Aldus PageMaker including versions of Lorem Ipsum.</b>
                </li>

                <li class="p-2">
                  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean et sollicitudin risus.
                </li>
                </ul>
        </div>
        <div class="col-lg-3 col-sm-6 text-left">
        <ul style="list-style-type: none;">

                <li class="p-2">
                   <img src="http://localhost/challenge2/img2.jpg">
                </li>

                <li class="p-2">
                    <b>Aldus PageMaker including versions of Lorem Ipsum.</b>
                </li>

                <li class="p-2">
                  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean et sollicitudin risus.
                </li>
                </ul>
        </div>
        <div class="col-lg-3 col-sm-6 text-left">
        <ul style="list-style-type: none;">

                <li class="p-2">
                   <img src="http://localhost/challenge2/img3.jpg">
                </li>

                <li class="p-2">
                    <b>Aldus PageMaker including versions of Lorem Ipsum.</b>
                </li>

                <li class="p-2">
                  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean et sollicitudin risus.
                </li>
                </ul>
        </div>
      </div>
    </div>
    <div class="container news mb-5">
      <div class="row">
        <div class="col-lg-3 col-sm-6 text-left newspart1">
              <p>LATEST NEWS</p>
              <ul style="list-style-image:url('http://localhost/challenge2/arrowimg.jpg');padding:0px;">

                <li>Many desktop publishing packages and web page</li>

                <li>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s </li>

                <li>Latin words, combined with a handful of model sentence structures</li>

              </ul>
        </div>

        <div class="col-lg-3 col-sm-6 text-left">
        <p>RECENT PROJECTS</p>
              <ul style="list-style-type: none;padding:0px;">

                <li class="p-2">
                   <img src="http://localhost/challenge2/recent-pro-1.jpg">
                </li>

                <li class="p-2">
                    <img src="http://localhost/challenge2/recent-pro-2.jpg">
                </li>

                <li class="p-2">
                  <img src="http://localhost/challenge2/recent-pro-3.jpg">
                </li>
                </ul>
        </div>
        <div class="col-lg-3 col-sm-6 text-left">
        <p>STAY IN TOUCH</p>
              <ul style="list-style-type: none;padding:0px;">
                  <li class="pl-5 pb-3 touch1">
                      Facebook
                  </li>
                  <li class="pl-5 pb-3 touch2">
                    Twitter
                  </li>
                  <li class="pl-5 pb-3 touch3">
                    Linked In
                  </li>
                  <li class="pl-5 pb-3 touch4">
                    RSS
                  </li>
              </ul>
        </div>
        <div class="col-lg-3 col-sm-6 text-left">
        <p>SECURITY & PRIVACY</p>
              <ul style="list-style-type: none;padding:0px;">
                <li class="p-1">
                  Security
                </li>
                <li class="p-1">
                  Privacy Policy
                </li>
                <li class="p-1">
                  Terms of Service
                </li>
              </ul>
        </div>
      </div>
    </div>

    <nav class="navbar navbar-expand-lg navbar-light bg-light mb-5">
  <div class="container">
 
  <div class="row">
  <div class="col-6">
  <div class="row">
  <div class="col-12">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" style="color: black !important;">News</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" style="color: black !important;">Gallery</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" style="color: black !important;">Pages</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" style="color: black !important;">Layouts</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" style="color: black !important;">Features</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" style="color: black !important;">Blog</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" style="color: black !important;">Contact</a>
      </li>
      </ul>
      </div>
      <div class="col-12" style="font-size: 1.3rem !important;">
       © 2011 rtPanel. All Rights Reserved. Designed by rtCamp
       </div>
       </div>
       </div>
       <div class="col-3 text-right" style="text-align: right !important;">
      
       </div>
       <div class="col-3 text-right" style="text-align: right !important;">
      <a class="navbar-brand" href="#"><img src="http://localhost/challenge2/logo.png"></a>
       </div>
       </div>
       </div>
  
</nav>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  
   <?php get_footer(); ?> 
  </body>
</html>