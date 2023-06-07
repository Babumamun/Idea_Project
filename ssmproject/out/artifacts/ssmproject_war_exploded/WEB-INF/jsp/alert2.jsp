<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2021/6/8
  Time: 8:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>alert</title>
</head>
<body>
<script>
    alert("${msg}");
    <%--window.location="${pageContext.request.contextPath}/redirect:admin";--%>
    window.location="${pageContext.request.contextPath}/homepage?t="+Math.random();
</script>
</body>
</html>
