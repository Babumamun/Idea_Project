<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2021/5/2
  Time: 4:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Your hobbies are:</h2>
<c:forEach var="my" items="${hobbies}" >
    <c:out value="${my}"></c:out>
</c:forEach>
</body>
</html>