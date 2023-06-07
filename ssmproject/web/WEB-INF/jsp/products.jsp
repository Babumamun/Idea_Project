<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2021/6/2
  Time: 3:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
﻿<meta name="viewport" content="width-device-width, initial-scale=1.0">
<title>All Products</title>
<link href="<c:url value="/static/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/static/js/bootstrap.min.js" />" rel="stylesheet">
<link href="<c:url value="/static/css/bootstrap.css" />" rel="stylesheet">
<link href="<c:url value="/static/css/bootstrap-grid.css" />" rel="stylesheet">
<link href="<c:url value="/static/css/bootstrap-reboot.css" />" rel="stylesheet">
<link href="<c:url value="/static/js/jquery-3.5.1.min.js" />" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap" rel="stylesheet">
<!--added a cdn link by searching font awesome4 cdn and getting this link from https://www.bootstrapcdn.com/fontawesome/ this url*/-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
<!--<div class ="header">-->
<div class="container">
    <div class="navbar">
        <div class="logo">
            <a href="${pageContext.request.contextPath}/homepage">
                <img src="<c:url value="/static/images/mylogo%20.png"></c:url>" width="125px"></a>
        </div>
        <nav>
            <ul id="MenuItems">
                <li><a href="${pageContext.request.contextPath}/homepage">Home</a></li>
                <li><a href="${pageContext.request.contextPath}/products">Products</a></li>
                <li><a href="">Shop</a></li>
                <li><a href="${pageContext.request.contextPath}/prompt">Contact</a></li>
                <li><a href="${pageContext.request.contextPath}/account">Account</a></li>

            </ul>
        </nav>
        <a href="${pageContext.request.contextPath}/cart"><img src="<c:url value="/static/images/cart.png"></c:url>" width="30px" height="30px"></a>
        <img src="<c:url value="/static/images/menu.png"></c:url>" class="menu-icon" onClick="menutoggle()" >
    </div>

</div>
<!--</div>-->


<!------------------------------ Products------------------------------>
<div class="small-container">
    <div class="row row-2">
        <h2>All Products</h2>
        <select>
            <option href="${pageContext.request.contextPath}/products">Default sorting</option>
            <option href="${pageContext.request.contextPath}/products">Short by price</option>
            <option href="${pageContext.request.contextPath}/products">Short by popularity</option>
            <option href="${pageContext.request.contextPath}/products">Short by rating</option>
            <option href="${pageContext.request.contextPath}/products">Short by sale</option>
        </select>
    </div>


    <!--<h2 class="title" >Featured Products</h2>-->


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





    <!--new row for the latest product-->
    <div class="row">
        <div class="col-4">
            <a href="#"><img src="<c:url value="/static/images/product-7.jpg"></c:url>"></a>
            <h4>HRX cotton socks</h4>
            <div class="rating">

                <i class="fa fa-star" ></i>
                <i class="fa fa-star" ></i>
                <i class="fa fa-star" ></i>
                <i class="fa fa-star-half-o" ></i>
                <i class="fa fa-star-o" ></i>
            </div>
            <p>$10.00</p>
        </div>
        <div class="col-4">
            <a href="#"><img src="<c:url value="/static/images/product-10.jpg"></c:url>"></a>
            <h4>Flat Lace-Fastening Shoes</h4>
            <div class="rating">
                <i class="fa fa-star" ></i>
                <i class="fa fa-star" ></i>
                <i class="fa fa-star" ></i>
                <i class="fa fa-star" ></i>
                <i class="fa fa-star-half-o" ></i>
            </div>
            <p>$48.00</p>
        </div>
        <div class="col-4">
            <a href="#"><img src="<c:url value="/static/images/product-11.jpg"></c:url>"></a>
            <h4>Loafers Men (Gray)</h4>
            <div class="rating">
                <i class="fa fa-star-o" ></i>
                <i class="fa fa-star" ></i>
                <i class="fa fa-star" ></i>
                <i class="fa fa-star" ></i>
                <i class="fa fa-star-o" ></i>
            </div>
            <p>$15.00</p>
        </div>
        <div class="col-4">
            <a href="#"><img src="<c:url value="/static/images/product-12.jpg"></c:url>"></a>
            <h4>Lace-Fastening white Shoes</h4>
            <div class="rating">
                <i class="fa fa-star" ></i>
                <i class="fa fa-star" ></i>
                <i class="fa fa-star" ></i>
                <i class="fa fa-star-o" ></i>
                <i class="fa fa-star-o" ></i>
            </div>
            <p>$21.00</p>
        </div>

    <div class="col-4">
        <a href="#"><img src="<c:url value="/static/images/product-7.jpg"></c:url>"></a>
        <h4>HRX cotton socks</h4>
        <div class="rating">

            <i class="fa fa-star" ></i>
            <i class="fa fa-star" ></i>
            <i class="fa fa-star" ></i>
            <i class="fa fa-star-half-o" ></i>
            <i class="fa fa-star-o" ></i>
        </div>
        <p>$10.00</p>
    </div>

    <div class="col-4">
        <a href="#"><img src="<c:url value="/static/images/product-10.jpg"></c:url>"></a>
        <h4>Flat Lace-Fastening Shoes</h4>
        <div class="rating">
            <i class="fa fa-star" ></i>
            <i class="fa fa-star" ></i>
            <i class="fa fa-star" ></i>
            <i class="fa fa-star" ></i>
            <i class="fa fa-star-half-o" ></i>
        </div>
        <p>$48.00</p>
    </div>

    <div class="page-btn">
        <span>1</span>
        <span>2</span>
        <span>3</span>
        <span>4</span>
        <span>&#8594;</span>
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
                <img src="<c:url value="/static/images/mylogo%20.png"></c:url>">
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
</body>
</html>
