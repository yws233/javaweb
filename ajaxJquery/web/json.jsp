<%--
  Created by IntelliJ IDEA.
  User: yws
  Date: 17-12-29
  Time: 下午2:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-3.2.1.min.js"></script>
</head>
<body>

    <div id="user">
        <div id="id"></div>
        <div id="name"></div>
        <div id="password"></div>
    </div>
    <div id="str1">
        <ul id="str1-ul">

        </ul>
    </div>
    <select id="str2">

    </select>
<br>
    <table id="userArray" border="1px">
        <tr>
            <td>id</td>
            <td>name</td>
            <td>password</td>
        </tr>
    </table>
    <script type="text/javascript">
        //定义对象
        var user = {"id":01,"name":"wen","password":"123"};
        $("#id").html(user.id);
        $("#name").html(user.name);
        $("#password").html(user.password);

        //定义数组
        var array = ["武大","华师","华科"];
        for (var i = 0; i < array.length;i++){
            var li = "<li>"+array[i]+"</li>"; //拼装成html
            $("#str1-ul").append(li);
        }

        //使用jquery遍历数组
        var $array = $(array);
        //jquery 遍历
        $array.each(function () {
            var li = "<option>"+this+"</option>";
            $("#str2").append(li);
        });

        //定义对象数组
        var userArray = [{"id":"1","name":"hust","password":"hust"},{"id":"2","name":"whu","password":"whu"},{"id":"3","name":"ccnu","password":"ccnu"}];
        var $userArray = $(userArray);
        $userArray.each(function () {
            $("#userArray").append("<tr>"+"<td>"+this.id+"</td>"+"<td>"+this.name+"</td>"+"<td>"+this.password+"</td>"+"</tr>")
        });
    </script>
</body>
</html>
