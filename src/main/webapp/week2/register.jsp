<%--
  Created by IntelliJ IDEA.
  User: 18279597276
  Date: 2021/3/17
  Time: 11:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
language="java" %>
<html>
<head>
    <title>register</title>
</head>
<body style="font-size: 8px;text-align: center">
<h1 style="color: gray">New User Registration!</h1>
<form method="post"> <!-- what is method when wo use form?--><!--its GET , why? default is GET,form data is added in the URL,you can see-->
    <!-- its better to use POST in form,data in not added in the URL-->
    <input type="text" name="Username" placeholder="Username" style="width: 250px;height: 25px;margin-top: 2px"><br/>
    <input type="password" name="password" placeholder="password" style="width: 250px;height: 25px;margin-top: 5px"><br/>
    <input type="text" name="Email" placeholder="Email" style="width: 250px;height: 25px;margin-top: 5px"><br/>
    Gender <input type="radio" name="sex" value="man" checked="checked">Male
    <input type="radio" name="sex" value="woman">Female<br/>
    <input type="text" name="birthday" placeholder="Date of Birth(yyyy-mm-dd)" style="width: 250px;height: 25px;margin-top: 5px;margin-bottom: 5px"><br/>
    <input type="submit" value="register" style="background-color:orange;color: white;width: 100px;height: 25px;text-align: center;font-size: 15px">
</form>

</body>
</html>
