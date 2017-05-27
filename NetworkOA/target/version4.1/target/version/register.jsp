<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/10
  Time: 19:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" session="true"  %>
<html>
<head>
    <meta http-equiv="Pragma" content="Pragma">
    <meta http-equiv="Cache-Control" content="public">
    <meta http-equiv="Expires" content="2000">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="save" content="history">
    <title>注册</title>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">


</head>
<style type="text/css">
    body{
        background-color:ghostwhite;
    }

</style>
<style>
body{ text-align:center}
</style>
<body>
<div class="container-fluid">
    <div class="col-lg-10 col-lg-offset-1 col-xs-10 " style=" border:#0d0f0d;">
        <div style="border-bottom: 1px solid;border-bottom-color: #0d0f0d"><h1 align="center">注册</h1></div>
        <div class="row col-lg-8 col-lg-offset-4" style="margin-top: 3%;max-width: 500px;  " >
            <form action="myServlet?method=register" method="post" role="form" onsubmit="return checkSubmit()">

                <%--  账号--%>
                <div class="form-group col-lg-7" style="padding-left: 0">
                    <input type="text" class="form-control" id="account" name="account"   onclick="checkAccount()" onblur="checkAccount()" style="behavior:url(#default#savehistory)" placeholder="请输入账号（由字母，数组和下划线组成）">
                </div>
                <div class=" col-lg-3"  >
                    <p id="acc" style="margin-top:4px;"></p>
                </div>

                 <%--密码--%>
                <div class="form-group col-lg-7 " style="padding-left: 0 ">
                    <input type="text" class="form-control" id="password" name="password" onclick="checkPassword()" onblur="checkPassword()" placeholder="请输入密码(不少于6位)">

                </div>
                  <div class="col-lg-3">
                      <p id="pas" style="margin-top: 4px"></p>
                  </div>



                 <%--昵称--%>
                <div class="form-group col-lg-7"style="padding-left: 0 ">
                    <input type="text" class="form-control" id="name" name="name" onclick="checkName()" onblur="checkName()"    placeholder="昵称（例：小阿狸）">

                </div>
                    <div class="col-lg-3">
                        <p id="na" style="margin-top: 4px"></p>
                    </div>

                    <%--验证码--%>
                <div class="form-group col-lg-6" style="padding: 0" >
                    <input type="text" class="form-control" id="verCode" name="verCode" onblur="checkVerCode()" onclick="cleanVer()"  placeholder="请输入验证码">
                    <p id="ver" style="margin-top: 4px;color: red;">${requestScope.verCodeMessage}</p>
                </div>
                <div class="form-group col-lg-6">
                    <img src="myServlet?method=verCode" id="img" onclick="myReload()" style="cursor: pointer;" ><a href="#" onclick="myReload()">&nbsp;&nbsp;看不清</a>
                </div>
              <button type="submit" id="submit"  class="btn btn-default col-lg-7" >提交</button>


            </form>

        </div>


    </div>



</div>

<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="js/request.js"></script>


</body>
</html>
