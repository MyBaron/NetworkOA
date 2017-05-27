<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/23
  Time: 17:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<!-- Mobile Meta -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"  href="other/myCss.css">
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="other/iconfont.css">
<head>
    <title>Title</title>
</head>

<style type="text/css">
    .icon {
        width: 3em; height: 3em;
        vertical-align: -0.15em;
        fill: currentColor;
        overflow: hidden;
    }
</style>
<script language="JavaScript" type="text/javascript">

    function btt() {
        setTimeout('showAllContent("","none")',2000);

    }
    function showAllContent(status1,status2) {

        document.getElementById("showLoad").style.display=status2;
        document.getElementById("showContent").style.display=status1;
    }

</script>

<body  onload='btt()'  style="text-align: center;margin: 0;padding: 0;">


<div id="showLoad" style="width: 100%;z-index: 2; display: block;">
    <img src="other/wechat.png" style="width: 100%;height: auto">
</div>


<div id="showContent" style="z-index: 1;">
<div>
    <img src="other/timg.jpg" style="width: 100%">
</div>
<div style="border-bottom: solid black 1px;height: 120px">
    <div class="row action" style="margin-top: 5px;margin-left: 20px; ">

        <a href="other/fox.jsp" class="icon_a icon1">
        <svg class="icon" aria-hidden="true" >
            <use xlink:href="#icon-badaxilietubiao01"></use>
        </svg>
        </a>



    <a href="other/fox.jsp" class="icon_a icon2">
        <svg class="icon" aria-hidden="true" >
            <use xlink:href="#icon-bf-sport"></use>
        </svg>
    </a>


    <a href="other/fox.jsp" class="icon_a icon3">
        <svg class="icon" aria-hidden="true" >
            <use xlink:href="#icon-yundong"></use>
        </svg>
    </a>



    <a href="other/fox.jsp" class="icon_a icon4">
        <svg class="icon" aria-hidden="true" >
            <use xlink:href="#icon-yundong1"></use>
        </svg>
    </a>
        <a href="other/fox.jsp" class="icon_a icon5">
            <svg class="icon" aria-hidden="true" >
                <use xlink:href="#icon-yundong2"></use>
            </svg>
        </a>
</div>



   <div class="row action" style="margin-top: 50px;margin-left: 20px; ">
    <a href="other/fox.jsp" class="icon_a icon1">
        <svg class="icon" aria-hidden="true" >
            <use xlink:href="#icon-yundong4"></use>
        </svg>
    </a>



    <a href="other/fox.jsp" class="icon_a icon2">
        <svg class="icon" aria-hidden="true" >
            <use xlink:href="#icon-yundong5"></use>
        </svg>
    </a>


    <a href="other/fox.jsp" class="icon_a icon3">
        <svg class="icon" aria-hidden="true" >
            <use xlink:href="#icon-yundong6"></use>
        </svg>
    </a>



    <a href="other/fox.jsp" class="icon_a icon4">
        <svg class="icon" aria-hidden="true" >
            <use xlink:href="#icon-yundong7"></use>
        </svg>
    </a>
    <a href="other/fox.jsp" class="icon_a icon5">
        <svg class="icon" aria-hidden="true" >
            <use xlink:href="#icon-z-sport"></use>
        </svg>
    </a>


</div>
</div>

<!--多媒体-->
<div class="media" style="position: relative;" >
     <a class="pull-left" href="#">
         <img  class="media-object" src="other/basketball.jpg"  style="height: 100px;width: 200px;">
     </a>
    <div class="media-body">
        <h4 class="media-heading" style="text-align: left">篮球场</h4>
        <p style="float: left">干净，场地大，安全。</p>
        <button type="button"  class="btn btn-info" style="position: absolute;bottom: 2px;right: 2px;" onclick="button()">详情</button>
    </div>
</div>

<div class="media"  style="position: relative;">
    <a class="pull-left" href="#">
        <img  class="media-object" src="other/basketball.jpg"  style="height: 100px;width: 200px;">
    </a>
    <div class="media-body">
        <h4 class="media-heading" style="text-align: left">篮球场</h4>
        <p style="float: left">干净，场地大，安全。</p>
        <button type="button"  class="btn btn-info" style="position: absolute;bottom: 2px;right: 2px;" onclick="button()">详情</button>
    </div>
</div>

<div class="media" style="position: relative; ">
    <a class="pull-left" href="#">
        <img  class="media-object" src="other/basketball.jpg"  style="height: 100px;width: 200px;">
    </a>
    <div class="media-body">
        <h4 class="media-heading" style="text-align: left">篮球场</h4>
        <p style="float: left">干净，场地大，安全。</p>
        <button type="button"  class="btn btn-info" style="position: absolute;bottom: 2px;right: 2px;" onclick="button()">详情</button>
    </div>
</div>
<div class="media" style="position: relative;margin-bottom: 40px;">
    <a class="pull-left" href="#">
        <img  class="media-object" src="other/basketball.jpg"  style="height: 100px;width: 200px;">
    </a>
    <div class="media-body" " >
        <h4 class="media-heading" style="text-align: left">篮球场</h4>
        <p style="float: left">干净，场地大，安全。</p>
        <button type="button"  class="btn btn-info" style="position: absolute;bottom: 2px;right: 2px;" onclick="button()">详情</button>
    </div>
</div>



<div id="mynav" style="border: 1px solid black; background-color:whitesmoke; height: 40px;width: 100%;">
    <ul >
        <li>
            <a href="login.jsp" >发现&nbsp&nbsp&nbsp|</a>
        </li>
        <li>
            <a href="login.jsp"  >附近&nbsp&nbsp&nbsp|</a>
        </li>
        <li>
            <a href="login.jsp"  >订单&nbsp&nbsp&nbsp|</a>
        </li>
        <li>
            <a href="login.jsp"  >我</a>
        </li>
    </ul>
</div>



</div>
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="other/iconfont.js"></script>
<script src="other/myJS.js"></script>
<!--<script src="iconfont.js"></script>-->
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>showAllContent("none","");</script>
</body>
</html>
