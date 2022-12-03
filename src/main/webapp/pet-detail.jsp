<%--
  Created by IntelliJ IDEA.
  User: borntoreign
  Date: 03/12/2022
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                        <a href="my-account.html" class="header-action-btn header-action-btn-wishlist">
                            <i class="icon-user icons"></i>
                        </a>
                        <!-- Header My Account Button End -->

                        <!-- Header Action Button Start -->
                        <div class="header-action-btn header-action-btn-cart d-none d-sm-flex">
                            <a class="cart-visible" href="javascript:void(0)">
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
                            <a href="cart.html">
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
                    <h2 class="breadcrumb-title">Pet detail</h2>
                    <ul>
                        <li><a href="index.html">Home</a></li>
                        <li>Pet detail</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb Area End -->

<!-- Single Product Section Start -->
<div class="section section-margin">
    <div class="container">
        <div class="row">

            <div class="col-lg-5 offset-lg-0 col-md-8 offset-md-2">

                <!-- Product Details Image Start -->
                <div class="product-details-img">

                    <!-- Single Product Image Start -->
                    <div class="single-product-img swiper-container product-gallery-top">
                        <div class="swiper-wrapper popup-gallery">
                            <img class="w-100" src="assets/images/products/large-product/1.png" alt="Product">
                        </div>
                    </div>
                    <!-- Single Product Image End -->
                </div>
                <!-- Product Details Image End -->

            </div>

            <div class="col-lg-7">

                <!-- Product Summery Start -->
                <div class="product-summery position-relative">

                    <!-- Product Head Start -->
                    <div class="product-head mb-3">
                        <h2 class="product-title">Single product title</h2>
                    </div>
                    <!-- Product Head End -->

                    <!-- Rating Start -->
                    <span class="rating justify-content-start mb-2">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-half-o"></i>
                                <i class="fa fa-star-o"></i>
                            </span>
                    <!-- Rating End -->

                    <!-- Price Box Start -->
                    <div class="price-box mb-2">
                        <span class="regular-price">$70.00</span>
                        <span class="old-price"><del>$85.00</del></span>
                    </div>
                    <!-- Price Box End -->

                    <!-- Description Start -->
                    <p class="desc-content mb-5">There are many variations of passages of Lorem Ipsum available, but the
                        majority have suffered alteration in some form, by injected humour, or randomised words which
                        don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need
                        to be sure there isn't anything embarrassing hidden in the middle of text.</p>
                    <!-- Description End -->

                    <!-- Quantity Start -->
                    <div class="quantity d-flex align-items-center mb-5">
                        <span class="me-2"><strong>Quantity: 10 </strong></span>
                    </div>
                    <!-- Quantity End -->

                    <!-- Cart Button Start -->
                    <div class="cart-btn action-btn mb-6">
                        <div class="action-cart-btn-wrapper d-flex">
                            <div class="add-to_cart">
                                <a class="btn btn-primary btn-hover-dark rounded-0" href="cart.html">Add to cart</a>
                            </div>
                        </div>
                    </div>
                    <!-- Cart Button End -->
                </div>
                <!-- Product Summery End -->

            </div>

        </div>
    </div>
</div>
<!-- Single Product Section End -->

<!-- Single Product Tab Start -->
<div class="section section-padding bg-bright">
    <div class="container">
        <div class="row">

            <!-- Single Product Tab Start -->
            <div class="col-lg-12 single-product-tab">
                <ul class="nav nav-tabs mb-n3" id="myTab" role="tablist">
                    <li class="nav-item mb-3">
                        <a class="nav-link active" id="home-tab" data-bs-toggle="tab" href="#connect-1" role="tab"
                           aria-selected="true">Description</a>
                    </li>
                    <li class="nav-item mb-3">
                        <a class="nav-link" id="profile-tab" data-bs-toggle="tab" href="#connect-2" role="tab"
                           aria-selected="false">Reviews</a>
                    </li>
                    <li class="nav-item mb-3">
                        <a class="nav-link" id="contact-tab" data-bs-toggle="tab" href="#connect-3" role="tab"
                           aria-selected="false">Shipping Policy</a>
                    </li>
                    <li class="nav-item mb-3">
                        <a class="nav-link" id="review-tab" data-bs-toggle="tab" href="#connect-4" role="tab"
                           aria-selected="false">Size Chart</a>
                    </li>
                </ul>

                <div class="tab-content mb-text" id="myTabContent">
                    <div class="tab-pane fade show active" id="connect-1" role="tabpanel" aria-labelledby="home-tab">
                        <div class="desc-content">
                            <p class="mb-3">On the other hand, we denounce with righteous indignation and dislike men
                                who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded
                                by desire, that they cannot foresee the pain and trouble that are bound to ensue; and
                                equal blame belongs to those who fail in their duty through weakness of will, which is
                                the same as saying through shrinking from toil and pain. These cases are perfectly
                                simple and easy to distinguish. In a free hour, when our power of choice is untrammelled
                                and when nothing prevents our being able to do what we like best, every pleasure is to
                                be welcomed and every pain avoided. But in certain circumstances and owing to the claims
                                of duty or the obligations of business it will frequently occur that pleasures have to
                                be repudiated and annoyances accepted. The wise man therefore always holds in these
                                matters to this principle of selection: he rejects pleasures to secure other greater
                                pleasures, or else he endures pains to avoid worse pains.</p>
                            <p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta
                                nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere
                                possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem
                                quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et
                                voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur
                                a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut
                                perferendis doloribus asperiores repellat.</p>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="connect-2" role="tabpanel" aria-labelledby="profile-tab">
                        <!-- Start Single Content -->
                        <div class="product_tab_content mt-8 p-3 border">

                            <!-- Start Single Review -->
                            <div class="single-review d-flex mb-4">

                                <!-- Review Thumb Start -->
                                <div class="review_thumb">
                                    <img alt="review images" src="assets/images/review/1.jpg">
                                </div>
                                <!-- Review Thumb End -->

                                <!-- Review Details Start -->
                                <div class="review_details">
                                    <div class="review_info mb-2">

                                        <!-- Rating Start -->
                                        <span class="rating justify-content-start mb-3">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-half-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </span>
                                        <!-- Rating End -->

                                        <!-- Review Title & Date Start -->
                                        <div class="review-title-date d-flex">
                                            <h5 class="title">Admin - </h5><span> January 19, 2021</span>
                                        </div>
                                        <!-- Review Title & Date End -->

                                    </div>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin in viverra ex,
                                        vitae vestibulum arcu. Duis sollicitudin metus sed lorem commodo, eu dapibus
                                        libero interdum. Morbi convallis viverra erat, et aliquet orci congue vel.
                                        Integer in odio enim. Pellentesque in dignissim leo. Vivamus varius ex sit amet
                                        quam tincidunt iaculis.</p>
                                </div>
                                <!-- Review Details End -->

                            </div>
                            <!-- End Single Review -->

                            <!-- Rating Wrap Start -->
                            <div class="rating_wrap">
                                <h5 class="rating-title mb-2">Add a review </h5>
                                <p class="mb-2">Your email address will not be published. Required fields are marked
                                    *</p>
                                <h6 class="rating-sub-title mb-2">Your Rating</h6>

                                <!-- Rating Start -->
                                <span class="rating justify-content-start mb-3">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-half-o"></i>
                                            <i class="fa fa-star-o"></i>
                                        </span>
                                <!-- Rating End -->

                            </div>
                            <!-- Rating Wrap End -->

                            <!-- Comments ans Replay Start -->
                            <div class="comments-area comments-reply-area">
                                <div class="row">
                                    <div class="col-lg-12 ">

                                        <!-- Comment form Start -->
                                        <form action="#" class="comment-form-area">
                                            <div class="row comment-input">

                                                <!-- Input Name Start -->
                                                <div class="col-md-6 comment-form-author mb-3">
                                                    <label>Name</label>
                                                    <input type="text" required="required" name="Name">
                                                </div>
                                                <!-- Input Name End -->

                                                <!-- Input Email Start -->
                                                <div class="col-md-6 comment-form-emai mb-3">
                                                    <label>Email</label>
                                                    <input type="text" required="required" name="email">
                                                </div>
                                                <!-- Input Email End -->

                                            </div>
                                            <!-- Comment Texarea Start -->
                                            <div class="comment-form-comment mb-3">
                                                <label>Comment</label>
                                                <textarea class="comment-notes" required="required"></textarea>
                                            </div>
                                            <!-- Comment Texarea End -->

                                            <!-- Comment Submit Button Start -->
                                            <div class="comment-form-submit">
                                                <button class="btn btn-primary btn-hover-dark border-0">Submit</button>
                                            </div>
                                            <!-- Comment Submit Button End -->

                                        </form>
                                        <!-- Comment form End -->

                                    </div>
                                </div>
                            </div>
                            <!-- Comments ans Replay End -->

                        </div>
                        <!-- End Single Content -->
                    </div>
                    <div class="tab-pane fade" id="connect-3" role="tabpanel" aria-labelledby="contact-tab">
                        <!-- Shipping Policy Start -->
                        <div class="shipping-policy mt-8 mb-n3">
                            <h4 class="title mb-4">Shipping policy for our store</h4>
                            <p class="mb-3">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy
                                nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad
                                minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip
                                ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate</p>
                            <ul class="policy-list mb-3">
                                <li>1-2 business days (Typically by end of day)</li>
                                <li><a href="#">30 days money back guaranty</a></li>
                                <li>24/7 live support</li>
                                <li>odio dignissim qui blandit praesent</li>
                                <li>luptatum zzril delenit augue duis dolore</li>
                                <li>te feugait nulla facilisi.</li>
                            </ul>
                            <p class="mb-3">Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet
                                doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam;
                                est usus legentis in iis qui facit eorum</p>
                            <p class="mb-3">claritatem. Investigationes demonstraverunt lectores legere me lius quod ii
                                legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem
                                consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum
                                claram, anteposuerit litterarum formas humanitatis per</p>
                            <p class="mb-3">seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis
                                videntur parum clari, fiant sollemnes in futurum.</p>
                        </div>
                        <!-- Shipping Policy End -->
                    </div>
                    <div class="tab-pane fade" id="connect-4" role="tabpanel" aria-labelledby="review-tab">
                        <div class="size-tab table-responsive-lg mt-8">
                            <h4 class="title-3 mb-4">Size Chart</h4>
                            <table class="table border mb-0">
                                <tbody>
                                <tr>
                                    <td class="cun-name"><span>UK</span></td>
                                    <td>18</td>
                                    <td>20</td>
                                    <td>22</td>
                                    <td>24</td>
                                    <td>26</td>
                                </tr>
                                <tr>
                                    <td class="cun-name"><span>European</span></td>
                                    <td>46</td>
                                    <td>48</td>
                                    <td>50</td>
                                    <td>52</td>
                                    <td>54</td>
                                </tr>
                                <tr>
                                    <td class="cun-name"><span>usa</span></td>
                                    <td>14</td>
                                    <td>16</td>
                                    <td>18</td>
                                    <td>20</td>
                                    <td>22</td>
                                </tr>
                                <tr>
                                    <td class="cun-name"><span>Australia</span></td>
                                    <td>28</td>
                                    <td>10</td>
                                    <td>12</td>
                                    <td>14</td>
                                    <td>16</td>
                                </tr>
                                <tr>
                                    <td class="cun-name"><span>Canada</span></td>
                                    <td>24</td>
                                    <td>18</td>
                                    <td>14</td>
                                    <td>42</td>
                                    <td>36</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </div>
            <!-- Single Product Tab End -->

        </div>
    </div>
</div>
<!-- Single Product Tab End -->


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
<script src="assets/js/main.js"></script>
</body>

</html>
