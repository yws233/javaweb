<%--
  Created by IntelliJ IDEA.
  User: yws
  Date: 17-12-26
  Time: 下午3:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    // 灵活获取路径
    String path = request.getContextPath();
    request.setAttribute("path",path);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form id="regFrm" action="${path}/UserServlet" method="post">
        <table>
            <tr>
                <td>用户名：</td>
                <td><input id="username" name="username" type="text"></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input id="password" name="password" type="password"></td>
            </tr>
            <tr>
                <td>业余爱好:</td>
                <td>
                    <input name="habit" type="checkbox" value="reading">看书
                    <input name="habit" type="checkbox" value="Game">打游戏
                    <input name="habit" type="checkbox" value="Travelling">旅游
                    <input name="habit" type="checkbox" value="Swimming">游泳
                    <input name="habit" type="checkbox" value="TV">看电视
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="提交">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
