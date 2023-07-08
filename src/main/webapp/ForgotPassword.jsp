
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="zxx">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Shome - Shoes eCommerce Website Template"/>
    <meta name="keywords" content="footwear, shoes, modern, shop, store, ecommerce, responsive, e-commerce"/>
    <meta name="author" content="codecarnival"/>



    <!--== Favicon ==-->
    <link rel="shortcut icon" href="assets/img/favicon.ico" type="image/x-icon" />

    <!--== Google Fonts ==-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,600;0,700;0,800;1,400;1,500&display=swap" rel="stylesheet">

    <!--== Bootstrap CSS ==-->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <!--== Font Awesome Min Icon CSS ==-->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <!--== Pe7 Stroke Icon CSS ==-->
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
    <!--== Swiper CSS ==-->
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <!--== Fancybox Min CSS ==-->
    <link href="assets/css/fancybox.min.css" rel="stylesheet" />
    <!--== Aos Min CSS ==-->
    <link href="assets/css/aos.min.css" rel="stylesheet" />

    <!--== Main Style CSS ==-->
    <link href="assets/css/style.css" rel="stylesheet" />


</head>

<%
    String err="";
    if(request.getAttribute("err")!=null)
        err=(String)request.getAttribute("err");

    String err2="";
    if(request.getAttribute("err2")!=null)
        err2=(String)request.getAttribute("err2");



    String err1="";
    if(request.getAttribute("err1")!=null)
        err1=(String)request.getAttribute("password");

%>

<body>


<div class="wrapper">

    <!--== Start Header Wrapper ==-->
    <header class="main-header-wrapper position-relative">

        <div class="header-middle">
            <div class="container pt--0 pb--0">
                <div class="row align-items-center">
                    <div class="col-12">
                        <div class="header-middle-align">
                            <div class="header-middle-align-start">
                                <div class="header-logo-area">
                                    <a href="index.html">
                                        <img class="logo-main" src="assets/img/logo.webp" width="131" height="34" alt="Logo" />
                                        <img class="logo-light" src="assets/img/logo-light.webp" width="131" height="34" alt="Logo" />
                                    </a>
                                </div>
                            </div>
                            <div class="header-middle-align-center">
                                <div class="header-search-area">
                                    <form class="header-searchbox">
                                        <input type="search" class="form-control" placeholder="Search">
                                        <button class="btn-submit" type="submit"><i class="pe-7s-search"></i></button>
                                    </form>
                                </div>
                            </div>
                            <div class="header-middle-align-end">
                                <div class="header-action-area">
                                    <div class="shopping-search">
                                        <button class="shopping-search-btn" type="button" data-bs-toggle="offcanvas" data-bs-target="#AsideOffcanvasSearch" aria-controls="AsideOffcanvasSearch"><i class="pe-7s-search icon"></i></button>
                                    </div>

                                    <div class="shopping-cart">
                                        <button class="shopping-cart-btn" type="button" data-bs-toggle="offcanvas" data-bs-target="#AsideOffcanvasCart" aria-controls="offcanvasRightLabel">
                                            <i class="pe-7s-shopbag icon"></i>
                                            <sup class="shop-count">02</sup>
                                        </button>
                                    </div>
                                    <button class="btn-menu" type="button" data-bs-toggle="offcanvas" data-bs-target="#AsideOffcanvasMenu" aria-controls="AsideOffcanvasMenu">
                                        <i class="pe-7s-menu"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-area header-default">
            <div class="container">
                <div class="row no-gutter align-items-center position-relative">
                    <div class="col-12">
                        <div class="header-align">
                            <div class="header-navigation-area position-relative">
                                <ul class="main-menu nav">
                                    <li><a href="Home.jsp"><span>Home</span></a>

                                    </li>

                                    <li class="has-submenu position-static"><a href="#/"><span>Shop</span></a>

                                    </li>





                                    <li><a href="contact.html"><span>Contact</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!--== End Header Wrapper ==-->

    <main class="main-content">

        <section class="account-area">
            <div class="hero">

                <div class="login_form">

                    <h1>ChangePassword</h1>

                    <form class="input_box" action="forgot" method="post">

                        <input type="text" class="field" name="username" placeholder="Name">
                        <input type="email" class="field" name="email" placeholder="Email">

                        <button type="submit" class="submit_btn" name="change" >Change</button>


                        <div class="tag">
                            <span>New User?</span>
                            <a href="Login.jsp">Log in</a>
                        </div>
                        <span style="display: block; color: red; font-size: 14px; margin-left: 10px;"><%=err2%></span>
                        <span style="display: block; color: red; font-size: 14px; margin-left: 10px;"><%=err1%></span>
                        <span style="display: block; color: red; font-size: 14px; margin-left: 10px;"><%=err%></span>

                    </form>

                </div>

            </div>

        </section>
        <!--== End My Account Area Wrapper ==-->
    </main>

    <!--== Start Footer Area Wrapper ==-->
    <footer class="footer-area">
        <!--== Start Footer Main ==-->
        <div class="footer-main">
            <div class="container pt--0 pb--0">
                <div class="row">
                    <div class="col-md-6 col-lg-3">
                        <!--== Start widget Item ==-->
                        <div class="widget-item">
                            <div class="about-widget-wrap">
                                <div class="widget-logo-area">
                                    <a href="index.html">
                                        <img class="logo-main" src="assets/img/logo-light.webp" width="131" height="34" alt="Logo" />
                                    </a>
                                </div>
                                <p class="desc">Lorem ipsum dolor sit amet consl adipisi elit, sed do eiusmod templ incididunt ut labore</p>
                                <div class="social-icons">
                                    <a href="https://www.facebook.com/" target="_blank" rel="noopener"><i class="fa fa-facebook"></i></a>
                                    <a href="https://dribbble.com/" target="_blank" rel="noopener"><i class="fa fa-dribbble"></i></a>
                                    <a href="https://www.pinterest.com/" target="_blank" rel="noopener"><i class="fa fa-pinterest-p"></i></a>
                                    <a href="https://twitter.com/" target="_blank" rel="noopener"><i class="fa fa-twitter"></i></a>
                                </div>
                            </div>
                        </div>
                        <!--== End widget Item ==-->
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <!--== Start widget Item ==-->
                        <div class="widget-item widget-services-item">
                            <h4 class="widget-title">Services</h4>
                            <h4 class="widget-collapsed-title collapsed" data-bs-toggle="collapse" data-bs-target="#widgetId-1">Services</h4>
                            <div id="widgetId-1" class="collapse widget-collapse-body">
                                <div class="collapse-body">
                                    <div class="widget-menu-wrap">
                                        <ul class="nav-menu">
                                            <li><a href="contact.html">Home monitoring</a></li>
                                            <li><a href="contact.html">Air Filters</a></li>
                                            <li><a href="contact.html">Professional installation</a></li>
                                            <li><a href="contact.html">Smart Buildings</a></li>
                                            <li><a href="contact.html">For contractors</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--== End widget Item ==-->
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <!--== Start widget Item ==-->
                        <div class="widget-item widget-account-item">
                            <h4 class="widget-title">My Account</h4>
                            <h4 class="widget-collapsed-title collapsed" data-bs-toggle="collapse" data-bs-target="#widgetId-2">My Account</h4>
                            <div id="widgetId-2" class="collapse widget-collapse-body">
                                <div class="collapse-body">
                                    <div class="widget-menu-wrap">
                                        <ul class="nav-menu">
                                            <li><a href="account-login.html">My Account</a></li>
                                            <li><a href="contact.html">Contact</a></li>
                                            <li><a href="shop-cart.html">Shopping cart</a></li>
                                            <li><a href="shop.html">Shop</a></li>
                                            <li><a href="account-login.html">Services Login</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--== End widget Item ==-->
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <!--== Start widget Item ==-->
                        <div class="widget-item">
                            <h4 class="widget-title">Contact Info</h4>
                            <h4 class="widget-collapsed-title collapsed" data-bs-toggle="collapse" data-bs-target="#widgetId-3">Contact Info</h4>
                            <div id="widgetId-3" class="collapse widget-collapse-body">
                                <div class="collapse-body">
                                    <div class="widget-contact-wrap">
                                        <ul>
                                            <li><span>Address:</span> Your address goes here.</li>
                                            <li><span>Phone//fax:</span> <a href="tel://0123456789">0123456789</a></li>
                                            <li><span>Email:</span> <a href="mailto://demo@example.com">demo@example.com</a></li>
                                            <li><a target="_blank" href="https://www.hasthemes.com">www.example.com</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--== End widget Item ==-->
                    </div>
                </div>
            </div>
        </div>
        <!--== End Footer Main ==-->

        <!--== Start Footer Bottom ==-->
        <div class="footer-bottom">
            <div class="container pt--0 pb--0">
                <div class="row">
                    <div class="col-md-7 col-lg-6">
                        <p class="copyright">© 2021 Shome. Made with <i class="fa fa-heart"></i> by <a target="_blank" href="https://themeforest.net/user/codecarnival/portfolio">Codecarnival.</a></p>
                    </div>
                    <div class="col-md-5 col-lg-6">
                        <div class="payment">
                            <a href="account-login.html"><img src="assets/img/photos/payment-card.webp" width="192" height="21" alt="Payment Logo"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--== End Footer Bottom ==-->
    </footer>
    <!--== End Footer Area Wrapper ==-->

    <!--== Scroll Top Button ==-->
    <div id="scroll-to-top" class="scroll-to-top"><span class="fa fa-angle-up"></span></div>

    <!--== Start Quick View Menu ==-->
    <aside class="product-quick-view-modal">
        <div class="product-quick-view-inner">
            <div class="product-quick-view-content">
                <button type="button" class="btn-close">
                    <span class="close-icon"><i class="fa fa-close"></i></span>
                </button>
                <div class="row align-items-center">
                    <div class="col-lg-6 col-md-6 col-12">
                        <div class="thumb">
                            <img src="assets/img/shop/product-single/1.webp" width="570" height="541" alt="Alan-Shop">
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-12">
                        <div class="content">
                            <h4 class="title">Space X Bag For Office</h4>
                            <div class="prices">
                                <del class="price-old">$85.00</del>
                                <span class="price">$70.00</span>
                            </div>
                            <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia,</p>
                            <div class="quick-view-select">
                                <div class="quick-view-select-item">
                                    <label for="forSize" class="form-label">Size:</label>
                                    <select class="form-select" id="forSize" required>
                                        <option selected value="">s</option>
                                        <option>m</option>
                                        <option>l</option>
                                        <option>xl</option>
                                    </select>
                                </div>
                                <div class="quick-view-select-item">
                                    <label for="forColor" class="form-label">Color:</label>
                                    <select class="form-select" id="forColor" required>
                                        <option selected value="">red</option>
                                        <option>green</option>
                                        <option>blue</option>
                                        <option>yellow</option>
                                        <option>white</option>
                                    </select>
                                </div>
                            </div>
                            <div class="action-top">
                                <div class="pro-qty">
                                    <input type="text" id="quantity20" title="Quantity" value="1" />
                                </div>
                                <button class="btn btn-black">Add to cart</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="canvas-overlay"></div>
    </aside>
    <!--== End Quick View Menu ==-->

    <!--== Start Aside Cart Menu ==-->
    <div class="aside-cart-wrapper offcanvas offcanvas-end" tabindex="-1" id="AsideOffcanvasCart" aria-labelledby="offcanvasRightLabel">
        <div class="offcanvas-header">
            <h1 id="offcanvasRightLabel"></h1>
            <button class="btn-aside-cart-close" data-bs-dismiss="offcanvas" aria-label="Close">Shopping Cart <i class="fa fa-chevron-right"></i></button>
        </div>
        <div class="offcanvas-body">
            <ul class="aside-cart-product-list">
                <li class="product-list-item">
                    <a href="#/" class="remove">×</a>
                    <a href="single-product.html">
                        <img src="assets/img/shop/product-mini/1.webp" width="90" height="110" alt="Image-HasTech">
                        <span class="product-title">Leather Mens Slipper</span>
                    </a>
                    <span class="product-price">1 × £69.99</span>
                </li>
                <li class="product-list-item">
                    <a href="#/" class="remove">×</a>
                    <a href="single-product.html">
                        <img src="assets/img/shop/product-mini/2.webp" width="90" height="110" alt="Image-HasTech">
                        <span class="product-title">Quickiin Mens shoes</span>
                    </a>
                    <span class="product-price">1 × £20.00</span>
                </li>
            </ul>
            <p class="cart-total"><span>Subtotal:</span><span class="amount">£89.99</span></p>
            <a class="btn-theme" data-margin-bottom="10" href="shop-cart.html">View cart</a>
            <a class="btn-theme" href="shop-checkout.html">Checkout</a>
            <a class="d-block text-end lh-1" href="shop-checkout.html"><img src="assets/img/photos/paypal.webp" width="133" height="26" alt="Has-image"></a>
        </div>
    </div>
    <!--== End Aside Cart Menu ==-->

    <!--== Start Aside Search Menu ==-->
    <aside class="aside-search-box-wrapper offcanvas offcanvas-top" tabindex="-1" id="AsideOffcanvasSearch" aria-labelledby="offcanvasTopLabel">
        <div class="offcanvas-header">
            <h5 class="d-none" id="offcanvasTopLabel">Aside Search</h5>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"><i class="pe-7s-close"></i></button>
        </div>
        <div class="offcanvas-body">
            <div class="container pt--0 pb--0">
                <div class="search-box-form-wrap">
                    <div class="search-note">
                        <p>Start typing and press Enter to search</p>
                    </div>
                    <form action="#" method="post">
                        <div class="search-form position-relative">
                            <label for="search-input" class="visually-hidden">Search</label>
                            <input id="search-input" type="search" class="form-control" placeholder="Search entire store?">
                            <button class="search-button"><i class="fa fa-search"></i></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </aside>
    <!--== End Aside Search Menu ==-->

    <!--== Start Side Menu ==-->
    <div class="off-canvas-wrapper offcanvas offcanvas-start" tabindex="-1" id="AsideOffcanvasMenu" aria-labelledby="offcanvasExampleLabel">
        <div class="offcanvas-header">
            <h1 id="offcanvasExampleLabel"></h1>
            <button class="btn-menu-close" data-bs-dismiss="offcanvas" aria-label="Close">menu <i class="fa fa-chevron-left"></i></button>
        </div>
        <div class="offcanvas-body">
            <div class="info-items">
                <ul>
                    <li class="number"><a href="tel://0123456789"><i class="fa fa-phone"></i>+00 123 456 789</a></li>
                    <li class="email"><a href="mailto://demo@example.com"><i class="fa fa-envelope"></i>demo@example.com</a></li>
                    <li class="account"><a href="account-login.html"><i class="fa fa-user"></i>Account</a></li>
                </ul>
            </div>
            <!-- Mobile Menu Start -->
            <div class="mobile-menu-items">
                <ul class="nav-menu">
                    <li><a href="#">Home</a>
                        <ul class="sub-menu">
                            <li><a href="index.html">Home One</a></li>
                            <li><a href="index-two.html">Home Two</a></li>
                        </ul>
                    </li>
                    <li><a href="about-us.html">About</a></li>
                    <li><a href="#">Pages</a>
                        <ul class="sub-menu">
                            <li><a href="account.html">Account</a></li>
                            <li><a href="account-login.html">Login</a></li>
                            <li><a href="account-register.html">Register</a></li>
                            <li><a href="page-not-found.html">Page Not Found</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Shop</a>
                        <ul class="sub-menu">
                            <li><a href="#">Shop Layout</a>
                                <ul class="sub-menu">
                                    <li><a href="shop-three-columns.html">Shop 3 Column</a></li>
                                    <li><a href="shop-four-columns.html">Shop 4 Column</a></li>
                                    <li><a href="shop.html">Shop Left Sidebar</a></li>
                                    <li><a href="shop-right-sidebar.html">Shop Right Sidebar</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Single Product</a>
                                <ul class="sub-menu">
                                    <li><a href="single-normal-product.html">Single Product Normal</a></li>
                                    <li><a href="single-product.html">Single Product Variable</a></li>
                                    <li><a href="single-group-product.html">Single Product Group</a></li>
                                    <li><a href="single-affiliate-product.html">Single Product Affiliate</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Others Pages</a>
                                <ul class="sub-menu">
                                    <li><a href="shop-cart.html">Shopping Cart</a></li>
                                    <li><a href="shop-checkout.html">Checkout</a></li>
                                    <li><a href="shop-wishlist.html">Wishlist</a></li>
                                    <li><a href="shop-compare.html">Compare</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#">Blog</a>
                        <ul class="sub-menu">
                            <li><a href="#">Blog Layout</a>
                                <ul class="sub-menu">
                                    <li><a href="blog.html">Blog Grid</a></li>
                                    <li><a href="blog-left-sidebar.html">Blog Left Sidebar</a></li>
                                    <li><a href="blog-right-sidebar.html">Blog Right Sidebar</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Single Blog</a>
                                <ul class="sub-menu">
                                    <li><a href="blog-details-no-sidebar.html">Blog Details</a></li>
                                    <li><a href="blog-details-left-sidebar.html">Blog Details Left Sidebar</a></li>
                                    <li><a href="blog-details.html">Blog Details Right Sidebar</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li><a href="contact.html">Contact</a></li>
                </ul>
            </div>
            <!-- Mobile Menu End -->
        </div>
    </div>
    <!--== End Side Menu ==-->
</div>

<!--=======================Javascript============================-->

<!--=== jQuery Modernizr Min Js ===-->
<script src="assets/js/modernizr.js"></script>
<!--=== jQuery Min Js ===-->
<script src="assets/js/jquery-main.js"></script>
<!--=== jQuery Migration Min Js ===-->
<script src="assets/js/jquery-migrate.js"></script>
<!--=== jQuery Popper Min Js ===-->
<script src="assets/js/popper.min.js"></script>
<!--=== jQuery Bootstrap Min Js ===-->
<script src="assets/js/bootstrap.min.js"></script>
<!--=== jQuery Ui Min Js ===-->
<script src="assets/js/jquery-ui.min.js"></script>
<!--=== jQuery Swiper Min Js ===-->
<script src="assets/js/swiper.min.js"></script>
<!--=== jQuery Fancybox Min Js ===-->
<script src="assets/js/fancybox.min.js"></script>
<!--=== jQuery Waypoint Js ===-->
<script src="assets/js/waypoint.js"></script>
<!--=== jQuery Parallax Min Js ===-->
<script src="assets/js/parallax.min.js"></script>
<!--=== jQuery Aos Min Js ===-->
<script src="assets/js/aos.min.js"></script>

<!--=== jQuery Custom Js ===-->
<script src="assets/js/custom.js"></script>

</body>

<style>
    *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: sans-serif;
    }

    .hero{
        width: 100%;
        height: 100vh;

        background-size: cover;
        background-position: center;
    }

    .hero .login_form{
        margin-top: 100px;
        width: 400px;
        height: 590px;

        background-position: center;
        background-size: cover;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50% , -50%);
        padding: 20px;
        border-radius: 10px;
        box-shadow: 3px 3px 20px rgba(0,0,0,0.2);
    }

    .hero .login_form h1{
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 40px;
        margin-bottom: 45px;
    }

    .hero .login_form h1::after{
        content: '';
        width: 20%;
        height: 3px;
        background: #facc22;
        display: block;
        position: absolute;
        margin-top: 60px;
        box-shadow: 0 2px 10px 0 rgba(0,0,0,0.5);
    }

    .hero .login_form .input_box{
        width: 330px;
        margin: 0 auto;
    }

    .hero .login_form .input_box .field{
        width: 100%;
        border-bottom: 1px solid #919191;
        border-top: 0;
        border-left: 0;
        border-right: 0;
        margin-bottom: 20px;
        padding: 10px 0;
        outline: none;
        background: none;
        font-size: 15px;
    }

    .hero .login_form .input_box .check_box{
        margin: 25px 0;
        accent-color: #facc22;
        cursor: pointer;
    }

    .hero .login_form .input_box p{
        position: relative;
        left: 20px;
        bottom: 40px;
        width: 50%;
        color: #434343;
    }

    .hero .login_form .input_box .submit_btn{
        outline: none;
        border: none;
        background: #facc22;
        padding: 10px 20px;
        width: 80%;
        display: flex;
        align-items: center;
        justify-content: center;
        margin: 30px auto 0 auto;
        font-size: 18px;
        cursor: pointer;
    }

    .hero .login_form .social_icon{
        display: flex;
        align-items: center;
        justify-content: center;
        margin: 35px 0;
    }

    .hero .login_form .social_icon i{
        width: 30px;
        height: 30px;
        border-radius: 50%;
        margin: 0 5px;
        line-height: 30px;
        font-size: 15px;
        text-align: center;
        background: #facc22;
        color: #434343;
        box-shadow: 0 0 10px rgba(0,0,0,0.3);
    }

    .hero .login_form .social_icon i:hover{
        cursor: pointer;
        transition: ease-in-out 0.3s;
        transform: translateY(-5px);
    }

    .hero .login_form .tag{
        margin: 25px auto 0 auto;
        width: 150px;
    }

    .hero .login_form .tag span{
        font-size: 15px;
    }

    .hero .login_form .tag a{
        font-size: 15px;
        margin-left: 5px;
        color: #facc22;
        text-decoration: none;
    }
</style>

</html>