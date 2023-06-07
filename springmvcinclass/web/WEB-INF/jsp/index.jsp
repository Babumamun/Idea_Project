<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2021/5/19
  Time: 6:40 PM
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
            var age=$("#age").val();
            var occupation=$("#occupation").val();
            $.ajax(
                {
                    url:"${pageContext.request.contextPath}/myjson",
                    type:"post",
                    data:JSON.stringify({name:name,age:age,occupation:occupation}),
                    contentType:"application/json;charset=UTF-8",
                    dataType:"json",
                    success:function(data){
                        if(data!=null)
                            alert(data.name+" "+"age="+data.age+" "+"occupation="+data.occupation);
                    }
                }
            )
        }
    </script>
</head>
<body>
<form>
    username:<input type="text" name="name" id="name"><br>
    age:<input type="text" name="age" id="age"><br>
    occupation:<input type="text" name="occupation" id="occupation"><br>
    <input type="button" value="login" onclick="login()">
</form>
</body>
</html>