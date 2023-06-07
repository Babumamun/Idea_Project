<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2021/6/8
  Time: 7:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width-device-width, initial-scale=1.0">
    <title>update_page</title>
    <link href="<c:url value="/static/css/style.css" />" rel="stylesheet">
    <link href="<c:url value="/static/js/bootstrap.min.js" />" rel="stylesheet">
    <link href="<c:url value="/static/css/bootstrap.css" />" rel="stylesheet">
    <link href="<c:url value="/static/css/bootstrap-grid.css" />" rel="stylesheet">
    <link href="<c:url value="/static/css/bootstrap-reboot.css" />" rel="stylesheet">
    <link href="<c:url value="/static/js/jquery-3.5.1.min.js" />" rel="stylesheet">
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-offset-5 col-md-6">
            <h1>Modify Product</h1>
        </div>
    </div>
    <div class="row">
        <%--<c:forEach items="${products}" var="pro">--%>
        <div class="col-md-offset-3 col-md-6">
            <form role="form" class="form-horizontal" method="post" enctype="multipart/form-data"
                  action="${pageContext.request.contextPath}/updateProduct2">
                <div class="form-group">

                    <label class="control-label col-md-3">ID</label>
                    <div class="col-md-9">
                        <input type="text" disabled class="form-control" value="${product.id}">
                        <input type="hidden" name="id" value="${product.id}">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3" >Title</label>

                    <div class="col-md-9">
                        <input type="text" name="title" value="${product.title}" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3" >Details</label>

                    <div class="col-md-9">
                        <input type="text" name="details" value="${product.details}" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3">Price</label>
                    <div class="col-md-9">
                        <input type="text" name="price" value="${product.price}" class="form-control">
                    </div>
                </div>
                <div>
                    <%--<form>--%>
                    <%----%>
                    <%--</form>--%>
                    Choose a file:<input type="file" name="myfile">
                    <%--<input type="submit" value="upload"> </form>--%>

                </div>
                <div class="col-md-offset-5">
                    <button type="submit" class="btn btn-primary">Update</button>
                </div>
                <div class="col-md-offset-5">
                  <a href="${pageContext.request.contextPath}/admin"><h2>Cancel</h2></a>
                </div>

            </form>
            <%--</c:forEach>--%>
        </div>
    </div>
</div>
</body>
</html>