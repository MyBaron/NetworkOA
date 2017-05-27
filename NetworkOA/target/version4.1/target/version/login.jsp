<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/14
  Time: 21:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="css/signin.css" rel="stylesheet">
</head>
<body>

<div class="signin">
    <div class="signin-head"><h1 style="padding-top: 40px;padding-left: 20px">登录</h1></div>
    <form class="form-signin" action="myServlet?method=login" method="post" role="form" id="form">
        <input type="text" class="form-control" id="account" placeholder="用户名" required autofocus />
        <input type="password" class="form-control" id="password" placeholder="密码" required />
        <input type="button" class="btn btn-lg btn-warning btn-block"  onclick="login()"  value="登录" />
        <a href="register.jsp">
        <input class="btn btn-lg btn-warning btn-block" style="margin-top: 7px" type="button" value="注册"/>
        </a>
        <label class="checkbox " style="padding-left: 20px">
            <input type="checkbox" value="remember-me"> 记住我
            <a href="#" class="pull-right" >忘记密码</a>
        </label>

    </form>
</div>


<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="js/login.js"></script>
</body>

</html>
