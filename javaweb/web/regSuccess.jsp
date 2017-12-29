<%--
  Created by IntelliJ IDEA.
  User: yws
  Date: 17-12-27
  Time: 上午8:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    登录成功！
    用户名：${requestScope.userobj.uname}
    密码：${requestScope.userobj.upass}
    爱好：${requestScope.userobj.habits}
</body>
</html>
