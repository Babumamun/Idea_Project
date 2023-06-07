<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2021/5/10
  Time: 5:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Login</h1>
<form method="post" action="${pageContext.request.contextPath}/login10">
    Your name:<input type="text" name="name"><br>
    Password:<input type="password" name="password"><br>
    <input type="submit" value="Login">
</form>
</body>
</html>
