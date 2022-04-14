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
    <title>用户列表</title>
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
    <script>
        function deleteById(id) {
            location.href = "${pageContext.request.contextPath}/deleteById?id=" + id;
        };
        function editById(id) {
            location.href = "${pageContext.request.contextPath}/edit?id=" + id;
        };
        function searchUser() {
            var id = $("#USER_ID").val();
            location.href = "${pageContext.request.contextPath}/findUserById?id=" + id;
        }
        $.ajax({
            url: "${pageContext.request.contextPath}/userList",
            type: "get",
            success: function (data) {
                data.forEach(function (res) {
                    var DOM = "<tr>\n" +
                        "        <td>" + res.id + "</td>\n" +
                        "        <td>" + res.username + "</td>\n" +
                        "        <td>\n" +
                        "            <a href='javascript:' onclick='deleteById(" + res.id +")'>删除</a>" +
                        "            <a href='javascript:' onclick='editById(" + res.id +")'>修改</a>" +
                        "        </td>\n" +
                        "    </tr>";
                    $("#USER_LIST").append(DOM);
                })
            }
        });
    </script>
</head>
<body>
<h1>用户列表</h1>
    <a href="${pageContext.request.contextPath}/addUser"> 添加用户</a>
    <div>
        <input type="text" placeholder="请输入用户ID" name="id" id="USER_ID">
        <input type="button"  onclick="searchUser()" value="查询">
    </div>
    <table id="USER_LIST">
        <tr>
            <th>用户ID</th>
            <th>用户名称</th>
            <th>操作</th>
        </tr>
    </table>
</body>
</html>
