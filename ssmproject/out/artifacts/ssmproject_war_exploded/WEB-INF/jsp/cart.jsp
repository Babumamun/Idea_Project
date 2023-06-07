<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2021/5/31
  Time: 9:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width-device-width, initial-scale=1.0">
    <title>All Products - Redstore</title>
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap" rel="stylesheet">
    <!--added a cdn link by searching font awesome4 cdn and getting this link from https://www.bootstrapcdn.com/fontawesome/ this url*/-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="<c:url value="/static/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/static/js/bootstrap.min.js" />" rel="stylesheet">
<link href="<c:url value="/static/js/jquery-3.5.1.min.js" />" rel="stylesheet">
    ﻿ </head>
<body>
    <!--<div class ="header">-->
    ﻿<div class="container">
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


<!------------------------------ cart items details------------------------------>

<div class="small-container cart-page">
    <table>
        <tr>
            <th>Product</th>
            <th>Quantity</th>
            <th>Subtotal</th>
        </tr>
        <tr>
            <td>
                <div class="cart-info">
                    <img src="<c:url value="/static/images/buy-1.jpg"></c:url>">
                    <div>
                        <p>Red Printed T-Shirt</p>
                        <small>Price: $50.00</small><br>
                        <a href="">Remove</a>
                    </div>
                </div>
            </td>
            <td><input type="number" vlaue="1"></td>
            <td>$50.00</td>
        </tr>
        <tr>
            <td>
                <div class="cart-info">
                    <img src="<c:url value="/static/images/buy-2.jpg"></c:url>">
                    <div>
                        <p>Red Printed T-Shirt</p>
                        <small>Price: $50.00</small><br>
                        <a href="">Remove</a>
                    </div>
                </div>
            </td>
            <td><input type="number" vlaue="1"></td>
            <td>$50.00</td>
        </tr>
        <tr>
            <td>
                <div class="cart-info">
                    <img src="<c:url value="/static/images/buy-3.jpg"></c:url>">
                    <div>
                        <p>Red Printed T-Shirt</p>
                        <small>Price: $50.00</small><br>
                        <a href="">Remove</a>
                    </div>
                </div>
            </td>
            <td><input type="number" vlaue="1"></td>
            <td>$50.00</td>
        </tr>
    </table>

    <div class="total-price">
        <table>
            <tr>
                <td>Subtotal</td>
                <td>$200.00</td>
            </tr>
            <tr>
                <td>Tax</td>
                <td>$35.00</td>
            </tr>
            <tr>
                <td>Total</td>
                <td>$230.00</td>
            </tr>
        </table>
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

<!-----------------------------------js for toggle menu-------------------------------------->
    ﻿<script>
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