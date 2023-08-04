<%-- 
    Document   : BlogDetails
    Created on : Jul 5, 2023, 10:36:41 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="x-windows-949"%>
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/toastify-js/src/toastify.min.css" />
        <script src="https://cdn.jsdelivr.net/npm/toastify-js"></script>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="Shome - Shoes eCommerce Website Template"/>
        <meta name="keywords" content="footwear, shoes, modern, shop, store, ecommerce, responsive, e-commerce"/>
        <meta name="author" content="codecarnival"/>

        <title>Blog Details :: Shome - Shoes eCommerce Website Template</title>

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

        <!--[if lt IE 9]>
        <script src="//oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="//oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <style>


            .loading-spinner {
                border: 16px solid #f3f3f3;
                border-radius: 50%;
                border-top: 16px solid #3498db;
                width: 100px;
                height: 100px;
                -webkit-animation: spin 2s linear infinite; /* Safari */
                animation: spin 2s linear infinite;
            }

            /* Safari */
            @-webkit-keyframes spin {
                0% {
                    -webkit-transform: rotate(0deg);
                }
                100% {
                    -webkit-transform: rotate(360deg);
                }
            }

            @keyframes spin {
                0% {
                    transform: rotate(0deg);
                }
                100% {
                    transform: rotate(360deg);
                }
            }
        </style>
    </head>

    <body>

        <!--wrapper start-->
        <div class="wrapper">

            <!--== Start Header Wrapper ==-->
            <header class="main-header-wrapper position-relative">
                <div class="header-top">
                    <div class="container pt--0 pb--0">
                        <div class="row">
                            <div class="col-12">
                                <div class="header-top-align">
                                    <div class="header-top-align-start">

                                    </div>
                                    <div class="header-top-align-end">
                                        <div class="header-info-items">
                                            <div class="info-items">

                                                <c:if test="${sessionScope.username != null}">
                                                    <ul>
                                                        <li class="account"><i class="fa fa-user"></i><a href="account-detail">Xin ch?o ${sessionScope.username.username}</a></li>
                                                        <li class="account"><i class="fa fa-user"></i><a href="logout">LogOut</a></li>
                                                    </ul>
                                                </c:if>

                                                <c:if test="${sessionScope.username==null}">
                                                    <ul>
                                                        <li class="account"><i class="fa fa-user"></i><a href="Login.jsp">??ng Nh?p</a></li>
                                                    </ul>

                                                </c:if>


                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="header-middle">
                    <div class="container pt--0 pb--0">
                        <div class="row align-items-center">
                            <div class="col-12">
                                <div class="header-middle-align">
                                    <div class="header-middle-align-start">
                                        <div class="header-logo-area">
                                            <a href="index.html">
                                                <img class="logo-main" src="https://png.pngtree.com/png-clipart/20190619/original/pngtree-sneakers-png-image_3989154.jpg" width="30%" height="30%"/>
                                                <img class="logo-light" src="https://png.pngtree.com/png-clipart/20190619/original/pngtree-sneakers-png-image_3989154.jpg" width="30%" height="30%"/>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="header-middle-align-center">
                                        <div class="header-search-area">
                                            <form class="header-searchbox" action="search">
                                                <input type="search" class="form-control" name="txt" placeholder="T?m Ki?m">
                                                <button class="btn-submit" type="submit"><i class="pe-7s-search"></i></button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="header-middle-align-end">
                                        <div class="header-action-area">
                                            <div class="shopping-search">
                                                <button class="shopping-search-btn" type="button" data-bs-toggle="offcanvas" data-bs-target="#AsideOffcanvasSearch" aria-controls="AsideOffcanvasSearch"><i class="pe-7s-search icon"></i></button>
                                            </div>
                                            <div class="shopping-wishlist">
                                                <a class="shopping-wishlist-btn" href="Wishlist.jsp">
                                                    <i class="pe-7s-like icon"></i>
                                                </a>
                                            </div>
                                            <div class="shopping-cart">



                                                <button class="shopping-cart-btn" type="button" href="ShopCart.jsp">
                                                    <a class="shopping-cart-btn" href="ShopCart.jsp">


                                                        <i class="pe-7s-shopbag icon"></i>
                                                        <sup class="shop-count">${cart_list.size()}</sup>
                                                    </a>
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

                                            <li><a href="home"><span>Trang Ch?</span></a>

                                            </li>

                                            <li ><a href="shop"><span>S?n Ph?m</span></a>

                                            </li>
                                            <li><a href="blog"><span>Blog</span></a>
                                            </li>
                                            <li><a href="feedback"><span>Li?n H?</span></a></li>
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
                <!--== Start Page Header Area Wrapper ==-->
                <div class="page-header-area" data-bg-img="assets/img/photos/bg3.webp">
                    <div class="container pt--0 pb--0">
                        <div class="row">
                            <div class="col-12">
                                <div class="page-header-content">
                                    <h2 class="title" data-aos="fade-down" data-aos-duration="1000">Blog Details</h2>
                                    <nav class="breadcrumb-area" data-aos="fade-down" data-aos-duration="1200">
                                        <ul class="breadcrumb">
                                            <li><a href="home">Home</a></li>
                                            <li class="breadcrumb-sep">//</li>
                                            <li>Blog Details</li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--== End Page Header Area Wrapper ==-->

                <!--== Start Blog Area Wrapper ==-->
                <section class="blog-details-area">
                    <div class="container pb-lg-85">
                        <div class="row justify-content-center">
                            <div class="col-lg-11" data-aos="fade-up">
                                <div class="blog-details-content-wrap">
                                    <div class="blog-details-item">
                                        <div class="blog-details-thumb">
                                            <img src="${blog.image}" width="750" height="459" alt="Image-HasTech">
                                        </div>
                                        <div class="blog-meta-post">
                                            <ul>
                                                <li class="post-date"><i class="fa fa-calendar"></i>${blog.date_posted}</li>
                                                <li class="author-info"><i class="fa fa-user"></i>${blog.authorName}</li>
                                            </ul>
                                        </div>
                                        <h3 class="main-title">${blog.title}</h3>

                                        <div class="details-wrapper details-wrapper-style2">
                                            ${blog.content}
                                        </div>


                                    </div>
                                    <div class="comment-form-area">
                                        <div id="commentList">
                                            <div class="comment-form-content">
                                                <form id="commentForm">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="form-group mb--0">
                                                                <textarea id="commentContent" class="form-control" placeholder="Comment" style="height: 150px"></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <c:if test="${username != null}">
                                                                
                                                            <div class="form-group mb--0">
                                                                <input type="hidden" id="blogId" value="${blog_id}"> 
                                                                <button type="submit" class="btn-theme">Send a Comment</button>
                                                            </div>
                                                            </c:if>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div></div>
                                    </div>
                                    <!--== Start Comment View Item ==-->
                                    <div class="comment-view-area">
                                        <h4 class="title-main">Comments</h4>
                                        <c:forEach items="${blogComments}" var="c">

                                            <div class="comment-view-content">
                                                <div class="single-comment">

                                                    <div class="author-info">

                                                        <h4 class="title">
                                                            <b>       <a style="font-size: larger">${c.authorName}</a></b>
                                                            <span> - </span>
                                                            <a class="comment-date">${c.date_posted}</a>
                                                        </h4>
                                                        <p>${c.content}</p>

                                                    </div>
                                                </div>
                                                <hr>

                                            </div>
                                        </c:forEach>
                                        <!-- Pagination -->
                                        <div class="col-12">
                                            <div class="pagination-items">
                                                <ul class="pagination d-inline-flex">
                                                    <c:if test="${currentPage > 1}">
                                                        <li class="page-item">
                                                            <a class="page-link" href="?blog_id=${blog_id}&amp;page=${currentPage - 1}&amp;pageSize=${pageSize}">&laquo; </a>
                                                        </li>
                                                    </c:if>

                                                    <c:forEach begin="1" end="${totalPages}" var="pageNumber">
                                                        <c:choose>
                                                            <c:when test="${pageNumber == currentPage}">
                                                                <li class="page-item active">
                                                                    <span class="page-link">${pageNumber}</span>
                                                                </li>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <li class="page-item">
                                                                    <a class="page-link" href="?blog_id=${blog_id}&amp;page=${pageNumber}&amp;pageSize=${pageSize}">${pageNumber}</a>
                                                                </li>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </c:forEach>

                                                    <c:if test="${currentPage < totalPages}">
                                                        <li class="page-item">
                                                            <a class="page-link" href="?blog_id=${blog_id}&amp;page=${currentPage + 1}&amp;pageSize=${pageSize}"> &raquo;</a>
                                                        </li>
                                                    </c:if>
                                                </ul>
                                            </div>
                                        </div>


                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </section>
                <!--== End Blog Area Wrapper ==-->
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
                                            <a href="home">
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
                                <p class="copyright">? 2021 Shome. Made with <i class="fa fa-heart"></i> by <a target="_blank" href="https://themeforest.net/user/codecarnival/portfolio">Codecarnival.</a></p>
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
                            <a href="#/" class="remove">��</a>
                            <a href="single-product.html">
                                <img src="assets/img/shop/product-mini/1.webp" width="90" height="110" alt="Image-HasTech">
                                <span class="product-title">Leather Mens Slipper</span>
                            </a>
                            <span class="product-price">1 �� ?69.99</span>
                        </li>
                        <li class="product-list-item">
                            <a href="#/" class="remove">��</a>
                            <a href="single-product.html">
                                <img src="assets/img/shop/product-mini/2.webp" width="90" height="110" alt="Image-HasTech">
                                <span class="product-title">Quickiin Mens shoes</span>
                            </a>
                            <span class="product-price">1 �� ?20.00</span>
                        </li>
                    </ul>
                    <p class="cart-total"><span>Subtotal:</span><span class="amount">?89.99</span></p>
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
                                    <input id="search-input" type="search" class="form-control" placeholder="Search entire store��">
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
                            <li><a href="home">Home</a>
                                <ul class="sub-menu">
                                    <li><a href="home">Home One</a></li>
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

        <script>
            $(document).ready(function () {
                // Add event listener to the comment form submission
                $('#commentForm').submit(function (event) {
                    event.preventDefault(); // Prevent default form submission behavior

                    // Retrieve the comment content and blog ID from the form inputs
                    var commentContent = $('#commentContent').val();
                    var blogId = $('#blogId').val();

                    // Disable the "Add Comment" button
                    $('#addCommentButton').prop('disabled', true);

                    // Clear the textarea value
                    $('#commentContent').val('');

                    // Hide the textarea
                    $('#commentContent').hide();

                    // Create an object to send as the AJAX request data
                    var commentData = {
                        content: commentContent,
                        blogId: blogId
                    };

                    // Display the loading spinner
                    var $loadingSpinner = $('<div class="loading-spinner"></div>');
                    $('#commentList').prepend($loadingSpinner);

                    // Make an AJAX request to the servlet endpoint
                    $.ajax({
                        url: 'add-comment', // Update with the actual servlet endpoint
                        type: 'POST',
                        data: commentData,
                        success: function (response) {
                            // Remove the loading spinner after 2 seconds
                            setTimeout(function () {
                                $loadingSpinner.remove();

                                // Enable the "Add Comment" button
                                $('#addCommentButton').prop('disabled', false);

                                // Show the textarea
                                $('#commentContent').show();

                                // Reload the page
                                window.location.reload();
                            }, 2000);
                        },
                        error: function (xhr, status, error) {
                            // Remove the loading spinner after 2 seconds
                            setTimeout(function () {
                                $loadingSpinner.remove();

                                // Enable the "Add Comment" button
                                $('#addCommentButton').prop('disabled', false);

                                // Show the textarea
                                $('#commentContent').show();

                                // Handle the AJAX error, such as displaying an error message
                                console.error('Error adding comment: ' + error);

                                // Show an error toast message
                                Toastify({
                                    text: "Can not be empty",
                                    duration: 2000, // Duration in milliseconds
                                    gravity: "top", // Position: top, topLeft, topCenter, topRight, center, centerLeft, centerRight, bottom, bottomLeft, bottomCenter, bottomRight
                                    position: "left", // Position: left, right, center
                                    close: false, // Show a close button
                                    style: {
                                        background: "red"
                                    }
                                }).showToast();
                            }, 2000);
                        }
                    });
                });
            });


        </script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    </body>

</html>
