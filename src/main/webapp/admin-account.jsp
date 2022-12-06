<%--
  Created by IntelliJ IDEA.
  User: borntoreign
  Date: 03/12/2022
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                    <h2 class="breadcrumb-title">ADMIN Account</h2>
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
                        <div class="col-lg-2 col-md-4">
                            <div class="myaccount-tab-menu nav" role="tablist">
                                <a href="#pets-list" data-bs-toggle="tab"><i class="fas fa-paw"></i> Pets list</a>
                                <a href="#service" data-bs-toggle="tab"><i class="fas fa-hand-holding-heart"></i>Service</a>
                                <a href="login.html"><i class="fa fa-sign-out"></i> Logout</a>
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
                                            <p>Hello, <strong>Admin</strong></p>
                                        </div>
                                    </div>
                                </div>
                                <!-- Single Tab Content End -->

                                <!-- Single Tab Content Start -->
                                <div class="tab-pane fade" id="pets-list" role="tabpanel">
                                    <div class="myaccount-content">
                                        <h3 class="title">Manager</h3>
                                        <button type="button" class="btn btn-dark btn-hover-primary mb-3"
                                                data-bs-toggle="modal" data-bs-target="#addNewPet">Add new pet
                                        </button>
                                        <div class="myaccount-table table-responsive text-center">
                                            <table class="table table-bordered">
                                                <thead class="thead-light">
                                                <tr>
                                                    <th>Id</th>
                                                    <th>Name</th>
                                                    <th>Age</th>
                                                    <th>Price</th>
                                                    <th>Quantity</th>
                                                    <th>Species</th>
                                                    <th>Action</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach items="${pets}" var="p">
                                                    <tr>
                                                        <td><c:out value="${p.getId()}"/></td>
                                                        <td><c:out value="${p.getName()}"/></td>
                                                        <td><c:out value="${p.getAge()}"/></td>
                                                        <td><c:out value="${p.getPrice()}"/></td>
                                                        <td><c:out value="${p.getQuantity()}"/></td>
                                                        <td><c:out value="${p.getSpecies().getName()}"/></td>
                                                        <td>
                                                            <a href="#" class="me-2"><i class="fas fa-eye"></i></a>
                                                            <button id="#edit${p.getId()}" role="button" class="me-2"><i class="fas fa-edit"></i></button>
                                                            <a href="cart.html"><i class="fas fa-trash-alt"></i></a>
                                                        </td>
                                                    </tr>
                                                    <%--Modal update pet start--%>
                                                    <div class="modal fade" id="edit${p.getId()}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h1 class="modal-title fs-5" id="editPet">Edit pet form</h1>
                                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <form action="admin?action=editPet" method="post">
                                                                        <div class="mb-3">
                                                                            <label for="id${p.getId()}" class="form-label">Id</label>
                                                                            <input type="text" class="form-control" id="id${p.getId()}" name="id" disabled>
                                                                        </div>
                                                                        <div class="mb-3">
                                                                            <label for="name${p.getId()}" class="form-label">Pet name</label>
                                                                            <input type="text" class="form-control" id="name${p.getId()}" name="name">
                                                                        </div>
                                                                        <div class="mb-3">
                                                                            <label for="age${p.getId()}" class="form-label">Age</label>
                                                                            <input type="text" class="form-control" id="age${p.getId()}" name="age">
                                                                        </div>
                                                                        <div class="mb-3">
                                                                            <label class="form-label" for="price${p.getId()}">Price</label>
                                                                            <input type="text" class="form-control" id="price${p.getId()}" name="price">
                                                                        </div>
                                                                        <div class="mb-3">
                                                                            <label class="form-label" for="description${p.getId()}">Description</label>
                                                                            <input type="text" class="form-control" id="description${p.getId()}" name="description">
                                                                        </div>
                                                                        <div class="mb-3">
                                                                            <label class="form-label" for="quantity${p.getId()}">Quantity</label>
                                                                            <input type="text" class="form-control" id="quantity${p.getId()}" name="quantity">
                                                                        </div>
                                                                        <div class="mb-3">
                                                                            <label class="form-label" for="img${p.getId()}">Image</label>
                                                                            <input type="text" class="form-control" id="img${p.getId()}" name="img">
                                                                        </div>
                                                                        <select class="form-select" aria-label="Default select example" name="species">
                                                                            <option value="${s.getId()}">${s.getName()}</option>
                                                                            <c:forEach items="${species}" var="s">
                                                                                <option value="${s.getId()}">${s.getName()}</option>
                                                                            </c:forEach>
                                                                        </select>

                                                                        <div class="modal-footer">
                                                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                                            <button type="submit" class="btn btn-primary">Save changes</button>
                                                                        </div>
                                                                    </form>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <%--Modal update pet end--%>
                                                </c:forEach>

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <!-- Single Tab Content End -->

                                <!-- Single Tab Content Start -->
                                <div class="tab-pane fade" id="service" role="tabpanel">
                                    <div class="myaccount-content">
                                        <h3 class="title">Manager</h3>
                                        <div class="myaccount-table table-responsive text-center">
                                            <table class="table table-bordered">
                                                <thead class="thead-light">
                                                <tr>
                                                    <th>Id</th>
                                                    <th>Name</th>
                                                    <th>Time box</th>
                                                    <th>Price</th>
                                                    <th>Category</th>
                                                    <th>Action</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach items="${services}" var="s">
                                                    <tr>
                                                        <td>${s.getId()}</td>
                                                        <td>${s.getName()}</td>
                                                        <td>${s.getTime_box()}</td>
                                                        <td>${s.getPrice()}</td>
                                                        <td>${s.getServiceCategory().getName()}</td>
                                                        <td>
                                                            <a href="cart.html" class="me-2"><i class="fas fa-eye"></i></a>
                                                            <a href="cart.html" class="me-2"><i class="fas fa-edit"></i></a>
                                                            <a href="cart.html"><i class="fas fa-trash-alt"></i></a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
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

<%--Modal create new pet start--%>
<div class="modal fade" id="addNewPet" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Add new pet form</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                                <form action="admin?action=addNewPet" method="post">
                                    <div class="mb-3">
                                        <label for="name" class="form-label">Pet name</label>
                                        <input type="text" class="form-control" id="name" name="name">
                                    </div>
                                    <div class="mb-3">
                                        <label for="age" class="form-label">Age</label>
                                        <input type="text" class="form-control" id="age" name="age">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label" for="price">Price</label>
                                        <input type="text" class="form-control" id="price" name="price">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label" for="description">Description</label>
                                        <input type="text" class="form-control" id="description" name="description">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label" for="quantity">Quantity</label>
                                            <input type="text" class="form-control" id="quantity" name="quantity">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label" for="img">Image</label>
                                            <input type="text" class="form-control" id="img" name="img">
                                    </div>
                                    <select class="form-select" aria-label="Default select example" name="species">
                                        <option selected>Select specie</option>
                                        <c:forEach items="${species}" var="s">
                                            <option value="${s.getId()}">${s.getName()}</option>
                                        </c:forEach>
                                    </select>

                                    <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    <button type="submit" class="btn btn-primary">Save changes</button>
                                </div>
                                </form>
            </div>

        </div>
    </div>
</div>
<%--Modal create new pet end--%>

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
<script src="assets/js/main.js"></script>
</body>

</html>
