<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/4/13
  Time: 8:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改用户信息</title>
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
    <script>
        function update() {
            var username = $("#USERNAME").val();
            $.ajax({
                url: "${pageContext.request.contextPath}/update",
                type: "post",
                data: JSON.stringify({
                    id:  ${id},
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
            <td>用户ID：</td>
            <td>${id}</td>
        </tr>
        <tr>
            <td>用户姓名：</td>
            <td><input id="USERNAME" name="username" type="text"/></td>
        </tr>
    </table>
    <input type="button" value="修改" onclick="update()"/>
</body>
</html>
