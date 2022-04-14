<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/4/11
  Time: 11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户信息</title>
</head>
<body>
    <h3>用户列表</h3>
    <a href="${pageContext.request.contextPath}/findAll">返回</a>
    <table>
        <tr>
            <td>用户ID：</td>
            <td>${user.id}</td>
        </tr>
        <tr>
            <td>用户姓名：</td>
            <td>${user.username}</td>
        </tr>
    </table>

</body>
</html>
