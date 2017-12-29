<%--
  Created by IntelliJ IDEA.
  User: yws
  Date: 17-12-29
  Time: 上午10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>
    <title>$Title$</title>
      <script src="JS/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script type="text/javascript">
        function validate() {
            var name = $("name").val();
            if (name == null || name == ""){
              $("#nameDiv").html("名字不能为空");
            }else {
                //1.获取xmlHttpRequest对象
                var request = createRequest();
                //2.准备数据、url、回调
                var url = "userServlet?name="+name;
                request.open("GET",url,true);
                request.onreadystatechange = callback;
                request.send(null);
                
                //回调函数
                function callback() {
                    if (request.readyState = 4 && request.status == 200){
                        var data = request.responseText;
                        if (data == "true"){
                            $("#nameDiv").html("用户名已经存在！");
                        }else {
                            $("#nameDiv").html("用户名可以使用!");
                        }
                    }
                }
            }
        }

        function createRequest() {
            if (Window.XMLHttpRequest){
                return new XMLHttpRequest();
            }else {
                return new ActiveXObject("Microsoft.XMLHTTP");
            }
        }
    </script>
  </head>
  <body>
      <form action="" id="form1">
        <table>
            <tr>
              <td>用户名：</td>
              <td><input type="text" name="name" id="name" onblur="validate()">
                  <font color="red">*</font>
              </td>
              <td>
                <div id="nameDiv" style="display:inline"></div>

              </td>
            </tr>
        </table>
      </form>
  </body>
</html>
