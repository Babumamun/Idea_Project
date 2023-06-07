<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2021/5/17
  Time: 5:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:useBean id="user" class="com.nsu.bean.User" scope="request"></jsp:useBean>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form method="post" modelAttribute="user" action="${pageContext.request.contextPath}/validate">
    Your name:<form:input path="name"></form:input>
    <form:errors path="name" cssStyle="color:red"></form:errors><br>
    Password:<form:input path="password" ></form:input>
    <form:errors path="password" cssStyle="color: red"></form:errors><br>
    Age:<form:input path="age"></form:input>
    <form:errors path="age" cssStyle="color: red"></form:errors><br>
    Birth:<form:input path="birth"></form:input>
    <form:errors path="birth" cssStyle="color: red"></form:errors><br>
    <input type="submit" value="Submit">
</form:form>
</body>
</html>