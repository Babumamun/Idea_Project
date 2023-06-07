<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2021/5/25
  Time: 9:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<form action="${pageContext.request.contextPath}/mylogin" method="post">
    username:<input type="text" name="name"><br>
    password:<input type="password" name="password"><br>
    <input type="submit" value="login">
</form>
</body>
</html>