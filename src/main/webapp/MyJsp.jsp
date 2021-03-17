<%--
  Created by IntelliJ IDEA.
  User: 18279597276
  Date: 2021/3/17
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body style="text-align: center;margin:auto;">
<a href="index.jsp">go to ecjtu</a><!-- method is GET-->
<form method="post"><!--what is method when we use form?--><!--its GET,why?default is GET-->
    <!-- its better to use POST in form-->
    <tr height="40px">Name:<input type="text" name="name"> <br/>
    </tr>
    ID  :<input type="text" name="id "> <br/>
    Name:<input type="text" name="sex"> <br/>
    Email:<input type="text" name="email"> <br/>
    <input type="submit" value="Send data to server"/>
</form>

</body>
</html>
