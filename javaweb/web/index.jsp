<%--
  Created by IntelliJ IDEA.
  User: yws
  Date: 17-12-26
  Time: 上午8:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
    <form action="test" method="post">
      请输入内容：<input type="text" name="name" />
      <input type="submit" value="提交" />
    </form>
  <div>
      上次展示的内容为：${requestScope.name}
  </div>
  </body>
</html>
