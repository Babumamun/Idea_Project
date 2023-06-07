<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2021/5/31
  Time: 9:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<jsp:useBean id="user" class="com.nsu.bean.User" scope="request"></jsp:useBean>
<jsp:useBean id="register" class="com.nsu.bean.Register" scope="request"></jsp:useBean>
<html>
﻿<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width-device-width, initial-scale=1.0">
    <title>log-in-page</title>
    <link href="<c:url value="/static/css/style.css" />" rel="stylesheet">
    <link href="<c:url value="/static/js/bootstrap.min.js" />" rel="stylesheet">
    <link href="<c:url value="/static/css/bootstrap.css" />" rel="stylesheet">
    <link href="<c:url value="/static/css/bootstrap-grid.css" />" rel="stylesheet">
    <link href="<c:url value="/static/css/bootstrap-reboot.css" />" rel="stylesheet">
    <link href="<c:url value="/static/js/jquery-3.5.1.min.js" />" rel="stylesheet">

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


<!------------------------------ account-page details------------------------------>

<div class="account-page">
    <div class="container">
        <div class="row">
            <div class="col-2">
                <img src="<c:url value="/static/images/image1.png"></c:url>" width="100%">
            </div>
            <div class="col-2">
                <div class="form-container">
                    <div class="form-btn">
                        <span onclick="login()">Login</span>
                        <span onclick="register()">Register</span>
                        <hr id="Indicator">
                    </div>
                    <form:form id="LoginForm" method="post" modelAttribute="user"
                          action="${pageContext.request.contextPath}/LongIn">
                        <form:input type="text" placeholder="username" name="name" path="name"></form:input>
                        <%--<form:errors path="name" cssStyle="color:red"></form:errors>--%>
                        <form:errors path = "name" cssClass = "error" cssStyle="color:red"/>
                        <form:input type="password" placeholder="password" name="password" path="password"></form:input>
                        <form:errors path="password" cssStyle="color: red"></form:errors>
                        <button type="submit" class="btn">Login</button>
                        <a href="">Forgot password</a>
                    </form:form>

                    <form:form id="RegForm" method="post" modelAttribute="register"
                    action="${pageContext.request.contextPath}/Register">
                        <form:input type="text" placeholder="username" name="username" path="username"></form:input>
                        <%--<form:errors path="username" cssStyle="color:red"></form:errors>--%>
                        <form:errors path = "username" cssClass = "error" cssStyle="color:red"/>
                        <form:input type="email" placeholder="email" name="email" path="email"></form:input>
                        <form:errors path="email" cssStyle="color:red"></form:errors>
                        <form:input type="password" placeholder="password" name="pass" path="pass"></form:input>
                        <form:errors path="pass" cssStyle="color:red"></form:errors>
                        <button type="submit" class="btn">Register</button>
                    </form:form>
                </div>
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

<!-----------------------------------js for toggle form-------------------------------------->
<script>
    var LoginForm=document.getElementById("LoginForm");
    var RegForm=document.getElementById("RegForm");
    var Indicator=document.getElementById("Indicator");

    function register(){
        RegForm.style.transform="translateX(0px)";
        LoginForm.style.transform="translateX(0px)";
        Indicator.style.transform="translateX(100px)"
    }
    function login(){
        RegForm.style.transform="translateX(300px)";
        LoginForm.style.transform="translateX(300px)";
        Indicator.style.transform="translateX(0px)";

    }
</script>

</body>
</html>
