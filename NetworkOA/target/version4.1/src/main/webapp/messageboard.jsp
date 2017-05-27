<%--suppress ALL --%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""  isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>留言墙</title>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="messageboard/mycss.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<!--<script src="iconfont.js"></script>-->
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="messageboard/border.css"  />
    <link rel="stylesheet" type="text/css" href="messageboard/background.css"  />
    <script src="js/ajax.js"></script>
    <script src="messageboard/myJS.js"></script>

</head>
<style type="text/css">
.icon {
   width: 2.2em; height: 2.2em;
   vertical-align: -0.15em;
   fill: currentColor;
   overflow: hidden;
   
}
body{
 width: 100%;
    height: 100%;
min-width: 1200px;
}

</style>
<script >
      var getName="给我丶鼓励o";     //${sessionScope.name};
  </script>
<body style="overflow: scroll;position: relative;">
<div class="container-fluid" >
<nav class="navbar navbar-default col-lg-8 col-lg-offset-2" role="navigation" style="max-height: 50px">
  
    <div class="navbar-header col-xs-3 col-lg-2 " style="margin-top:4px;">
       <button type="button" class="navbar-toggle  " data-toggle="collapse"
        data-target="#example-navbar-collapse" style="float:left">
        <span class="sr-only">切换导航</span>
        <span class="icon-bar"></span>    
        <span class="icon-bar"></span>  
        <span class="icon-bar"></span>  
     
        </button>
        <a class="navbar-brand visible-lg" href="${pageContext.request.contextPath}">老司机</a>
    </div>
    
    
    
    
       <div  class="collapse navbar-collapse navbar-left col-lg-6" id="example-navbar-collapse">
        <ul class="nav navbar-nav">
            <li ><a href="${pageContext.request.contextPath}">首页</a></li>
            <li ><a href="${pageContext.request.contextPath}/study.jsp">学习资源</a></li>
            <li >
               <a href="${pageContext.request.contextPath}/soild.jsp">硬件区</a>
            </li>
            <li class="active">
               <a href="${pageContext.request.contextPath}/messageboard.jsp">留言墙</a>
            </li>
            <li >
               <a href="${pageContext.request.contextPath}/fix.jsp">维修区</a>
            </li>
           
        </ul>
        </div >
        <div class="col-xs-6 visible-xs-block">
        <ul class="nav navbar-nav">
            <li class="col-xs-offset-3">
                <a class="navbar-brand visible-xs navbar-right" href="${pageContext.request.contextPath}">老司机</a>
            </li>
        </ul>
        
        </div>
        <div class="col-xs-3  col-lg-2 navbar-right">      
        <ul class=" nav navbar-nav log navbar-right"  >
            
            <li id="login" class="lo ">
               <a class="navbar-right" style="width:58px" href="${pageContext.request.contextPath}/login.jsp">登录</a>
            </li>
            <li id="re" style="display:block !important" class="lo visible-lg" >
               <a id="re_a"style="width:58px"  href="#">注册</a>
            </li>
             <li id="name" style="display:none " class="visible-lg" >
                <a href="#" id="name_a"> </a>
             </li>
             <li  id="name1" class="visible-xs">
                <a href="${pageContext.request.contextPath}/AdminServlet?method=loginOut" id="name1_a"></a>
             </li>
             <li id="quit"  style="display:none !important " class=" visible-lg" >
                 <a href="${pageContext.request.contextPath}/AdminServlet?method=loginOut">退出</a>
             </li>
        </ul>

        </div>
    

    

    

</nav>
    
    
    
    <div class="holder col-lg-offset-10" >
    <div class="bullet"></div>
    <div class="line_one"></div>
    <div class="line_two"></div>
    <div class="pholder_one"></div>
</div>



    <div class=" content clear">
<div id="border" class="col-lg-8 col-lg-offset-2 conLeft clear " style="background:url(messageboard/wood_pattern.png);" >
      <h1 align="center"> 留言墙</h1>

          <ul id="ul">

			</ul>

    <div style="position: absolute;bottom: 0;left: 20px; min-width: 750px; "   >
        <button type="button" class="btn btn-success btn-lg btn-block  "  onclick="getMore()">获取更多...</button>
    </div>
</div>
        <div  class="conRight" ><!--style="position: absolute;width: 275px;height: auto; right: 102%;font-size: 14px;">-->
            <div class="loginTop"></div><!-- style="background:url(picture/LTOP.png) no-repeat scroll 0 0;width: 100%;height: 64px;">-->
            <div class="loginCen clear" ><!--style="background:url(picture/loginCenter.png) repeat scroll 0 0; width: 100%;height: auto; display: table;"-->
                <div class="line clear"><!-- style="margin-left: 25px;margin-bottom: 10px;width: 220px;height: auto;"-->
                    <em  >名称</em>
                    <label class="inp">
                        <span id="me">请登录后再留言</span>
                    </label>
                </div>
                <div class="line clear" >
                    <em>内容</em>
                    <div class="textarea" >
                        <textarea id="messageMain" class="textarea "  name="textarea" readonly="true"></textarea>
                    </div>
                </div>
                <div class="line clear">
                    <span> </span>
                    <!--<div class="btn" id="button" onclick="onbutton()">
                        <div class="btnLeft"> </div>
                        <div class="btnCenter" onclick="onbutton()">发表留言</div>
                        <div class="btnRight"> </div>
                        -->
                    <div>
                        <button type="button" class="btn btn-info " onclick="onbutton()">发送留言</button>
                    </div>
                    </div>
                </div>

            </div>


        </div>
</div>

</div>

</body>

</html>
