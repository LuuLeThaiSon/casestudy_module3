<%--
  Created by IntelliJ IDEA.
  User: borntoreign
  Date: 03/12/2022
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Amber - Pet Care Bootstrap 5 Template</title>

  <!-- Favicons -->
  <link rel="shortcut icon" href="assets/images/favicon.ico">

  <!-- Vendor CSS (Icon Font) -->


  <link rel="stylesheet" href="assets/css/vendor/fontawesome.min.css" />
  <link rel="stylesheet" href="assets/css/vendor/simple-line-icons.min.css" />
  <link rel="stylesheet" href="assets/css/vendor/themify-icons-min.css" />



  <!-- Plugins CSS (All Plugins Files) -->



  <link rel="stylesheet" href="assets/css/plugins/swiper-bundle.min.css" />
  <link rel="stylesheet" href="assets/css/plugins/animate.min.css" />
  <link rel="stylesheet" href="assets/css/plugins/lightgallery.min.css" />
  <link rel="stylesheet" href="assets/css/plugins/aos.min.css" />
  <link rel="stylesheet" href="assets/css/plugins/nice-select.min.css" />



  <!-- Main Style CSS -->


  <link rel="stylesheet" href="assets/css/style.css" />



  <!-- Use the minified version files listed below for better performance and remove the files listed above -->


  <!--
<link rel="stylesheet" href="assets/css/vendor/vendor.min.css">
<link rel="stylesheet" href="assets/css/plugins/plugins.min.css">
<link rel="stylesheet" href="assets/css/style.min.css">
-->


</head>

<body>
<!-- Header Section Start -->
<div class="header section">

  <!-- Header Top Start -->
  <div class="header-top bg-primary">
    <div class="container">
      <div class="row align-items-center">
        <!-- Header Top Message Start -->
        <div class="col-12 col-lg-6">
          <div class="header-top-msg-wrapper">
            <p class="header-top-message">Welcome To our shop !</p>
          </div>
        </div>
      </div>
      <!-- Header Top Message End -->
    </div>
  </div>
</div>
<!-- Header Bottom Start -->
<div class="header-bottom">
  <div class="header-sticky">
    <div class="container">
      <div class="row align-items-center position-relative">

        <!-- Header Logo Start -->
        <div class="col-lg-3 col-md-4 col-6">
          <div class="header-logo">
            <a href="index.html"><img src="assets/images/logo/logo.png" alt="Site Logo" /></a>
          </div>
        </div>
        <!-- Header Logo End -->

        <!-- Header Menu Start -->
        <div class="col-lg-6 d-none d-lg-block">
          <div class="main-menu">
            <ul>
              <li class="has-children">
                <a href="#">Home</a>
              </li>
              <li class="has-children position-static">
                <a href="#">Shop</a>
              </li>
              <li class="has-children">
                <a href="#">Pages</a>
              </li>
              <li class="has-children">
                <a href="#">Blog</a>
              </li>
              <li><a href="#">About</a></li>
              <li><a href="#">Contact</a></li>
            </ul>
          </div>
        </div>
        <!-- Header Menu End -->
      </div>
    </div>
  </div>
</div>
<!-- Header Bottom End -->
</div>
<!-- Header Section End -->

<!-- Breadcrumb Area Start -->
<div class="section breadcrumb-area bg-bright">
  <div class="container">
    <div class="row">
      <div class="col-12 text-center">
        <div class="breadcrumb-wrapper">
          <h2 class="breadcrumb-title">Create Account</h2>
          <ul>
            <li><a href="index.html">Home</a></li>
            <li>Create Account</li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Breadcrumb Area End -->

<!-- Register Section Start -->
<div class="section section-margin">
  <div class="container">
    <div class="row">
      <div class="col-lg-7 col-md-8 m-auto">
        <div class="login-wrapper">

          <!-- Register Title & Content Start -->
          <div class="section-content text-center mb-6">
            <h2 class="title mb-2">Create Account</h2>
          </div>
          <!-- Register Title & Content End -->

          <!-- Form Action Start -->
          <form action="ServletUser?action=register" method="post">


            <!-- Input Email Start -->
            <div class="single-input-item mb-2">
              <input type="text" placeholder="Username" name="userName">
            </div>
            <!-- Input Email End -->

            <!-- Input Password Start -->
            <div class="single-input-item mb-2">
              <input type="password" name="password" placeholder="Password">
            </div>
            <!-- Input Password End -->

            <!-- Input rePassword Start -->
            <div class="single-input-item mb-2">
              <input type="password" name="rePassword" placeholder="Password">
            </div>
            <!-- Input rePassword End -->

            <!-- Input Email Start -->
            <div class="single-input-item mb-2">
              <input type="email" placeholder="Email" name="email">
            </div>
            <!-- Input Email End -->

            <!-- Input Address Start -->
            <div class="single-input-item mb-2">
              <input type="text" placeholder="Address" name="address">
            </div>
            <!-- Input Address End -->
            <!-- Input Address Start -->
            <div class="single-input-item mb-2">
              <input type="tel" placeholder="Number" name="phoneNumber">
            </div>
            <!-- Input Address End -->

            <!-- Button/Forget Password Start -->
            <div class="single-input-item">
              <div class="login-reg-form-meta mb-n3">
                <button class="btn btn btn-gray-deep btn-hover-primary mb-3">Create</button>
              </div>
            </div>
            <!-- Button/Forget Password End -->

          </form>
          <!-- Form Action End -->

        </div>
      </div>
    </div>
  </div>
</div>
<!-- Register Section End -->

<!-- Footer Section Start -->
<footer class="section footer-section">
  <!-- Footer Top Start -->
  <div class="footer-top bg-bright section-padding">
    <div class="container">
      <div class="row mb-n8">
        <div class="col-12 col-sm-6 col-lg-3 mb-8" data-aos="fade-up" data-aos-duration="1000">
          <div class="single-footer-widget">
            <h1 class="widget-title">About Us</h1>
            <p class="desc-content">Lorem ipsum dolor sit amet, co adipisi elit, sed eiusmod tempor incididunt ut labore et dolore</p>
            <!-- Soclial Link Start -->
            <div class="widget-social justify-content-start mb-n2">
              <a title="Twitter" href="#/"><i class="icon-social-twitter"></i></a>
              <a title="Instagram" href="#/"><i class="icon-social-instagram"></i></a>
              <a title="Linkedin" href="#/"><i class="icon-social-linkedin"></i></a>
              <a title="Skype" href="#/"><i class="icon-social-skype"></i></a>
              <a title="Dribble" href="#/"><i class="icon-social-dribbble"></i></a>
            </div>
            <!-- Social Link End -->
          </div>
        </div>
        <div class="col-12 col-sm-6 col-lg-3 mb-8" data-aos="fade-up" data-aos-duration="1200">
          <div class="single-footer-widget">
            <h2 class="widget-title">Useful Links</h2>
            <ul class="widget-list">
              <li><a href="wishlist.html">Help & Contact Us</a></li>
              <li><a href="contact.html">Returns & Refunds</a></li>
              <li><a href="contact.html">Online Stores</a></li>
              <li><a href="contact.html">Terms & Conditions</a></li>
            </ul>
          </div>
        </div>
        <div class="col-12 col-sm-6 col-lg-3 mb-8" data-aos="fade-up" data-aos-duration="1400">
          <div class="single-footer-widget aos-init aos-animate">
            <h2 class="widget-title">Help</h2>
            <ul class="widget-list">
              <li><a href="wishlist.html">Wishlist</a></li>
              <li><a href="contact.html">Pricing Plans</a></li>
              <li><a href="contact.html">Order Traking</a></li>
              <li><a href="contact.html">Returns</a></li>
            </ul>
          </div>
        </div>
        <div class="col-12 col-sm-6 col-lg-3 mb-8" data-aos="fade-up" data-aos-duration="1600">
          <div class="single-footer-widget">
            <h2 class="widget-title">Send newsletter</h2>
            <div class="widget-body">
              <p class="desc-content mb-4">Subscribe to our newsletter and get 10% off your first purchase..</p>
              <!-- Newsletter Form Start -->
              <div class="newsletter-form-wrap pt-1">
                <form id="mc-form" class="mc-form">
                  <input type="email" id="mc-email" class="form-control email-box" placeholder="demo@example.com" name="EMAIL">
                  <button id="mc-submit" class="newsletter-btn" type="submit">Send</button>
                </form>
                <!-- mailchimp-alerts Start -->
                <div class="mailchimp-alerts text-centre">
                  <div class="mailchimp-submitting"></div><!-- mailchimp-submitting end -->
                  <div class="mailchimp-success text-success"></div><!-- mailchimp-success end -->
                  <div class="mailchimp-error text-danger"></div><!-- mailchimp-error end -->
                </div>
                <!-- mailchimp-alerts end -->
              </div>
              <!-- Newsletter Form End -->
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Footer Top End -->

  <!-- Footer Bottom Start -->
  <div class="footer-bottom bg-light pt-4 pb-4">
    <div class="container">
      <div class="row align-items-center mb-n4">
        <div class="col-md-6 text-center text-md-start order-2 order-md-1 mb-4">
          <div class="copyright-content">
            <p class="mb-0">© 2021 <strong>Amber </strong> Made with <i class="fa fa-heart text-danger"></i> by <a href="https://hasthemes.com/">HasThemes.</a></p>
          </div>
        </div>
        <div class="col-md-6 text-center text-md-end order-1 order-md-2 mb-4">
          <div class="payment">
            <a href="#/">
              <img class="fit-image" src="assets/images/payment/payment_large.png" alt="Payment">
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Footer Bottom End -->
</footer>
<!-- Footer Section End -->

<!-- Scroll Top Start -->
<a href="#" class="scroll-top show" id="scroll-top">
  <i class="arrow-top ti-angle-double-up"></i>
  <i class="arrow-bottom ti-angle-double-up"></i>
</a>
<!-- Scroll Top End -->

<!-- Global Vendor, plugins JS -->

<!-- Vendor JS -->


<script src="assets/js/vendor/popper.min.js"></script>
<script src="assets/js/vendor/bootstrap.min.js"></script>
<script src="assets/js/vendor/jquery-3.6.0.min.js"></script>
<script src="assets/js/vendor/jquery-migrate-3.3.2.min.js"></script>
<script src="assets/js/vendor/modernizr-3.11.2.min.js"></script>


<!-- Plugins JS -->


<script src="assets/js/plugins/aos.min.js"></script>
<script src="assets/js/plugins/jquery.ajaxchimp.min.js"></script>
<script src="assets/js/plugins/jquery-ui.min.js"></script>
<script src="assets/js/plugins/nice-select.min.js"></script>
<script src="assets/js/plugins/swiper-bundle.min.js"></script>
<script src="assets/js/plugins/countdown.min.js"></script>
<script src="assets/js/plugins/lightgallery-all.min.js"></script>


<!-- Use the minified version files listed below for better performance and remove the files listed above -->

<!--
<script src="assets/js/vendor.min.js"></script>
<script src="assets/js/plugins.min.js"></script>
-->

<!--Main JS-->
<script src="Web_Pet/JS/JsRegex.js"></script>

</body>

</html>
