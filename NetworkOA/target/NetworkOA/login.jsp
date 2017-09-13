<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/14
  Time: 21:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="<%=basePath%>login.css" rel="stylesheet">
</head>
<body>

<div class="signin">
    <div class="signin-head"><h1 style="padding-top: 40px;padding-left: 20px">登录</h1></div>

    <div class="form-signin"  id="form">
        <input type="text" class="form-control" id="account" placeholder="用户名" required autofocus />
        <input type="password" class="form-control" id="password" placeholder="密码" required />
        <input type="button" class="btn btn-lg btn-warning btn-block"  onclick="login('<%=basePath%>')"  value="登录" />

        <label class="checkbox " style="padding-left: 20px">
            <input type="checkbox" value="remember-me"> 记住我
            <a href="#" class="pull-right" >忘记密码</a>
        </label>

    </div>
</div>


<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="<%=basePath%>login.js"></script>
</body>

</html>
