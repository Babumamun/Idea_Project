<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2021/5/29
  Time: 10:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<% response.addHeader("Refresh","30"); %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<spring:eval expression="@propertyConfigurer.getProperty('cdn.url')" var="cdnUrl" />
<jsp:useBean id="search" class="com.nsu.bean.Product" scope="request"></jsp:useBean>
<html>
<!--<div class ="header">-->
<head>
    ﻿<meta name="viewport" content="width-device-width, initial-scale=1.0">
    <title>Ecommerce website</title>
    <%--golbal bootstrap--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <%--<link rel="stylesheet" href="style.css">--%>
   <link  rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" type="text/css" href="${cdnUrl}/css/semantic.min.css" />
    <link rel="stylesheet" type="text/css" href="${cdnUrl}/css/font-awesome.min.css" />

    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap" rel="stylesheet">
    <!--added a cdn link by searching font awesome4 cdn and getting this link from https://www.bootstrapcdn.com/fontawesome/ this url*/-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="<c:url value="/static/css/style.css" />" rel="stylesheet">
    <link href="<c:url value="/static/js/bootstrap.min.js" />" rel="stylesheet">
    <link href="<c:url value="/static/js/jquery-3.5.1.min.js" />" rel="stylesheet">

</head>
<body>
<div id="header">
    <div class="container">
        <div class="row">
        <div class="col-md-6 social-icon-top">
            <a href="${pageContext.request.contextPath}/https://www.facebook.com/" target="_blank"> <i class="fa fa-facebook"></i></a>
            <a href="#" target="_blank"> <i class="fa fa-linkedin"></i></a>
            <a href="${pageContext.request.contextPath}/https://www.twitter.com/" target="_blank"> <i class="fa fa-twitter"></i></a>
            <a href="#" target="_blank"> <i class="fa fa-snapchat"></i></a>
            <a href="#" target="_blank"> <i class="fa fa-instagram"> </i></a>
        </div>
        <div class="col-md-6">
        <ul class="top-right-nav">

            <li><a href="${pageContext.request.contextPath}/account">Login</a> </li>
            <li> <a href="${pageContext.request.contextPath}/prompt">Language</a> </li>
            <li><a href="${pageContext.request.contextPath}/cart">Cart</a>
                <i class="fa fa-shopping-cart"> 0 items</i> </li>

        </ul>

        </div>
    </div>
    </div>
</div>
<%--nabvar--%>
<div id="section-navbar" >
<div class="container">

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/homepage">ASKGroup</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/homepage">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/products">Products</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/product-details">Shop</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/prompt">UpComing</a>
                    </li>
                </ul>
                <form class="d-flex" method="post" modelAttribute="search"
                      action="${pageContext.request.contextPath}/searchpage">
                    <input class="form-control me-2" name="name" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" value="search" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>

</div>

</div>
<%--carouselExampleIndicators--%>
<div id="slider" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="<c:url value="/static/images/00.jpeg"></c:url>" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="<c:url value="/static/images/8.jpeg"></c:url>" class="d-block w-100"  alt="...">
        </div>
        <div class="carousel-item">
            <img src="<c:url value="/static/images/222.jpeg"></c:url>"  class="d-block w-100" alt="...">
        </div>
    </div>

</div>

﻿<!------------------------------ featured categories------------------------------>
<div class="categories">
    <div class="small-container">
        <div class="row">
            <div class="col-3">
                <img src='<c:url value="/static/images/category-1.jpg"></c:url>' />
            </div>
            <div class="col-3">
                <img src='<c:url value="/static/images/category-3.jpg"></c:url>' />
            </div>
            <div class="col-3">
                <img src='<c:url value="/static/images/category-2.jpg"></c:url>' />

            </div>
        </div>
    </div>
</div>

<!------------------------------ featured Products------------------------------>
<div class="small-container">
    <h2 class="title" >Featured Products</h2>
    <div class="row">
        <div class="col-4">
            <a href="products-details.html"><img src="<c:url value="/static/images/product-11.jpg"></c:url>"></a>
            <a href="products-details.html"><h4>Downshifter Exclusive Shoes</h4></a>
            <div class="rating">
                <!--(before this added awesome4 cdn font link to the head)added a cdn link by searching font awesome4 icon and from the site  search the star entering the first option and getting a link of this fa-star*-->
                <i class="fa fa-star" ></i>
                <i class="fa fa-star" ></i>
                <i class="fa fa-star" ></i>
                <i class="fa fa-star-half-o" ></i>
                <i class="fa fa-star-o" ></i>
            </div>
            <p>$50.00</p>
        </div>
        <div class="col-4">
            <a href="products-details.html"><img src="<c:url value="/static/images/product-2.jpg"></c:url>"></a>
            <h4>Lace-Up Running Shoes</h4>
            <div class="rating">
                <i class="fa fa-star" ></i>
                <i class="fa fa-star" ></i>
                <i class="fa fa-star" ></i>
                <i class="fa fa-star" ></i>
                <i class="fa fa-star-half-o" ></i>
            </div>
            <p>$35.00</p>
        </div>
        <div class="col-4">
            <a href="products-details.html"><img src="<c:url value="/static/images/product-3.jpg"></c:url>"></a>
            <h4>Lace Fastening Shoes</h4>
            <div class="rating">
                <i class="fa fa-star" ></i>
                <i class="fa fa-star" ></i>
                <i class="fa fa-star" ></i>
                <i class="fa fa-star" ></i>
                <i class="fa fa-star-o" ></i>
            </div>
            <p>$15.00</p>
        </div>
        <div class="col-4">
            <a href="products-details.html"><img src="<c:url value="/static/images/product-10.jpg"></c:url>"></a>
            <h4>Flat Lace-Fastening Shoes</h4>
            <div class="rating">
                <i class="fa fa-star" ></i>
                <i class="fa fa-star" ></i>
                <i class="fa fa-star" ></i>
                <i class="fa fa-star-o" ></i>
                <i class="fa fa-star-o" ></i>
            </div>
            <p>$48.00</p>
        </div>
    </div>


    <!--New row for the latest product this product from database-->

    ﻿<h2 class="title" >Latest Products</h2>

    <div class="row">
      <c:forEach items="${products}" var="pro">
        <div class="column">
    <img height="300"
            src="${pageContext.request.contextPath}/static/img/${pro.id}.jpg" alt=" " style="width:100%">
            <h5 class="card-title">${pro.title}</h5>
            <p>${pro.price}</p>
            <div class="rating">
                <!--(before this added awesome4 cdn font link to the head)added a cdn link by searching font awesome4 icon and from the site  search the star entering the first option and getting a link of this fa-star*-->
                <i class="fa fa-star" ></i>
                <i class="fa fa-star" ></i>
                <i class="fa fa-star" ></i>
                <i class="fa fa-star" ></i>
                <i class="fa fa-star" ></i>
            </div>
        </div>
</c:forEach>
    </div>

</div>
</div>
<!--------------------------`   offer   --------------------------------->
<div class="offer">
    <div class="small-container">
        <div class="row">
            <div class="col-2">
                <img src="<c:url value="/static/images/image1.png"></c:url>" class="offer-img">
            </div>
            <div class="col-2">
                <p>Exclusively Available on ASKStore</p>
                <h1>Sports Shoes</h1>
                <small> Buy latest collections of sports shoes online on Redstore at best prices from top brands such as Adidas, Nike, Puma, Asics, and Sparx at your leisure at best prices. </small><br>
                <a href="${pageContext.request.contextPath}/products" class="btn">Buy Now &#8594;</a>
            </div>
        </div>
    </div>
</div>



<!------------------------------Testimonial---------------------------------->
<div class="testimonial">
    <div class="small-container">
        <div class="row">
            <div class="col-3">
                <i class="fa fa-quote-left" ></i>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. </p>
                <div class="rating">
                    <i class="fa fa-star" ></i>
                    <i class="fa fa-star" ></i>
                    <i class="fa fa-star" ></i>
                    <i class="fa fa-star" ></i>
                    <i class="fa fa-star-o" ></i>
                </div>
                <img src="<c:url value="/static/images/user-1.png"></c:url>">
                <h3>Sean Parkar</h3>
            </div>
            <div class="col-3">
                <i class="fa fa-quote-left" ></i>
                <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.</p>
                <div class="rating">
                    <i class="fa fa-star" ></i>
                    <i class="fa fa-star" ></i>
                    <i class="fa fa-star" ></i>
                    <i class="fa fa-star" ></i>
                    <i class="fa fa-star-o" ></i>
                </div>
                <img src="<c:url value="/static/images/user-2.png"></c:url>">
                <h3>Mike Smith</h3>
            </div>
            <div class="col-3">
                <i class="fa fa-quote-left" ></i>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. </p>
                <div class="rating">
                    <i class="fa fa-star" ></i>
                    <i class="fa fa-star" ></i>
                    <i class="fa fa-star" ></i>
                    <i class="fa fa-star" ></i>
                    <i class="fa fa-star-o" ></i>
                </div>
                <img src="<c:url value="/static/images/user-3.png"></c:url>">
                <h3>Mabel Joe</h3>
            </div>
        </div>
    </div>
</div>

<!----------------------------------Brands------------------------------------>
<div class="brands">
    <div class="small-container">
        <div class="row">
            <div class="col-5">
                <img src="<c:url value="/static/images/logo-godrej.png"></c:url>" alt="">
            </div>
            <div class="col-5">
                <img src="<c:url value="/static/images/logo-oppo.png"></c:url>" alt="">
            </div>
            <div class="col-5">
                <img src="<c:url value="/static/images/logo-coca-cola.png"></c:url>" alt="">
            </div>
            <div class="col-5">
                <img src="<c:url value="/static/images/logo-paypal.png"></c:url>" alt="">
            </div>
            <div class="col-5">
                <img src="<c:url value="/static/images/logo-philips.png"></c:url>" alt="">
            </div>
        </div>
    </div>
</div>


<!----------------------------------footer------------------------------------->
<div class ="footer">
    <div class="container">

        <div class="row">
            <div class="footer-col-1">
                <h3>Download Our App</h3>
                <p>Download App for Android and ios mobile phone.</p>
                <div class="app-logo">
                    <img src="<c:url value="/static/images/play-store.png"></c:url>" alt="">
                    <img src="<c:url value="/static/images/app-store.png"></c:url>" alt="">
                </div>
            </div>
            <div class="footer-col-2">

                <img href="${pageContext.request.contextPath}/homepage" src="<c:url value="/static/images/mylogo%20.png"></c:url>">
                <p>Our Purpose Is To Sustainably Make the Pleasure and Benefits of Sports Accessible to the Many.</p>
            </div>
            <div class="footer-col-3">
                <h3>Useful Links</h3>
                <ul>
                    <li>Coupons</li>
                    <li>Blog Post</li>
                    <li>Return Policy</li>
                    <li>Join Affiliate</li>
                </ul>
            </div>
            <div class="footer-col-4">
                <h3>Follow us</h3>
                <ul>
                    <li>Facebook</li>
                    <li>Twitter</li>
                    <li>Instagram</li>
                    <li>Youtube</li>
                </ul>
            </div>

        </div>

        <hr><!--horizontal line-->
        <p class="copyright">Copyright 2021 - MAMUN MD AL</p>

    </div>
</div>


<!-----------------------------------js for toggle menu----------------------------------------------->
<script>
    var menuItems=document.getElementById("MenuItems");

    MenuItems.style.maxHeight="0px";
    function menutoggle(){
        if(MenuItems.style.maxHeight == "0px"){
            MenuItems.style.maxHeight="200px";
        }
        else{
            MenuItems.style.maxHeight="0px";
        }
    }
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>

</body>
</html>

