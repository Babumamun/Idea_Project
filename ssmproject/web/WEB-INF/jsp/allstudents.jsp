<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2021/5/26
  Time: 5:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <tr><th>ID</th><th>name</th><th>dept_name</th><th>tot_cred</th><th>Profile</th></tr>
    <c:forEach items="${students}" var="stu">
        <tr><td>${stu.id}</td><td>${stu.name}</td><td>${stu.dept_name}</td><td>${stu.tot_cred}</td>
            <td><img width="100" height="150" src="${pageContext.request.contextPath}/static/img/${stu.id}.jpg"></td></tr>
    </c:forEach>
</table>
</body>
</html>