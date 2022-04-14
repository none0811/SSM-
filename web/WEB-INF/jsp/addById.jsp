<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/4/12
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加用户</title>
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
    <script>
        function addUser() {
            var username = $("#USERNAME").val();
            $.ajax({
                url: "${pageContext.request.contextPath}/addById",
                type: "post",
                data: JSON.stringify({
                    username: username
                }),
                contentType: "application/json",
                dataType: "json",
                success: function (data) {
                    location.href = "${pageContext.request.contextPath}/findAll";
                }
            });
        }
    </script>
</head>
<body>
<table>
    <tr>
        <td>用户姓名：</td>
        <td><input id="USERNAME" name="username" type="text"/></td>
    </tr>
</table>
    <input type="button" value="添加" onclick="addUser()"/>
</body>
</html>
