<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2021/5/13
  Time: 2:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.min.js"></script>
<html>
<head>
    <title>Title</title>
    <script>
        function login() {
            var name=$("#name").val();
            var password=$("#password").val();
            $.ajax(
                {
                    url:"${pageContext.request.contextPath}/tojson2",
                    type:"post",
                    data:JSON.stringify({name:name,password:password}),
                    contentType:"application/json;charset=UTF-8",
                    dataType:"json",
                    success:function(data){
                        if(data!=null)
                            alert(data.name+"password="+data.password);
                    }
                }
            )
        }
    </script>
</head>
<body>
<form>
    username:<input type="text" name="name" id="name"><br>
    password:<input type="password" name="password" id="password"><br>
    <input type="button" value="login" onclick="login()">
</form>
</body>
</html>