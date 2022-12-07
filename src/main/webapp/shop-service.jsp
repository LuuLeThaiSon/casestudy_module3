<%--
  Created by IntelliJ IDEA.
  User: borntoreign
  Date: 03/12/2022
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Amber - Pet Care Bootstrap 5 Template</title>

    <!-- Favicons -->
    <link rel="shortcut icon" href="assets/images/favicon.ico">

    <!-- Vendor CSS (Icon Font) -->


    <link rel="stylesheet" href="assets/css/vendor/fontawesome.min.css"/>
    <link rel="stylesheet" href="assets/css/vendor/simple-line-icons.min.css"/>
    <link rel="stylesheet" href="assets/css/vendor/themify-icons-min.css"/>


    <!-- Plugins CSS (All Plugins Files) -->


    <link rel="stylesheet" href="assets/css/plugins/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="assets/css/plugins/animate.min.css"/>
    <link rel="stylesheet" href="assets/css/plugins/lightgallery.min.css"/>
    <link rel="stylesheet" href="assets/css/plugins/aos.min.css"/>
    <link rel="stylesheet" href="assets/css/plugins/nice-select.min.css"/>


    <!-- Main Style CSS -->


    <link rel="stylesheet" href="assets/css/style.css"/>


    <!-- Use the minified version files listed below for better performance and remove the files listed above -->

  <link rel="stylesheet" href="assets/bootstrap-5.2.1-dist/css/bootstrap.min.css">
  <script src="assets/bootstrap-5.2.1-dist/js/bootstrap.min.js"></script>

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
                        <a href="index.html"><img src="assets/images/logo/logo.png" alt="Site Logo"/></a>
                    </div>
                </div>
                <!-- Header Logo End -->

                <!-- Header Menu Start -->
                <div class="col-lg-6 d-none d-lg-block">
                    <div class="main-menu">
                        <ul>
                            <li class="has-children">
                                <a href="index.jsp">Home</a>
                            </li>
                            <li class="has-children position-static">
                                <a href="son">Shop</a>
                            </li>
                            <li class="has-children">
                                <a href="ControllerLinhServlet">Service</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- Header Menu End -->

                <!-- Header Action Start -->
                <div class="col-lg-3 col-md-8 col-6">
                    <div class="header-actions">

                        <!-- Header Action Search Button Start -->
                        <div class="header-action-btn header-action-btn-search d-none d-md-flex">
                            <div class="action-execute">
                                <a class="action-search-open" href="javascript:void(0)"><i
                                        class="icon-magnifier icons"></i></a>
                                <a class="action-search-close" href="javascript:void(0)"><i class="ti-close"></i></a>
                            </div>
                            <!-- Search Form and Button Start -->
                            <form class="header-search-form" action="#">
                                <input type="text" class="header-search-input" placeholder="Search Our Store">
                                <button class="header-search-button"><i class="icon-magnifier icons"></i></button>
                            </form>
                            <!-- Search Form and Button End -->

                        </div>
                        <!-- Header Action Search Button End -->

                        <!-- Header My Account Button Start -->
                        <a href="ServletUser?action=userDetail" class="header-action-btn header-action-btn-wishlist">
                            <i class="icon-user icons"></i>
                        </a>
                        <!-- Header My Account Button End -->

                        <!-- Header Action Button Start -->
                        <div class="header-action-btn header-action-btn-cart d-none d-sm-flex">
                            <a class="cart-visible" href="ServletCart">
                                <i class="icon-handbag icons"></i>
                                <span class="header-action-num">3</span>
                            </a>

                            <!-- Header Cart Content Start -->
                            <div class="header-cart-content">

                                <!-- Cart Procut Wrapper Start  -->
                                <div class="cart-product-wrapper">

                                    <!-- Cart Product/Price Start -->
                                    <div class="cart-product-inner mb-4 pb-4 border-bottom">

                                        <!-- Single Cart Product Start -->
                                        <div class="single-cart-product">
                                            <div class="cart-product-thumb">
                                                <a href="single-product.html"><img
                                                        src="assets/images/header/header-cart/1.png" alt="Cart Product"></a>
                                            </div>
                                            <div class="cart-product-content">
                                                <h3 class="title"><a href="single-product.html">Basic Dog Trainning</a>
                                                </h3>
                                                <div class="product-quty-price">
                                                    <span class="cart-quantity">Qty: <strong
                                                            class="text-primary"> 1 </strong></span>
                                                    <span class="price">
															<span class="new">$70.00</span>
                                                            </span>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Cart Product End -->

                                        <!-- Product Remove Start -->
                                        <div class="cart-product-remove">
                                            <a href="#/"><i class="icon-close"></i></a>
                                        </div>
                                        <!-- Product Remove End -->

                                    </div>
                                    <!-- Cart Product/Price End -->

                                    <!-- Cart Product/Price Start -->
                                    <div class="cart-product-inner mb-4 pb-4 border-bottom">

                                        <!-- Single Cart Product Start -->
                                        <div class="single-cart-product">
                                            <div class="cart-product-thumb">
                                                <a href="single-product.html"><img
                                                        src="assets/images/header/header-cart/2.png" alt="Cart Product"></a>
                                            </div>
                                            <div class="cart-product-content">
                                                <h3 class="title"><a href="single-product.html">Wait, You Need This</a>
                                                </h3>
                                                <div class="product-quty-price">
                                                    <span class="cart-quantity">Qty: <strong
                                                            class="text-primary"> 1 </strong></span>
                                                    <span class="price">
															<span class="new">$80.00</span>
                                                            </span>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Cart Product End -->

                                        <!-- Product Remove Start -->
                                        <div class="cart-product-remove">
                                            <a href="#/"><i class="icon-close"></i></a>
                                        </div>
                                        <!-- Product Remove End -->

                                    </div>
                                    <!-- Cart Product/Price End -->

                                </div>
                                <!-- Cart Procut Wrapper -->

                                <!-- Cart Product Total Start -->
                                <div class="cart-product-total mb-4 pb-4 border-bottom">
                                    <span class="value">Total</span>
                                    <span class="price">200$</span>
                                </div>
                                <!-- Cart Product Total End -->

                                <!-- Cart Product Button Start -->
                                <div class="cart-product-btn mt-4">
                                    <a href="cart.html" class="btn btn-outline-light btn-hover-primary w-100">View
                                        cart</a>
                                    <a href="checkout.html" class="btn btn-outline-light btn-hover-primary w-100 mt-4">Checkout</a>
                                </div>
                                <!-- Cart Product Button End -->

                            </div>
                            <!-- Header Cart Content End -->

                        </div>
                        <div class="header-action-btn header-action-btn-cart d-flex d-sm-none">
                            <a href="ServletCart">
                                <i class="icon-handbag icons"></i>
                                <span class="header-action-num">3</span>
                            </a>
                        </div>
                        <!-- Header Action Button End -->

                        <!-- Mobile Menu Hambarger Action Button Start -->
                        <a href="javascript:void(0)"
                           class="header-action-btn header-action-btn-menu d-lg-none d-md-flex">
                            <i class="icon-menu"></i>
                        </a>
                        <!-- Mobile Menu Hambarger Action Button End -->

                    </div>
                </div>
                <!-- Header Action End -->

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
                    <h2 class="breadcrumb-title">Shop Sidebar</h2>
                    <ul>
                        <li><a href="index.html">Home</a></li>
                        <li>Shop Sidebar</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb Area End -->

<!-- Shop Section Start -->
<div class="section section-margin">
    <div class="container">
        <div class="row flex-row-reverse">
            <div class="col-lg-9 col-12">

                <!--shop toolbar start-->
                <div class="shop_toolbar_wrapper flex-column flex-md-row p-2 mb-8 border">

                    <!-- Shop Top Bar Left start -->
                    <div class="shop-top-bar-left">
                        <div class="shop_toolbar_btn">
                            <button data-role="grid_3" type="button" class="active btn-grid-3" title="Grid"><i
                                    class="ti-layout-grid4-alt"></i></button>
                        </div>
                    </div>
                    <!-- Shop Top Bar Left end -->

                    <!-- Shopt Top Bar Right Start -->
                    <div class="shop-top-bar-right">

                        <h4 class="title me-2">Short By: </h4>

                        <div class="shop-short-by">
                            <select class="nice-select" aria-label=".form-select-sm example">
                                <option selected>Short by Default</option>
                                <option value="1">Short by Popularity</option>
                                <option value="2">Short by Rated</option>
                                <option value="3">Short by Latest</option>
                                <option value="3">Short by Price</option>
                                <option value="3">Short by Price</option>
                            </select>
                        </div>
                    </div>
                    <!-- Shopt Top Bar Right End -->

                </div>
                <!--shop toolbar end-->

                <!-- Shop Wrapper Start -->
                <div class="row shop_wrapper grid_3">

          <!-- Single Product Start -->
<c:forEach items="${servicecategory}" var = "servicecategory" >
  <div class="col-lg-4 col-md-4 col-sm-6 product">
    <div class="product-inner">
      <div class="thumb">
        <a href="single-product.html" class="image">
          <img class="fit-image" src="assets/images/products/medium-product/1.png"
               alt="Product"/>
        </a>
        <div class="action-wrapper">
          <button href="ServletSendPet?idService=" data-bs-toggle="modal" data-bs-target="#staticBackdrop${servicecategory.getId()}" class="action cart" title="Cart"><i
                  class="ti-shopping-cart"></i></button>
        </div>
        <div class="content">
          <h5 class="title"><a href="single-product.html"><c:out value="${servicecategory.getName()}"/>
</a></h5>
          <span class="price">
            <span class="new"><c:out value="${servicecategory.getPrice()}"/></span>
            <span class="new"><c:out value="${servicecategory.getServiceCategory().getName()}"/></span>
          </span>
                                    </div>

      </div>
    </div>
  </div>
  <!-- Single Product End -->
  <%---------------------------------------------------------%>
  <!-- Modal -->
  <div class="modal fade" id="staticBackdrop${servicecategory.getId()}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="staticBackdropLabel">Pet Info Use Sevice</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <!-- Register Section Start -->
          <div class="section section-margin">
            <div class="container">
              <div class="row">
                <div class="col-lg-7 col-md-8 m-auto">
                  <div class="login-wrapper">

                    <!-- Register Title & Content Start -->
                    <div class="section-content text-center mb-6">
                      <h2 class="title mb-2">Pet Info</h2>
                    </div>
                    <!-- Register Title & Content End -->

                    <!-- Form Action Start -->
                    <form action="ServletSendPet?action=add&idService=${servicecategory.getId()}" method="post">


                      <!-- Input Email Start -->
                      <div class="single-input-item mb-2">
                        <input type="text" placeholder="Pet Name" name="petName" minlength="1" maxlength="99">
                      </div>
                      <!-- Input Email End -->

                      <!-- Input Password Start -->
                      <div class="single-input-item mb-2">
                        <input type="number" name="petAge" placeholder="Pet Age" minlength="1" maxlength="99">
                      </div>
                      <!-- Input Password End -->

                      <!-- Input rePassword Start -->
                      <div class="single-input-item mb-2">
                        <input type="text" name="hobbit" placeholder="Hobbit" minlength="1" maxlength="99">
                      </div>


                      <!-- Input Address Start -->
                      <div style="margin-bottom: 15px">
                        Species -
                        <select name="species">
                          <c:forEach items="${species}" var="s">
                            <option value="${s.getId()}">${s.getName()}</option>
                          </c:forEach>
                        </select>
                      </div>

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
        </div>
      </div>
    </div>
  </div>
  <%---------------------------------------------------------%>
</c:forEach>

                </div>
                <!-- Shop Wrapper End -->

                <!--shop toolbar start-->
                <div class="shop_toolbar_wrapper justify-content-center mt-10">

                    <!-- Shopt Top Bar Right Start -->
                    <div class="shop-top-bar-right">
                        <nav>
                            <ul class="pagination">
                                <li class="page-item"><a class="page-link active" href="#/">1</a></li>
                                <li class="page-item"><a class="page-link" href="#/">2</a></li>
                                <li class="page-item"><a class="page-link" href="#/">3</a></li>
                                <li class="page-item">
                                    <a class="page-link rounded-0" href="#/" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <!-- Shopt Top Bar Right End -->

                </div>
                <!--shop toolbar end-->

            </div>
            <div class="col-lg-3 col-12">
                <!-- Sidebar Widget Start -->
                <aside class="sidebar_widget mt-10 mt-lg-0">
                    <div class="widget_inner">
                        <div class="widget-list mb-10">
                            <form action="ControllerLinhServlet?action=search" method="post">
                                <h3 class="widget-title mb-6">Search</h3>
                                <div class="search-box">
                                    <input name="search" type="text" class="form-control" placeholder="Search Our Store"
                                           aria-label="Search Our Store">
                                    <input class="search-icon" type="submit" value="Find">
<%--                                        <i class="icon-magnifier"></i>--%>
                                    </input>
                                </div>
                            </form>

                        </div>
                        <div class="widget-list mb-10">
                            <h3 class="widget-title mb-6">Categories</h3>
                            <div class="sidebar-body">
                                <ul class="sidebar-list">
                                    <c:forEach items="${listservicecategory}" var="p">
                                        <li><a href="ControllerLinhServlet?action=detailservicecategory&id=${p.getId()}">
                                            <c:out value="${p.getName()}"/>
                                        </a></li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </div>
                </aside>
                <!-- Sidebar Widget End -->
            </div>
        </div>
    </div>
</div>
<!-- Shop Section End -->

<!-- Footer Section Start -->
<footer class="section footer-section">
    <!-- Footer Top Start -->
    <div class="footer-top bg-bright section-padding">
        <div class="container">
            <div class="row mb-n8">
                <div class="col-12 col-sm-6 col-lg-3 mb-8" data-aos="fade-up" data-aos-duration="1000">
                    <div class="single-footer-widget">
                        <h1 class="widget-title">About Us</h1>
                        <p class="desc-content">Lorem ipsum dolor sit amet, co adipisi elit, sed eiusmod tempor
                            incididunt ut labore et dolore</p>
                        <!-- Soclial Link Start -->
                        <div class="widget-social justify-content-start mb-n2">
                            <a title="Twitter" href="#/"><i class="icon-social-twitter"></i></a>
                            <a title="Instagram" href="https://www.instagram.com/lee.daegil.165//"><i
                                    class="icon-social-instagram"></i></a>
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
                            <p class="desc-content mb-4">Subscribe to our newsletter and get 10% off your first
                                purchase..</p>
                            <!-- Newsletter Form Start -->
                            <div class="newsletter-form-wrap pt-1">
                                <form id="mc-form" class="mc-form">
                                    <input type="email" id="mc-email" class="form-control email-box"
                                           placeholder="demo@example.com" name="EMAIL">
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
                        <p class="mb-0">© 2021 <strong>Amber </strong> Made with <i class="fa fa-heart text-danger"></i>
                            by <a href="https://hasthemes.com/">HasThemes.</a></p>
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
