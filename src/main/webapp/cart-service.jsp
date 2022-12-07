<%@ page import="java.util.List" %>
<%@ page import="com.example.pet_hospital.model.PetService" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: borntoreign
  Date: 03/12/2022
  Time: 10:02
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
            <a href="index.jsp"><img src="assets/images/logo/logo.png" alt="Site Logo" /></a>
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
                <a href="ControllerLinhServlet">Sevice</a>
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
                <a class="action-search-open" href="javascript:void(0)"><i class="icon-magnifier icons"></i></a>
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
              <a class="cart-visible" href="javascript:void(0)">
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
                        <a href="single-product.html"><img src="assets/images/header/header-cart/1.png" alt="Cart Product"></a>
                      </div>
                      <div class="cart-product-content">
                        <h3 class="title"><a href="single-product.html">Basic Dog Trainning</a></h3>
                        <div class="product-quty-price">
                          <span class="cart-quantity">Qty: <strong class="text-primary"> 1 </strong></span>
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
                        <a href="single-product.html"><img src="assets/images/header/header-cart/2.png" alt="Cart Product"></a>
                      </div>
                      <div class="cart-product-content">
                        <h3 class="title"><a href="single-product.html">Wait, You Need This</a></h3>
                        <div class="product-quty-price">
                          <span class="cart-quantity">Qty: <strong class="text-primary"> 1 </strong></span>
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
                  <a href="cart.html" class="btn btn-outline-light btn-hover-primary w-100">View cart</a>
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
            <a href="javascript:void(0)" class="header-action-btn header-action-btn-menu d-lg-none d-md-flex">
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
          <h2 class="breadcrumb-title">Wishlist</h2>
          <ul>
            <li><a href="index.html">Home</a></li>
            <li>Wishlist</li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Breadcrumb Area End -->

<!-- Shopping Cart Section Start -->
<div class="section section-margin">
  <div class="container">

    <div class="row">
      <div class="col-12">

        <!-- Cart Table Start -->
        <div class="cart-table table-responsive">
          <table class="table table-bordered">

            <!-- Table Head Start -->
            <thead>
            <tr>
              <th class="pro-thumbnail">Pet Name</th>
              <th class="pro-title">Product</th>
              <th class="pro-price">Price</th>
              <th class="pro-quantity">Time Box</th>
              <th class="pro-subtotal">Category</th>
              <th class="pro-remove">Remove</th>
            </tr>
            </thead>
            <!-- Table Head End -->

            <!-- Table Body Start -->
            <tbody>
            <c:forEach items="${service}" var="s">
            <tr>
              <td class="pro-title">${s.getUserPet().getName()}</td>
              <td class="pro-title"><a href="#">${s.getService().getName()}</a></td>
              <td class="pro-price"><span>$${s.getService().getPrice()}</span></td>
              <td class="pro-quantity">${s.getService().getTime_box()} HOUR</td>
              <td class="pro-subtotal"><span>${s.getService().getServiceCategory().getName()}</span></td>
              <td class="pro-remove"><button onclick="accept('ServletCart?action=delete&userPetId=${s.getUserPet().getId()}&serviceId=${s.getService().getId()}')"><i class="ti-trash"></i></button></td>
            </tr>
            </c:forEach>
            </tbody>
            <!-- Table Body End -->
          </table>
        </div>

        <!-- Cart Table End -->

        <!-- Cart Button Start -->
        <div class="cart-button-section mb-n4">

          <!-- Cart Button left Side Start -->
          <div class="cart-btn-lef-side mb-4">
            <a href="#" class="btn btn btn-gray-deep btn-hover-primary">Continue Shopping</a>
            <a href="#" class="btn btn btn-gray-deep btn-hover-primary">Update Shopping Cart</a>
          </div>
          <!-- Cart Button left Side End -->

          <!-- Cart Button Right Side Start -->
          <div class="cart-btn-right-right mb-4">
            <a href="#" class="btn btn btn-gray-deep btn-hover-primary">Clear Shopping Cart</a>
          </div>
          <!-- Cart Button Right Side End -->

        </div>
        <!-- Cart Button End -->

      </div>
    </div>

    <div class="row mt-10">
      <div class="col-lg-6 me-0 ms-auto">

        <!-- Cart Calculation Area Start -->
        <div class="cart-calculator-wrapper">

          <!-- Cart Calculate Items Start -->
          <div class="cart-calculate-items">

            <!-- Cart Calculate Items Title Start -->
            <h3 class="title">Cart Totals</h3>
            <!-- Cart Calculate Items Title End -->
<%
  List<PetService> a = (List<PetService>) request.getAttribute("service");
  Double total = 0d;
  for (PetService petService: a){
    total += petService.getService().getPrice();
  }
%>
            <!-- Responsive Table Start -->
            <div class="table-responsive">
              <table class="table">
                <tr>
                  <td>Sub Total</td>
                  <td>$<%=total%></td>
                </tr>
                <tr>
                  <td>Shipping</td>
                  <td>$70</td>
                </tr>
                <tr class="total">
                  <td>Total</td>
                  <td class="total-amount">$<%=total+70%></td>
                </tr>
              </table>
            </div>
            <!-- Responsive Table End -->

          </div>
          <!-- Cart Calculate Items End -->

          <!-- Cart Checkout Button Start -->
          <a href="ServletCart?action=buy" class="btn btn btn-gray-deep btn-hover-primary mt-6">ACCEPT BUY ALL</a>
          <!-- Cart Checkout Button End -->

        </div>
        <!-- Cart Calculation Area End -->

      </div>
    </div>

  </div>
</div>
<!-- Shopping Cart Section End -->

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
<script>
  function accept(path){
    if(confirm("OK to Delete")){
      window.location = path;
    }
  }
</script>
</body>

</html>
