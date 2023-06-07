<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2021/5/2
  Time: 2:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Register</h1>
<form method="post" action="${pageContext.request.contextPath}/register">
    Your name:<input type="text" name="name"><br>
    Password:<input type="password" name="password"><br>
    <input type="submit" value="register">
</form>

</body>
</html>
