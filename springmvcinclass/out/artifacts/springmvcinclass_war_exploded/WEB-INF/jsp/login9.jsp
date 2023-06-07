<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2021/5/5
  Time: 5:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Login</h1>
<form method="post" action="${pageContext.request.contextPath}/login9">
    <input type="checkbox" name="hobbies" value="swimming">swimming
    <input type="checkbox" name="hobbies" value="singing">singing
    <input type="checkbox" name="hobbies" value="dancing">dancing
    <input type="checkbox" name="hobbies" value="running">running
    <input type="submit" value="Login">
</form>
</body>
</html>