<%--
  Created by IntelliJ IDEA.
  User: yws
  Date: 17-12-29
  Time: 下午1:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <script src="js/jquery-3.2.1.min.js"></script>
      <script type="text/javascript">
          /*
          * 使用get、post实现ajax
          * */
          function validate() {
              var name = $("#name").val();
              if (name == null || name == "") {
                  $("#nameDiv").html("用户名不能为空！");
              } else {
                    // get实现
                 /* $.get("userServlet",{"name":name},function (result) {
                      if (result == "true"){
                          $("#nameDiv").html("用户名已被使用！");

                      }else {
                          $("#nameDiv").html("用户名可以使用！");
                      }
                  },"text");*/

                  // post实现
                  $.post("userServlet",{"name":name},function (result) {
                      if (result == "true"){
                          $("#nameDiv").html("用户名已被使用！");

                      }else {
                          $("#nameDiv").html("用户名可以使用！");
                      }
                  },"text");
              }
          }
      </script>
  </head>
  <body>
  <form action="" id="form1">
      <table>
          <tr>
              <td>用 户 名：</td>
              <td><input type="text" name="name" id="name"
                         onblur="validate();" />&nbsp;<font color="#c00fff">*</font></td>
              <td>
                  <div id="nameDiv" style="display: inline"></div></td>
          </tr>
      </table>
  </form>
  </body>
</html>
