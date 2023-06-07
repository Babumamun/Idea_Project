<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2021/6/2
  Time: 6:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
﻿<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width-device-width, initial-scale=1.0">
    <title>admin_page</title>
    <link href="<c:url value="/static/css/style.css" />" rel="stylesheet">
    <link href="<c:url value="/static/js/bootstrap.min.js" />" rel="stylesheet">
    <link href="<c:url value="/static/css/bootstrap.css" />" rel="stylesheet">
    <link href="<c:url value="/static/css/bootstrap-grid.css" />" rel="stylesheet">
    <link href="<c:url value="/static/css/bootstrap-reboot.css" />" rel="stylesheet">
    <link href="<c:url value="/static/js/jquery-3.5.1.min.js" />" rel="stylesheet">
    <%--<script> function modify(id) {--%>
        <%--window.location="${pageContext.request.contextPath}/update?id="+id;--%>
    <%--}--%>
    <%--function del(id) {--%>
        <%--var result=confirm("Do you really want to delete this record?");--%>
    <%--if(result) window.location="${pageContext.request.contextPath}/del?id="+id;--%>
    <%--}--%>
    <%--</script>--%>
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
                <li><a href="${pageContext.request.contextPath}/add">Add-Products</a></li>
                <li><a href="${pageContext.request.contextPath}/prompt">Contact</a></li>
                <li><a href="${pageContext.request.contextPath}/account">Account</a></li>

            </ul>
        </nav>
        <a href="${pageContext.request.contextPath}/cart"><img src="<c:url value="/static/images/cart.png"></c:url>" width="30px" height="30px"></a>
        <img src="<c:url value="/static/images/menu.png"></c:url>" class="menu-icon" onClick="menutoggle()" >
    </div>

</div>

<%-- create data tabel from database--%>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-offset-2 col-md-10">
            <table class="table table-striped">
                <tr><th>ID</th><th>title</th><th>image</th>
                    <th>details</th><th>Operation</th></tr>
                <c:forEach items="${products}" var="pro">
                    <c:url var="updatelink" value="updateProduct">

                        <c:param name="productId" value="${pro.id}"/>
                    </c:url>
                    <c:url var="deletelink" value="delproduct">
                    <c:param name="productId" value="${pro.id}"/>
                    </c:url>
                    <tr>
                        <td>${pro.id}</td>
                        <td>${pro.title}</td>
                        <td><img height="300" width="220"
                                 src="${pageContext.request.contextPath}/static/img/${pro.id}.jpg"></td>
                        <td>${pro.price}</td>
                        <td>${pro.details}</td>
                        <td><a href="${updatelink}" onclick="if(!(confirm('Are you sure you wanna modify?'))) return false;">Modify</a></td>
                        <td><a href="${deletelink}" onclick="if(!(confirm('Are you sure you wanna delete?'))) return false;">Delete</a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
</div>

<%--Footer--%>

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

</body>
</html>
