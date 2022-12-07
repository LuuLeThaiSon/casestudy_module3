<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
                        <a href="index.jsp"><img src="assets/images/logo/logo.png" alt="Site Logo"/></a>
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

<!-- Hero/Intro Slider Start -->
<div class="section">
    <div class="hero-slider swiper-container">
        <div class="swiper-wrapper">

            <div class="hero-slide-item swiper-slide">
                <div class="hero-slide-bg">
                    <img src="assets/images/slider/slider1-1.png" alt="Slider Image"/>
                </div>
                <div class="container">
                    <div class="hero-slide-content text-start">
                        <h5 class="sub-title">We keep pets for pleasure.</h5>
                        <h2 class="title m-0">Vitamins For all Pets</h2>
                        <p class="ms-0">We know your concerns when you are looking for a chewing treat for your dog.</p>
                        <a href="shop.html" class="btn btn-dark btn-hover-primary">Shop Now</a>
                    </div>
                </div>
            </div>

            <div class="hero-slide-item swiper-slide">
                <div class="hero-slide-bg">
                    <img src="assets/images/slider/slider1-2.png" alt="Slider Image"/>
                </div>
                <div class="container">
                    <div class="hero-slide-content text-center text-md-end">
                        <h5 class="sub-title">We keep pets for pleasure.</h5>
                        <h2 class="title m-0">Vitamins For all Pets</h2>
                        <p>We know your concerns when you are looking for a chewing treat for your dog.</p>
                        <a href="shop.html" class="btn btn-dark btn-hover-primary">Shop Now</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Swiper Pagination Start -->
        <div class="swiper-pagination d-lg-none"></div>
        <!-- Swiper Pagination End -->

        <!-- Swiper Navigation Start -->
        <div class="home-slider-prev swiper-button-prev main-slider-nav d-lg-flex d-none"><i
                class="icon-arrow-left"></i></div>
        <div class="home-slider-next swiper-button-next main-slider-nav d-lg-flex d-none"><i
                class="icon-arrow-right"></i></div>
        <!-- Swiper Navigation End -->
    </div>
</div>
<!-- Hero/Intro Slider End -->

<div class="section section-padding">
    <div class="container">
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 mb-n6">

            <div class="col mb-6" data-aos="fade-up" data-aos-duration="1000">
                <!-- Single CTA Wrapper Start -->
                <div class="single-cta-wrapper">

                    <!-- CTA Icon Start -->
                    <div class="cta-icon">
                        <i class="ti-truck"></i>
                    </div>
                    <!-- CTA Icon End -->

                    <!-- CTA Content Start -->
                    <div class="cta-content">
                        <h4 class="title">Free Shipping</h4>
                        <p>Free shipping on all order</p>
                    </div>
                    <!-- CTA Content End -->

                </div>
                <!-- Single CTA Wrapper End -->
            </div>

            <div class="col mb-6" data-aos="fade-up" data-aos-duration="1100">
                <!-- Single CTA Wrapper Start -->
                <div class="single-cta-wrapper">

                    <!-- CTA Icon Start -->
                    <div class="cta-icon">
                        <i class="ti-headphone-alt"></i>
                    </div>
                    <!-- CTA Icon End -->

                    <!-- CTA Content Start -->
                    <div class="cta-content">
                        <h4 class="title">Online Support</h4>
                        <p>Online live support 24/7</p>
                    </div>
                    <!-- CTA Content End -->

                </div>
                <!-- Single CTA Wrapper End -->
            </div>

            <div class="col mb-6" data-aos="fade-up" data-aos-duration="1200">
                <!-- Single CTA Wrapper Start -->
                <div class="single-cta-wrapper">

                    <!-- CTA Icon Start -->
                    <div class="cta-icon">
                        <i class="ti-bar-chart"></i>
                    </div>
                    <!-- CTA Icon End -->

                    <!-- CTA Content Start -->
                    <div class="cta-content">
                        <h4 class="title">Money Return</h4>
                        <p>Back guarantee under 5 days</p>
                    </div>
                    <!-- CTA Content End -->

                </div>
                <!-- Single CTA Wrapper End -->
            </div>

        </div>
    </div>
</div>

<!-- Product Section Start -->
<div class="section position-relative">
    <div class="container">

        <!-- Section Title & Tab Start -->
        <div class="row" data-aos="fade-up" data-aos-duration="1000">
            <!-- Tab Start -->
            <div class="col-12">
                <ul class="product-tab-nav nav justify-content-center mb-n3 pb-8 title-border-bottom">
                    <li class="nav-item mb-3"><a class="nav-link active" data-bs-toggle="tab" href="#tab-product-all">Bestseller</a>
                    </li>
                </ul>
            </div>
            <!-- Tab End -->
        </div>
        <!-- Section Title & Tab End -->

        <!-- Products Tab Start -->
        <div class="row" data-aos="fade-up" data-aos-duration="1100">
            <div class="col-12">
                <div class="tab-content">

                    <div class="tab-pane fade show active" id="tab-product-all">
                        <div class="row mb-n8">
                            <!-- Product Start -->
                            <div class="col-12 col-sm-6 col-lg-3 product-wrapper mb-8">
                                <div class="product">
                                    <!-- Thumb Start  -->
                                    <div class="thumb">
                                        <a href="single-product.html" class="image">
                                            <img class="fit-image" src="./assets/images/products/medium-product/1.png"
                                                 alt="Product"/>
                                        </a>
                                        <div class="action-wrapper">
                                            <a href="cart.html" class="action cart" title="Cart"><i
                                                    class="ti-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                    <!-- Thumb End  -->

                                    <!-- Content Start  -->
                                    <div class="content">
                                        <h5 class="title"><a href="single-product.html">An Animal Album</a></h5>
                                        <span class="price">
                                            <span class="new">$80.50</span>
                                            <span class="old">$85.80</span>
                                            </span>
                                    </div>
                                    <!-- Content End  -->
                                </div>
                            </div>
                            <!-- Product End -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Products Tab End -->
    </div>
</div>
<!-- Product Section End -->

<!-- Banner Section Start -->
<div class="section section-margin">

    <div class="container">
        <!-- Banners Start -->
        <div class="row mb-n6">

            <!-- Banner Start -->
            <div class="col-md-6 col-12 mb-6" data-aos="fade-up" data-aos-duration="1000">
                <img class="fit-image" src="assets/images/banner/1.png" alt="Banner Image"/>
            </div>
            <!-- Banner End -->

            <!-- Banner Start -->
            <div class="col-md-6 col-12 mb-6" data-aos="fade-up" data-aos-duration="1400">
                <img class="fit-image" src="assets/images/banner/2.png" alt="Banner Image"/>
            </div>
            <!-- Banner End -->

        </div>
        <!-- Banners End -->
    </div>

</div>
<!-- Banner Section End -->


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
                        <a href="#">
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
