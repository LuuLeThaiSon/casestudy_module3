 <%--
  Created by IntelliJ IDEA.
  User: borntoreign
  Date: 03/12/2022
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Amber - Pet Care Bootstrap 5 Template</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
          integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
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

                        <!-- Header Action Button Start -->
                        <div class="header-action-btn header-action-btn-cart d-none d-sm-flex">
                            <a class="cart-visible" href="ServletCart">
                                <i class="icon-handbag icons"></i>
                            </a>

                            <!-- Header Cart Content Start -->
                            <div class="header-cart-content">

                                <!-- Cart Product Wrapper Start  -->
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
                                <!-- Cart Product Wrapper -->

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

<!-- Breadcrumb Area Start -->
<div class="section breadcrumb-area bg-bright">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">
                <div class="breadcrumb-wrapper">
                    <h2 class="breadcrumb-title">My Account</h2>
                    <ul>
                        <li><a href="index.html">Home</a></li>
                        <li>My Account</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb Area End -->

<!-- My Account Section Start -->
<div class="section section-margin">
    <div class="container">

        <div class="row">
            <div class="col-lg-12">

                <!-- My Account Page Start -->
                <div class="myaccount-page-wrapper">
                    <div class="row">

                        <!-- My Account Tab Menu Start -->
                        <div class="col-lg-3 col-md-4">
                            <div class="myaccount-tab-menu nav" role="tablist">
                                <a href="#orders" data-bs-toggle="tab"><i class="fa fa-cart-arrow-down"></i> Orders</a>
                                <a href="#service" data-bs-toggle="tab"><i class="fas fa-hand-holding-heart"></i> Service</a>
                                <a href="#address-edit" data-bs-toggle="tab"><i class="fa fa-map-marker"></i>
                                    address</a>
                                <a href="#account-info" data-bs-toggle="tab"><i class="fa fa-user"></i> Account Details</a>
                                <a href="ServletUser?action=logout"><i class="fa fa-sign-out"></i> Logout</a>
                            </div>
                        </div>
                        <!-- My Account Tab Menu End -->

                        <!-- My Account Tab Content Start -->
                        <div class="col-lg-9 col-md-8">
                            <div class="tab-content" id="myaccountContent">

                                <!-- Single Tab Content Start -->
                                <div class="tab-pane fade show active" id="dashboad" role="tabpanel">
                                    <div class="myaccount-content">
                                        <h3 class="title">Dashboard</h3>
                                        <div class="welcome">
                                            <p>Hello, <strong>Alex Aya</strong> (If Not <strong>Aya !</strong><a
                                                    href="login.html" class="logout"> Logout</a>)</p>
                                        </div>
                                        <p class="mb-0">Thanks for visiting us</p>
                                    </div>
                                </div>
                                <!-- Single Tab Content End -->

                                <!-- Bảng lịch sử order -->
                                <div class="tab-pane fade" id="orders" role="tabpanel">
                                    <div class="myaccount-content">
                                        <h3 class="title">Orders history</h3>
                                        <div class="myaccount-table table-responsive text-center">
                                            <table class="table table-bordered">
                                                <thead class="thead-light">
                                                <tr>
                                                    <th>Id</th>
                                                    <th>Date</th>
                                                    <th>Status</th>
                                                    <th>Total</th>
                                                    <th>Action</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Aug 22, 2018</td>
                                                    <td>Pending</td>
                                                    <td>$3000</td>
                                                    <td><a href="cart.html"
                                                           class="btn btn btn-dark btn-hover-primary btn-sm rounded-0">View</a>
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <!-- Single Tab Content End -->

                                <!-- Bảng lịch sử dịch vụ-->
                                <div class="tab-pane fade" id="service" role="tabpanel">
                                    <div class="myaccount-content">
                                        <h3 class="title">Service history</h3>
                                        <div class="myaccount-table table-responsive text-center">
                                            <table class="table table-bordered">
                                                <thead class="thead-light">
                                                <tr>
                                                    <th>Id</th>
                                                    <th>Date</th>
                                                    <th>Service</th>
                                                    <th>Status</th>
                                                    <th>Total</th>
                                                    <th>Action</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Aug 22, 2018</td>
                                                    <td>Pending</td>
                                                    <td>$3000</td>
                                                    <td>$3000</td>
                                                    <td><a href="cart.html"
                                                           class="btn btn btn-dark btn-hover-primary btn-sm rounded-0">View</a>
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <!-- Single Tab Content End -->

                                <!-- Single Tab Content Start -->
                                <div class="tab-pane fade" id="address-edit" role="tabpanel">
                                    <div class="myaccount-content">
                                        <h3 class="title">Billing Address</h3>
                                        <address>
                                            <p><strong>Alex Aya</strong></p>
                                            <p>1234 Market ##, Suite 900 <br>Lorem Ipsum, ## 12345</p>
                                            <p>Mobile: (123) 123-456789</p>
                                        </address>
                                        <a href="#" class="btn btn btn-dark btn-hover-primary rounded-0"><i
                                                class="fa fa-edit me-2"></i>Edit Address</a>
                                    </div>
                                </div>
                                <!-- Single Tab Content End -->

                                <!-- Single Tab Content Start -->
                                <div class="tab-pane fade" id="account-info" role="tabpanel">
                                    <div class="myaccount-content">
                                        <h3 class="title">Account Details</h3>
                                        <div class="account-details-form">
                                            <form action="#">
                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <div class="single-input-item mb-3">
                                                            <label for="first-name" class="required mb-2">First
                                                                Name</label>
                                                            <input type="text" id="first-name"
                                                                   placeholder="First Name"/>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <div class="single-input-item mb-3">
                                                            <label for="last-name" class="required mb-2">Last
                                                                Name</label>
                                                            <input type="text" id="last-name" placeholder="Last Name"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="single-input-item mb-3">
                                                    <label for="display-name" class="required mb-2">Display Name</label>
                                                    <input type="text" id="display-name" placeholder="Display Name"/>
                                                </div>
                                                <div class="single-input-item mb-3">
                                                    <label for="email" class="required mb-1">Email Addres</label>
                                                    <input type="email" id="email" placeholder="Email Address"/>
                                                </div>
                                                <fieldset>
                                                    <legend>Password change</legend>
                                                    <div class="single-input-item mb-3">
                                                        <label for="current-pwd" class="required mb-2">Current
                                                            Password</label>
                                                        <input type="password" id="current-pwd"
                                                               placeholder="Current Password"/>
                                                    </div>
                                                    <div class="row mb-n3">
                                                        <div class="col-lg-6">
                                                            <div class="single-input-item mb-3">
                                                                <label for="new-pwd" class="required mb-2">New
                                                                    Password</label>
                                                                <input type="password" id="new-pwd"
                                                                       placeholder="New Password"/>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <div class="single-input-item mb-3">
                                                                <label for="confirm-pwd" class="required mb-2">Confirm
                                                                    Password</label>
                                                                <input type="password" id="confirm-pwd"
                                                                       placeholder="Confirm Password"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                                <div class="single-input-item single-item-button mt-6">
                                                    <button class="btn btn btn-primary btn-hover-dark rounded-0">Save
                                                        Changes
                                                    </button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div> <!-- Single Tab Content End -->

                            </div>
                        </div>
                        <!-- My Account Tab Content End -->

                    </div>
                </div>
                <!-- My Account Page End -->

            </div>
        </div>

    </div>
</div>
<!-- My Account Section End -->

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
